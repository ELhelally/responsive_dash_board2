import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_list_title.dart';

class LatestTransctionListView extends StatelessWidget {
  const LatestTransctionListView({super.key});
  static const items = [
    UserInfoModel(
        image: Assets.assetsImagesGangsterFace3dRenderingIconIllustrationPng,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
    UserInfoModel(
        image: Assets.assetsImagesReadyPlayerMeAvatarMan,
        title: 'Josua Nunito',
        subTitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(
        image: Assets.assetsImagesMale3dAvatarFreePng,
        title: 'Fadrani Andi',
        subTitle: 'fadraniadi20@gmail'),
  ];
  @override
  Widget build(BuildContext context) {
    return
        //    SingleChildScrollView(
        //     scrollDirection: Axis.horizontal,
        //     child: Row(
        //       children: items
        //           .map((e) => IntrinsicWidth(
        //                 child: UserInfoListTitle(userInfoModel: e),
        //               ))
        //           .toList(),
        //     ),
        //   );
        // }

        //
        //
        //
        SizedBox(
      height: 80,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return IntrinsicWidth(
              child: UserInfoListTitle(
                userInfoModel: items[index],
              ),
            );
          }),
    );
  }
}
