import 'package:flutter/material.dart';

class SwipePad extends StatefulWidget {
  final double height, width;
  final Widget child;
  final BoxDecoration decoration;
  final double borderWidth;

  SwipePad(
      {required this.height,
      required this.width,
      required this.child,
      required this.decoration,
      this.borderWidth = 3});

  @override
  _SwipePadState createState() => _SwipePadState();
}

class _SwipePadState extends State<SwipePad> {
  late double _maxWidth;
  late double _handleSize;
  double _dragValue = 0;
  double _dragWidth = 0;
  bool _swipe = false;

  @override
  Widget build(BuildContext context) {
    _handleSize = (widget.height! - (2 * widget.borderWidth!));
    return LayoutBuilder(builder: (context, constraint) {
      _maxWidth = constraint.maxWidth;
      return Container(
        height: 100,
        width: widget.width,
        decoration: widget.decoration.copyWith(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            width: widget.borderWidth,
            color: Colors.transparent,
          ),
        ),
        child: Center(
          child: Stack(
            children: [
              widget.child,
              AnimatedContainer(
                duration: const Duration(
                  milliseconds: 100,
                ),
                width: _dragWidth <= _handleSize  ? _handleSize : _dragWidth,
                child: Row(
                  children: [
                    Expanded(child: SizedBox.shrink()),
                    GestureDetector(
                      child: Container(
                        width: _handleSize,
                        height: _handleSize,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50.00),
                        ),
                      ),
                      onVerticalDragStart: _onDragUpdate,
                      onVerticalDragEnd: _onDragEnd,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  void _onDragUpdate(DragStartDetails details) {
    setState(() {
      _dragValue = (details.globalPosition.dx / _maxWidth);
      _dragWidth = _maxWidth * _dragValue;
    });
  }

  void _onDragEnd(DragEndDetails details) {
    if (_dragValue > 0.75) {
      _dragValue = 1;
    } else {
      _dragValue = 0;
    }
    setState(() {
      _dragWidth = _maxWidth * _dragValue;
      _swipe = (_dragValue == 1);
    });
  }
}
