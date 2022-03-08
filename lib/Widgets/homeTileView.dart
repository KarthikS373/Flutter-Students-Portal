import 'package:flutter/material.dart';

class HomeTiles extends StatelessWidget {
  // const HomeTiles({Key? key}) : super(key: key);
  final String image;
  final String name;
  final String desc;

  const HomeTiles({Key? key, required this.image, required this.desc, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
          width: 2,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 60,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image!),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            desc + "...",
            style: const TextStyle(
              fontSize: 12,
            ),
          ),

        ],
      ),
    );
  }
}
