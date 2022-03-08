import 'package:flutter/material.dart';

class BottomNavFloat extends StatefulWidget {
  const BottomNavFloat({Key? key}) : super(key: key);

  @override
  _BottomNavFloatState createState() => _BottomNavFloatState();
}

class _BottomNavFloatState extends State<BottomNavFloat> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            color: Colors.transparent,
          ),
        ),
        Positioned(
          child: Container(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(12, 10, 10, 7),
                  decoration: BoxDecoration(
                    color: Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                  height: 60,
                  width: 60,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50),
                          topLeft: Radius.circular(50)),
                      color: Colors.black,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const <Widget>[
                          Icon(
                            Icons.home,
                            size: 30,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.account_balance,
                            size: 30,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.book,
                            size: 30,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.line_weight,
                            size: 30,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.person_outline,
                            size: 30,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          right: 0,
          left: 0,
          bottom: 5,
        ),
      ],
    );
  }
}
