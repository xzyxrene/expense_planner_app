import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final VoidCallback handler;

  AdaptiveFlatButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            onPressed: handler,
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : TextButton(
            onPressed: handler,
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(context).primaryColor,
            ),
          );
  }
}
