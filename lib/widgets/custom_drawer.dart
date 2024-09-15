import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/darwer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';
import 'package:responsive_dash_board/widgets/drawer_item_list_view_bulider.dart';
import 'package:responsive_dash_board/widgets/user_info_list_title.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
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
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: const Column(
        children: [
          UserInfoListTitle(
              image:
                  Assets.assetsImagesGangsterFace3dRenderingIconIllustrationPng,
              title: 'Lekan Okeowo',
              subTitle: 'demo@gmail.com'),
          SizedBox(
            height: 8,
          ),
          DrawerItemListViewBulider(item: item)
        ],
      ),
    );
  }
}