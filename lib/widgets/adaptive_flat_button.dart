import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final Function handler;

  AdaptiveFlatButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              text,
              style: TextStyle(
                color: Theme.of(context).textTheme.button.color,
              ),
            ),
            color: Theme.of(context).primaryColor,
            onPressed: handler,
          )
        : RaisedButton(
            child: Text(
              text,
              style: TextStyle(
                color: Theme.of(context).textTheme.button.color,
              ),
            ),
            color: Theme.of(context).primaryColor,
            onPressed: handler,
          );
  }
}
