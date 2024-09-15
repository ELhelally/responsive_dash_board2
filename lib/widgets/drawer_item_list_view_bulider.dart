import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/darwer_item_model.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemListViewBulider extends StatelessWidget {
  const DrawerItemListViewBulider({
    super.key,
    required this.item,
  });

  final List<DrawerItemModel> item;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: item.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: DrawerItem(darwerItemModel: item[index]),
        );
      },
    );
  }
}
