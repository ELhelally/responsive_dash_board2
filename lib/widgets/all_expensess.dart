import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expansess_header.dart';
import 'package:responsive_dash_board/widgets/all_expensess_item.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: const Column(
        children: [
          AllExpansessHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItem(
              itemModel: AllExpensessItemModel(
                  image: Assets.assetsImagesIncome,
                  title: 'Income',
                  date: 'April 2022',
                  price: r'$20,129'))
        ],
      ),
    );
  }
}
