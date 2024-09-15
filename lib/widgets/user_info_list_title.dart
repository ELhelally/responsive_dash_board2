import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfoListTitle extends StatelessWidget {
  const UserInfoListTitle(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle});
  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        image,
      ),
      title: Text(
        title,
        style: AppStyles.styleSemiBold16,
      ),
      subtitle: Text(
        subTitle,
        style: AppStyles.styleRegular12,
      ),
    );
  }
}
