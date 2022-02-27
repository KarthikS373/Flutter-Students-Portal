import 'package:flutter/material.dart';

class SwipeView extends StatefulWidget {
  const SwipeView({Key? key, this.child = const SizedBox(height: 1)}) : super(key: key);
  final Widget child;

  @override
  _SwipeViewState createState() => _SwipeViewState();
}

class _SwipeViewState extends State<SwipeView> {
  final List<Map<String, String>> _swipeData = const [
    {"text": "Test Text 1", "image": "./assets/Images/bc.jpg"},
    {"text": "Test Text 2", "image": "./assets/Images/background.png"},
    {"text": "Test Text 3", "image": "./assets/Images/bc.jpg"},
    {"text": "Test Text 4", "image": "./assets/Images/background.png"}
  ];
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: PageView.builder(
              onPageChanged: (val) {
                setState(() {
                  _currentPage = val;
                });
              },
              scrollDirection: Axis.horizontal,
              itemCount: _swipeData.length,
              itemBuilder: (context, index) => SwipeColumn(
                text: _swipeData[index]['text'].toString(),
                image: _swipeData[index]['image'].toString(),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Row(
                  children: List.generate(
                    _swipeData.length,
                    (index) => buildSwipeSplash(context, index: index),
                  ),
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            ),
          ),
          widget.child,
        ],
      ),
    );
  }

  AnimatedContainer buildSwipeSplash(BuildContext context, {final index}) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      margin: const EdgeInsets.symmetric(horizontal: 3),
      height: 6,
      width: _currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(50),
      ),
    );
  }
}

class SwipeColumn extends StatelessWidget {
  const SwipeColumn({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);

  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 50,
        ),
        Text(
          "TITLE OF APP",
          style: TextStyle(
            fontSize: 36,
            color: Theme.of(context).accentColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
              //fill Text style here <---------------
              ),
        ),
        const SizedBox(
          height: 80,
        ),
        Image.asset(
          image, //Test Image
          height: 250,
        ),
      ],
    );
  }
}
