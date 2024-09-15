import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/darwer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemListViewBulider extends StatefulWidget {
  const DrawerItemListViewBulider({
    super.key,
  });

  // final List<DrawerItemModel> item;

  @override
  State<DrawerItemListViewBulider> createState() =>
      _DrawerItemListViewBuliderState();
}

class _DrawerItemListViewBuliderState extends State<DrawerItemListViewBulider> {
  int selectedItemIndex = 0;
  final List<DrawerItemModel> item = [
    const DrawerItemModel(
        title: 'Dashboard', image: Assets.assetsImagesCategory2),
    const DrawerItemModel(
        title: 'My Transaction', image: Assets.assetsImagesConvertCard),
    const DrawerItemModel(
        title: 'Statistics', image: Assets.assetsImagesStatistics),
    const DrawerItemModel(
        title: 'Wallet Account', image: Assets.assetsImagesWallet2),
    const DrawerItemModel(
        title: 'My Investments', image: Assets.assetsImagesChart2),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: item.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (selectedItemIndex != index) {
              setState(() {
                selectedItemIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              darwerItemModel: item[index],
              isActive: selectedItemIndex == index,
            ),
          ),
        );
      },
    );
  }
}
