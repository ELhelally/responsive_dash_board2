import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';

import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfoListTitle extends StatelessWidget {
  const UserInfoListTitle({super.key, required this.userInfoModel});
  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: Image.asset(
            userInfoModel.image,
          ),
          title: Text(
            userInfoModel.title,
            style: AppStyles.styleSemiBold16,
          ),
          subtitle: Text(
            userInfoModel.subTitle,
            style: AppStyles.styleRegular12,
          ),
        ),
      ),
    );
  }
}
