import 'package:flutter/material.dart';
import 'package:flutter_uikit/utils/uidata.dart';

class MyAboutTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AboutListTile(
      applicationIcon: FlutterLogo(
        colors: Colors.yellow,
      ),
      icon: FlutterLogo(
        colors: Colors.yellow,
      ),
      aboutBoxChildren: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        Text(
          "Developed By Ali Shah",
        ),
        Text(
          "Infusible Coder",
        ),
      ],
      applicationName: UIData.appName,
      applicationVersion: "2.0.1",
      applicationLegalese: "Apache License 2.0",
    );
  }
}
