import 'package:flutter/material.dart';
import 'package:practice_app/widgets/card_view.dart';

class OperationItem extends StatelessWidget {
  final IconData iconData;
  final String title;

  OperationItem(this.iconData, this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: CardView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                iconData,
                color: Colors.blue,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.caption,
                ),
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
        blurRadius: 6,
        shadowColor: Colors.grey,
        offSetX: 0,
        offSetY: 4,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
