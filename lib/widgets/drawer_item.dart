import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/darwer_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({super.key, required this.darwerItemModel});
  final DarwerItemModel darwerItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(darwerItemModel.image),
      title: Text(
        darwerItemModel.title,
        style: AppStyles.styleRegular16,
      ),
    );
  }
}
