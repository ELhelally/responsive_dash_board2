import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/darwer_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.darwerItemModel, required this.isActive});
  final DrawerItemModel darwerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(darwerItemModel: darwerItemModel)
        : InActiveDrawerItem(darwerItemModel: darwerItemModel);
  }
}

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({
    super.key,
    required this.darwerItemModel,
  });

  final DrawerItemModel darwerItemModel;

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

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({
    super.key,
    required this.darwerItemModel,
  });

  final DrawerItemModel darwerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(darwerItemModel.image),
      title: Text(
        darwerItemModel.title,
        style: AppStyles.styleBold16,
      ),
      trailing: Container(
          width: 3.27,
          height: 48,
          decoration: const BoxDecoration(color: Color(0xff4eb7f2))),
    );
  }
}
