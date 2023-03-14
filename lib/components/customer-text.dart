
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import 'deco-press.dart';

class CustomText extends StatefulWidget {
  double sx, sy, _x, _y, dSize = 20;
  Color color = Colors.deepOrange;
  CustomText({
    Key key,
    @required this.sx,
    @required this.sy,
    @required double x,
    @required double y,
  })  : _y = y,
        _x = x,
        super(key: key);

  @override
  __CustomTextState createState() => __CustomTextState();
}

class __CustomTextState extends State<CustomText> {
  Widget prop = Container();
  TextEditingController xaxis, yaxis, widt, tdata;
  String textdata = "Text";

  @override
  void initState() {
    xaxis = TextEditingController();
    xaxis.text = widget._x.toString().split(".")[0];
    yaxis = TextEditingController();
    yaxis.text = widget._y.toString().split(".")[0];
    widt = TextEditingController();
    widt.text = widget.dSize.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        Positioned(
          top: widget._y,
          left: widget._x,
          child: InkWell(
            onTap: () {
              setState(() {
                prop = Container(
                  width: 350,
                  height: height,
                  color: Colors.white,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(height: 10),
                      Container(
                        width: 250,
                        child: TextField(
                          controller: tdata,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Width",
                              labelStyle: TextStyle(fontSize: 15)),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Position",
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              width: 250,
                              child: TextField(
                                controller: xaxis,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "x-Axis",
                                    labelStyle: TextStyle(fontSize: 15)),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                      icon: Icon(Icons.arrow_drop_up),
                                      onPressed: () {
                                        setState(() {
                                          widget._x += 1;
                                          xaxis.text = widget._x
                                              .toString()
                                              .split(".")[0];
                                        });
                                      }),
                                  IconButton(
                                      icon: Icon(Icons.arrow_drop_down),
                                      onPressed: () {
                                        setState(() {
                                          widget._x -= 1;
                                          xaxis.text = widget._x
                                              .toString()
                                              .split(".")[0];
                                        });
                                      })
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              width: 250,
                              child: TextField(
                                controller: yaxis,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "y-Axis",
                                    labelStyle: TextStyle(fontSize: 15)),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                      icon: Icon(Icons.arrow_drop_up),
                                      onPressed: () {
                                        setState(() {
                                          widget._y -= 1;
                                          yaxis.text = widget._y
                                              .toString()
                                              .split(".")[0];
                                        });
                                      }),
                                  IconButton(
                                      icon: Icon(Icons.arrow_drop_down),
                                      onPressed: () {
                                        setState(() {
                                          widget._y += 1;
                                          yaxis.text = widget._y
                                              .toString()
                                              .split(".")[0];
                                        });
                                      })
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "Size",
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              width: 250,
                              child: TextField(
                                controller: widt,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Width",
                                    labelStyle: TextStyle(fontSize: 15)),
                              ),
                            ),
                            Container(
                              width: 50,
                              height: 100,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  IconButton(
                                      icon: Icon(Icons.arrow_drop_up),
                                      onPressed: () {
                                        setState(() {
                                          widget.dSize += 1;
                                          widt.text = widget.dSize.toString();
                                        });
                                      }),
                                  IconButton(
                                      icon: Icon(Icons.arrow_drop_down),
                                      onPressed: () {
                                        setState(() {
                                          widget.dSize -= 1;
                                          widt.text = widget.dSize.toString();
                                        });
                                      })
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "Colour",
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.center,
                      ),
                      ColorPicker(
                          enableAlpha: true,
                          colorPickerWidth: 200,
                          paletteType: PaletteType.rgb,
                          pickerColor: Colors.deepOrange,
                          onColorChanged: (color) {
                            setState(() {
                              widget.color = color;
                            });
                          }),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                              child: Container(
                            width: 100,
                            height: 50,
                            child: RawMaterialButton(
                                fillColor: Colors.grey,
                                onPressed: () {
                                  setState(() {
                                    widget.color = Colors.white;
                                  });
                                },
                                shape: StadiumBorder(),
                                child: Text("White")),
                          )),
                          SizedBox(
                            width: 10,
                          ),
                          Center(
                              child: Container(
                            width: 100,
                            height: 50,
                            child: RawMaterialButton(
                                fillColor: Colors.grey,
                                onPressed: () {
                                  setState(() {
                                    widget.color = Colors.black;
                                  });
                                },
                                shape: StadiumBorder(),
                                child: Text("Black")),
                          )),
                        ],
                      ),
                      SizedBox(height: 20),
                      Center(
                        child: DecoPress(
                          onPressed: () {
                            setState(() {
                              prop = Container();
                              textdata = tdata.text;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                );
              });
            },
            child: Text(
              textdata,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: widget.dSize,
                  color: widget.color),
            ),
          ),
        ),
        Align(alignment: Alignment.centerRight, child: prop),
      ],
    );
  }
}