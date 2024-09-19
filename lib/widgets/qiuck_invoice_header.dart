import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class QiuckInvoiceHeader extends StatelessWidget {
  const QiuckInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Text('Quick invoice', style: AppStyles.styleSemiBold20),
      const Expanded(child: SizedBox()),
      Container(
        width: 60,
        height: 60,
        decoration: const ShapeDecoration(
          color: Color(0xFFFAFAFA),
          shape: OvalBorder(),
        ),
        child: const Icon(Icons.add, color: Color(0xFF4EB7F2)),
      )
    ]);
  }
}
