import 'package:flutter/material.dart';

import 'package:responsive_dash_board/utils/app_images.dart';

import 'package:responsive_dash_board/widgets/drawer_item_list_view_bulider.dart';
import 'package:responsive_dash_board/widgets/user_info_list_title.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
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
          DrawerItemListViewBulider()
        ],
      ),
    );
  }
}
