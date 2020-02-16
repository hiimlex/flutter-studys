import 'package:flutter/material.dart';
import 'package:tutorial_series/components/FavoriteWidget.dart';

class GrowingBox extends StatefulWidget {
  @override
  _GrowingBoxState createState() => _GrowingBoxState();
}

class _GrowingBoxState extends State<GrowingBox> {
  static const double _startingSize = 100.0;
  double _size = _startingSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: grow,
      onLongPress: reverseSize,
      child: Container(
        width: _size,
        height: _size,
        color: Colors.green,
      ),
    );
  }

  void grow() {
    setState(() {
      _size += 10.0;
    });
  }

  void reverseSize() {
    setState(() {
      _size = _startingSize;
    });
  }
}
