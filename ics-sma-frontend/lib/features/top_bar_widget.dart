import 'package:anet/common/routes/routes.dart';
import 'package:anet/common/widgets/feature/feature_widget.dart';
import 'package:anet/features/search/state/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sma_local_data/sma_local_data.dart';
import 'package:sma_common_ux/ux.dart';

class TopBarWidget extends ConsumerWidget {
  final FeatureMode featureMode;

  const TopBarWidget(this.featureMode, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              children: [
                Icon(
                  Icons.lock_open,
                  color: Colors.blueGrey[600],
                ),
                const Text("",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    )),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 4, 8, 0),
                child: FormEditButton(
                  readOnly: featureMode.editMode || !featureMode.viewMode,
                  onPressedFunc: () {
                    Navigator.pushReplacementNamed(
                      context,
                      ref.read(searchTypeStateProvider).label.contains("Firm")
                          ? Routes.firmPage
                          : Routes.survPage,
                      arguments: PageArguments(
                          feature: ref
                                  .read(searchTypeStateProvider)
                                  .label
                                  .contains("Firm")
                              ? Feature.firm
                              : Feature.surv,
                          featureMode: FeatureMode.edit,
                          id: int.parse(ref.read(searchStringStateProvider))),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 4, 8, 0),
                child: FormSaveButton(readOnly: featureMode.viewMode),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(8, 4, 8, 0),
                child: FormPublishButton(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 4, 8, 0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: null,
                  child: const Text(
                    "Delete Draft",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
