import 'package:anet/common/nav_rail/nav_rail_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const mainBlueColor = Color(0xFF203864);
const greyBackground = Color(0xFFf1f1f1);

class AnetAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String name;
  final List<Widget>? actions;
  final TabBar? tabBar;
  const AnetAppbar(this.name, {this.actions, super.key, this.tabBar});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (BuildContext context, WidgetRef ref, Widget? child) {
        final navRailnotifier = ref.watch(navRailProvider.notifier);
        return AppBar(
          bottom: tabBar,
          elevation: 5,
          title: Text(
            name,
            style: const TextStyle(color: Colors.white),
          ),
          leading: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
                size: 20,
              ),
              onPressed: () {
                navRailnotifier.isExpanded();
              },
            ),
          ),
          backgroundColor: mainBlueColor,
          actions: actions,
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
