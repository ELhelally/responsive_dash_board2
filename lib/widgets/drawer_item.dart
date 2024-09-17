import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/darwer_item_model.dart';
import 'package:responsive_dash_board/widgets/active_drawer_item.dart';
import 'package:responsive_dash_board/widgets/in_active_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.darwerItemModel, required this.isActive});

  final DrawerItemModel darwerItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 200), // Set animation duration
      firstChild: InActiveDrawerItem(darwerItemModel: darwerItemModel),
      secondChild: ActiveDrawerItem(darwerItemModel: darwerItemModel),
      crossFadeState: isActive
          ? CrossFadeState.showSecond // Show ActiveDrawerItem
          : CrossFadeState.showFirst, // Show InActiveDrawerItem
      firstCurve: Curves.easeIn, // Optional: Animation curve for transition
      secondCurve: Curves.easeOut, // Optional: Animation curve for transition
    );
  }
}
