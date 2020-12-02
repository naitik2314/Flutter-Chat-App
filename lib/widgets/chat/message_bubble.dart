import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.circular(12),
        ),
        width: 140,
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 16,
        ));
  }
}
