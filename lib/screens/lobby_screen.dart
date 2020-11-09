import 'package:flutter/material.dart';
import 'package:practice_app/widgets/card_view.dart';
import 'package:practice_app/widgets/movement_item.dart';
import '../widgets/operation_grid.dart';
import '../widgets/account_grid.dart';

class LobbyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(
            flex: 7,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
                  child: Container(
                    height: 205,
                    width: double.infinity,
                    child: AccountGrid(),
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    color: Colors.white,
                    child: OperationGrid(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              child: CardView(
                backgroundColor: Colors.white,
                blurRadius: 20,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                  child: Column(
                    children: [
                      Container(
                        height: 20,
                        width: double.infinity,
                        child: Center(
                          child: Icon(
                            Icons.maximize,
                            size: 40,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  enabled: false,
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey,
                                    ),
                                    hintText: 'Últimos Movimientos',
                                    suffixIcon: Icon(Icons.search),
                                    border: InputBorder.none,
                                    contentPadding: EdgeInsets.all(20),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: ListView.builder(
                          itemBuilder: (ctx, index) => Card(
                            color: Theme.of(context).accentColor,
                            child: MovementItem(),
                          ),
                          itemCount: 2,
                        ),
                      ),
                    ],
                  ),
                ),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30)),
                offSetX: 0,
                offSetY: 4,
                shadowColor: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}
