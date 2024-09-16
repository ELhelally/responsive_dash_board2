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
    return isActive
        ? ActiveDrawerItem(darwerItemModel: darwerItemModel)
        : InActiveDrawerItem(darwerItemModel: darwerItemModel);
  }
}
