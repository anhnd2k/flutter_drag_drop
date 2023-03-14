import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

//Styled Button
class DecoPress extends StatelessWidget {
  final GestureTapCallback onPressed;

  const DecoPress({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      child: RawMaterialButton(
          fillColor: Colors.orange,
          onPressed: onPressed,
          shape: StadiumBorder(),
          child: Text("Done")),
    );
  }
}