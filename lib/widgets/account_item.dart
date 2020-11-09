import 'package:flutter/material.dart';
import 'package:practice_app/widgets/card_view.dart';

class AccountItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: CardView(
        backgroundColor: Colors.grey[300],
        blurRadius: 0,
        shadowColor: Colors.grey,
        offSetX: 0,
        offSetY: 0,
        borderRadius: BorderRadius.circular(20),
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
                child: Container(
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 3,
                            child: Image.asset(
                              'assets/images/ic_logo.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                      child: Row(
                        children: [
                          Text(
                            'Bs. 23,589.056',
                            textAlign: TextAlign.start,
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                      child: Row(
                        children: [
                          Text(
                            'Cuenta corriente',
                            textAlign: TextAlign.start,
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                      child: Row(
                        children: [
                          Text(
                            '2610784',
                            textAlign: TextAlign.start,
                            style: Theme.of(context).textTheme.bodyText1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
