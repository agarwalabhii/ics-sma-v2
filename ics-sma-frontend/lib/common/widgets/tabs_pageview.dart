import 'package:anet/common/widgets/tabs_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:sma_local_data/sma_local_data.dart';

class TabsPageView extends ConsumerStatefulWidget {
  final List<TabsPage> pages;
  const TabsPageView({
    super.key,
    required this.pages,
  });

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TabsPageViewState();
}

class _TabsPageViewState extends ConsumerState<TabsPageView> implements NavigationListener {
  PageController controller = PageController();
  late FormActionNavigation formActionNavigation;
  Curve curve = Curves.easeIn;

  @override
  void initState() {
    formActionNavigation = FormActionNavigation(listener: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(formActionProvider,formActionNavigation.listen);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
        child: PageView(
          controller: controller,
          children: [
            Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListView.builder(
                  itemCount: widget.pages.length,
                  itemBuilder: (context, index) {
                    return _buildInitialPageList(
                      widget.pages[index].title,
                      index,
                    );
                  },
              ),
            ),
            ..._buildTabWidget(widget.pages),
          ],
        ),
      ),
    );
  }

  Widget _buildInitialPageList(String text, int index) {
    return GestureDetector(
      onTap: () {
        controller.jumpToPage(
          index + 1,
        );
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(2.0, .5, 2.0, .5),
        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2),
                    border: Border.all(
                      color: Colors.grey,
                      width: .5,
                    )),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8.0, 18, 8.0, 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        text,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: 20,
                          color: Color(0xFF56A1E3),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> _buildTabWidget(List<TabsPage> pages) {
    List<Widget> returnWidgets = [];
    TextStyle style = const TextStyle(
        color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18);
    for (int i = 0; i < pages.length; i++) {
      returnWidgets.add(
        Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.blue[900],
              boxShadow: const [
                BoxShadow(
                  color: Colors.black54,
                  blurRadius: 2,
                  spreadRadius: 1,
                  offset: Offset(2, 2),
                )
              ],
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color.fromARGB(255, 9, 52, 172),
                  Colors.blue[800]!,
                  const Color.fromARGB(255, 7, 52, 172),
                ],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Tooltip(
                  message: AppLocalizations.of(context)!
                      .surv_tab_nav_bar_overview_label,
                  child: IconButton(
                      icon: const Icon(
                        Icons.list,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        ref.watch(formActionProvider.notifier).state = SaveFormAction.saveExisting(navigationAction: NavigationAction.home);
                      }),
                ),
                Row(
                  children: [
                        Text(pages[i].title, style: style),
                  ],
                ),
                Row(
                  children: [
                    Tooltip(
                      message: AppLocalizations.of(context)!
                          .surv_tab_nav_bar_back_label,
                      child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            var navigationAction = NavigationAction.home;
                            if (i > 0) {
                              navigationAction = NavigationAction.previous;
                            }
                            ref.watch(formActionProvider.notifier).state = SaveFormAction.saveExisting(navigationAction: navigationAction);
                          }),
                    ),
                    Tooltip(
                      message: AppLocalizations.of(context)!
                          .surv_tab_nav_bar_next_label,
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                        onPressed: () {
                            var navigationAction = NavigationAction.home;
                            if (i + 1 > 0 && i + 1 != pages.length) {
                              navigationAction = NavigationAction.next;
                            }
                            ref.watch(formActionProvider.notifier).state = SaveFormAction.saveExisting(navigationAction: navigationAction);
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
              Expanded(child: pages[i].widget),
        ],
      ),
        ),
      );
    }
    return returnWidgets;
  }
  
  @override
  void gotoHomePage() {
    controller.jumpToPage(0);
  }
  
  @override
  void gotoNextPage() {
    controller.nextPage(duration: const Duration(milliseconds: 400), curve: curve);
  }
  
  @override
  void gotoPreviousPage() {
    controller.previousPage(duration: const Duration(milliseconds: 400), curve: curve);
  }
  
  @override
  void updatePage(FormAction action) {
    ref.watch(tabsPageViewStateNotifierProvider.notifier).updatePage(controller.page!);
    ref.watch(formActionProvider.notifier).state = action.saveAccepted();
  }
}

final tabsPageViewStateNotifierProvider =
    StateNotifierProvider<TabsPageViewNotifier, TabsPageViewState>((ref) {
  return TabsPageViewNotifier(TabsPageViewState(0));
});

class TabsPageViewNotifier extends StateNotifier<TabsPageViewState> {
  TabsPageViewNotifier(super.state);

  void updatePage(double page) {
    state = state.copyWith(page: page);
  }
}

class TabsPageViewState {
  final double page;
  TabsPageViewState(
    this.page,
  );

  TabsPageViewState copyWith({page, tabs}) {
    return TabsPageViewState(page ?? this.page);
  }
}
