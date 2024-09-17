import 'package:flutter/material.dart';
import 'package:responsive_dash_board/all_expensess_item_list_view.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expansess_header.dart';
import 'package:responsive_dash_board/widgets/all_expensess_item.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGrounContainer(
      child: Column(
        children: [
          AllExpansessHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensessItemListView()
        ],
      ),
    );
  }
}
