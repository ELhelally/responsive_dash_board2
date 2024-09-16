import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expensess_item.dart';

class AllExpensessItemListView extends StatelessWidget {
  const AllExpensessItemListView({super.key});
  static const items = [
    AllExpensessItemModel(
        image: Assets.assetsImagesMoneys,
        title: 'Balance',
        date: 'April 2024',
        price: r'$20,129'),
    AllExpensessItemModel(
        image: Assets.assetsImagesIncome,
        title: 'Income',
        date: 'April 2024',
        price: r'$21,759'),
    AllExpensessItemModel(
        image: Assets.assetsImagesExpenses,
        title: 'Expenses',
        date: 'April 2024',
        price: r'$22,729'),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items
          .map((e) => Expanded(child: AllExpensessItem(itemModel: e)))
          .toList(),
    );
  }
}
