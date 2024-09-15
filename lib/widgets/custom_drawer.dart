import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/darwer_item_model.dart';

import 'package:responsive_dash_board/utils/app_images.dart';

import 'package:responsive_dash_board/widgets/drawer_item_list_view_bulider.dart';
import 'package:responsive_dash_board/widgets/in_active_drawer_item.dart';
import 'package:responsive_dash_board/widgets/user_info_list_title.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: UserInfoListTitle(
                  image: Assets.assetsImagesReadyPlayerMeAvatarHuman,
                  title: 'Lekan Okeowo',
                  subTitle: 'demo@gmail.com')),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemListViewBulider(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerItem(
                  darwerItemModel: DrawerItemModel(
                      title: "Setting system",
                      image: Assets.assetsImagesSetting2),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 48),
                  child: InActiveDrawerItem(
                      darwerItemModel: DrawerItemModel(
                          title: "Logout account",
                          image: Assets.assetsImagesLogout)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
