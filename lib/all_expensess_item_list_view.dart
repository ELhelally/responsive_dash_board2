import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expensess_item.dart';

class AllExpensessItemListView extends StatefulWidget {
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
  State<AllExpensessItemListView> createState() =>
      _AllExpensessItemListViewState();
}

class _AllExpensessItemListViewState extends State<AllExpensessItemListView> {
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items
      //     .map((e) => Expanded(child: AllExpensessItem(itemModel: e)))
      //     .toList(),
      children: AllExpensessItemListView.items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                if (selectedItem != index) {
                  setState(() {
                    selectedItem = index;
                  });
                }
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AllExpensessItem(
                  itemModel: item,
                  isSelected: selectedItem == index,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                if (selectedItem != index) {
                  setState(() {
                    selectedItem = index;
                  });
                }
              },
              child: AllExpensessItem(
                  itemModel: item, isSelected: selectedItem == index),
            ),
          );
        }
      }).toList(),
    );
  }
}
