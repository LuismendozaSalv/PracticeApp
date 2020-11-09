import 'package:flutter/material.dart';
import '../widgets/operation_item.dart';

class OperationGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      scrollDirection: Axis.horizontal,
      children: [
        OperationItem(Icons.monetization_on, 'Pagar'),
        OperationItem(Icons.compare_arrows, 'Transferir'),
        OperationItem(Icons.code, 'Cobro QR'),
        OperationItem(Icons.code, 'Cobro QR'),
      ],
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
        childAspectRatio: 1.2,
        mainAxisSpacing: 16,
      ),
    );
  }
}
