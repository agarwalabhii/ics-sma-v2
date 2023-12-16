import 'package:anet/features/surv/pages/surv_snapshot_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:sma_common_ux/ux.dart';
import 'package:sma_local_data/sma_local_data.dart';

class FirmSnapshotWidget extends ConsumerWidget {
  final int id;

  const FirmSnapshotWidget({required this.id, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final firmSnapshot = ref.watch(asyncFirmSnapshotProvider(id));
    return firmSnapshot.when(
        data: (data) {
          return Container(
            decoration: const BoxDecoration(
              color: mickysBackground,
            ),
            padding: const EdgeInsets.all(8),
            child: ref.watch(firmSnapshotProvider)
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey,
                              ),
                              child: const Icon(
                                Icons.store,
                                size: 70,
                                color: Colors.white,
                              ),
                            ),
                          ),

                          //Snapshot labels
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text("Firm ID: "),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Firm Name: "),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Prim Bus.: "),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Created By: "),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("State: "),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text("Last Surv: "),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          //Snapshot Data
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    child: Text(
                                      '$id',
                                      style: TextStyle(
                                          color: Colors.grey[700],
                                          fontWeight: FontWeight.bold),
                                    ),
                                    onTap: () {
                                      //TODO Firm Name tapped function here.
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(data?.name ?? 'N/A'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(data?.primaryBusinessType ?? 'N/A'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("${data?.creatorId ?? 0}"),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(data?.recordStatus?.toString() ?? 'N/A'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    (data?.lastSurveillancePerformed != null)
                                        ? DateFormat('MM/dd/yyyy').format(
                                            data!.lastSurveillancePerformed!)
                                        : 'N/A',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.expand_less_rounded),
                        onPressed: () {
                          ref.watch(firmSnapshotProvider.notifier).state =
                              !ref.watch(firmSnapshotProvider);
                        },
                      ),
                    ],
                  )
                : Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    IconButton(
                      icon: const Icon(Icons.expand_more),
                      onPressed: () {
                        ref.watch(firmSnapshotProvider.notifier).state =
                            !ref.watch(firmSnapshotProvider);
                      },
                    ),
                  ]),
          );
        },
        error: (err, stack) => logAsyncError("FirmSnapshotWidget", err, stack),
        loading: () {
          return const ListTile(
            title: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.spaceEvenly,
              children: [
                SizedBox(
                    width: 40, height: 40, child: CircularProgressIndicator()),
              ],
            ),
          );
        });
  }
}
