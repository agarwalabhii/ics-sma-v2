import 'package:anet/common/nav_rail/nav_rail.dart';
import 'package:anet/common/widgets/anet_appbar.dart';
import 'package:anet/features/search/widgets/search_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SurvPlutoSearchView extends ConsumerWidget {
  const SurvPlutoSearchView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AnetAppbar("Search"),
          body: Row(
            children: [
              NavRail(),
              Expanded(
                child: FirmSearch(),
              ),
            ],
          )),
    );
  }
}
