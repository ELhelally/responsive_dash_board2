import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/darwer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemListViewBulider extends StatelessWidget {
  const DrawerItemListViewBulider({
    super.key,
  });

  // final List<DrawerItemModel> item;

  static const List<DrawerItemModel> item = [
    DrawerItemModel(title: 'Dashboard', image: Assets.assetsImagesCategory2),
    DrawerItemModel(
        title: 'My Transaction', image: Assets.assetsImagesConvertCard),
    DrawerItemModel(title: 'Statistics', image: Assets.assetsImagesStatistics),
    DrawerItemModel(title: 'Wallet Account', image: Assets.assetsImagesWallet2),
    DrawerItemModel(title: 'My Investments', image: Assets.assetsImagesChart2),
  ];
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
