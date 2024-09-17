import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_item_model.dart';
import 'package:responsive_dash_board/widgets/avtice_all_expansess_item.dart';
import 'package:responsive_dash_board/widgets/in_active_all_expensess_item.dart';

class AllExpensessItem extends StatelessWidget {
  const AllExpensessItem({
    super.key,
    required this.itemModel,
    required this.isSelected,
  });

  final AllExpensessItemModel itemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 350), // Duration of animation
      firstChild: InActiveAllExpensessItem(
          itemModel: itemModel), // Inactive state widget
      secondChild:
          ActiveAllExpensessItem(itemModel: itemModel), // Active state widget
      crossFadeState: isSelected
          ? CrossFadeState.showSecond // Show active widget
          : CrossFadeState.showFirst, // Show inactive widget
      firstCurve:
          Curves.easeIn, // Optional: Curve for the transition to inactive
      secondCurve:
          Curves.easeOut, // Optional: Curve for the transition to active
    );
  }
}
