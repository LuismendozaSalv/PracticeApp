import 'package:flutter/material.dart';
import '../widgets/account_item.dart';

class AccountGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      scrollDirection: Axis.horizontal,
      children: [
        AccountItem(),
        AccountItem(),
        AccountItem(),
        AccountItem(),
        AccountItem(),
        AccountItem(),
        AccountItem(),
        AccountItem(),
      ],
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 205,
        childAspectRatio: 1.3,
        mainAxisSpacing: 16,
      ),
    );
  }
}