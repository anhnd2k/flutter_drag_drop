import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import 'deco-press.dart';
import 'shape-painter.dart';

//Stateull Circle

class CustomCircle extends StatefulWidget {
  double sx, sy, _y, _x;
  final int indexValue;
  Color color;
  CustomCircle(
      {Key key,
      @required this.indexValue,
      @required this.sx,
      @required this.sy,
      @required double y,
      @required double x,
      @required this.color})
      : _y = y,
        _x = x,
        super(key: key);
  @override
  __CustomCircleState createState() => __CustomCircleState();
}

class __CustomCircleState extends State<CustomCircle> {
  Widget prop = Container();
  TextEditingController xaxis;
  TextEditingController yaxis;
  TextEditingController widt;
  TextEditingController heig;

  @override
  void initState() {
    xaxis = TextEditingController();
    xaxis.text = widget._x.toString().split(".")[0];
    yaxis = TextEditingController();
    yaxis.text = widget._y.toString().split(".")[0];
    widt = TextEditingController();
    widt.text = widget.sx.toString();
    heig = TextEditingController();
    heig.text = widget.sy.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        Positioned(
          key: Key("${widget.sx}${widget.sy}"),
          top: widget._y,
          left: widget._x,
          child: InkWell(
            onTap: () {
              setState(() {
                prop = Container(
                  width: 350,
                  height: height,
                  alignment: Alignment.center,
                  color: Colors.white,
                  child: ListView(
                    children: <Widget>[
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
                                          widget.sx += 1;
                                          widt.text = widget.sx.toString();
                                        });
                                      }),
                                  IconButton(
                                      icon: Icon(Icons.arrow_drop_down),
                                      onPressed: () {
                                        setState(() {
                                          widget.sx -= 1;
                                          widt.text = widget.sx.toString();
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
                                controller: heig,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: "Height",
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
                                          widget.sy += 1;
                                          heig.text = widget.sy.toString();
                                        });
                                      }),
                                  IconButton(
                                      icon: Icon(Icons.arrow_drop_down),
                                      onPressed: () {
                                        setState(() {
                                          widget.sy -= 1;
                                          heig.text = widget.sy.toString();
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
                          pickerColor: Colors.orange,
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
                              widget._x = double.parse(xaxis.text);
                              widget._y = double.parse(yaxis.text);
                              widget.sx = double.parse(widt.text);
                              widget.sy = double.parse(heig.text);

                              prop = Container();
                            });
                          },
                        ),
                      ),
                      SizedBox(height: 20)
                    ],
                  ),
                );
              });
            },
            child: CustomPaint(
              size: Size(widget.sx, widget.sy),
              foregroundPainter: ShapePainter(
                  shape: "circle",
                  sx: widget.sx,
                  sy: widget.sy,
                  color: widget.color),
              child: Container(
                width: widget.sx,
                height: widget.sy,
              ),
            ),
          ),
        ),
        Align(alignment: Alignment.centerRight, child: prop),
      ],
    );
  }
}