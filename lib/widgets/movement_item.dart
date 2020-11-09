import 'package:flutter/material.dart';

class MovementItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8, 12, 8, 12),
      color: Colors.white,
      child: ListTile(
        title: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Hipermaxi Norte'),
                    ],
                  ),
                  Row(
                    children: [
                      Text('19.05.2020'),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Text('-279,56 Bs'),
              ),
            ),
          ],
        ),
        trailing: Icon(Icons.arrow_forward_ios),
        focusColor: Colors.white,
      ),
    );
  }
}
