import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:screenshot/screenshot.dart';

import 'components/custom-circle.dart';
import 'components/custom-rect.dart';
import 'components/custom-tri.dart';
import 'components/customer-text.dart';
import 'components/shape-painter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Designer',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MyHomePage(title: 'Designer'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> tree = [];
  double _x = 0, _y = 0;
  int indexValue = 0;
  ScreenshotController scr;
  File _imageFile;

  @override
  void initState() {
    scr = ScreenshotController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return RawKeyboardListener(
      focusNode: FocusNode(),
      onKey: (evt) {
        if (evt.data.keyLabel == "z" && evt.isControlPressed) {
          setState(() {
            tree.removeLast();
            return;
          });
        }
        return false;
      },
      autofocus: true,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          elevation: 0.0,
          actions: <Widget>[
            Container(
              width: 100,
              height: 50,
              child: RawMaterialButton(
                  fillColor: Colors.orange,
                  onPressed: () {
                    scr.capture();
                  },
                  shape: StadiumBorder(),
                  child: Text("Ssssave")),
            )
          ],
        ),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: width * 0.1,
              height: height,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text("Shapes"),
                  ),
                  // Draggable<String>(
                  //   data: "circle",
                  //   child: CustomPaint(
                  //     painter: ShapePainter(
                  //         shape: "circle",
                  //         sx: 60,
                  //         sy: 60,
                  //         color: Colors.deepOrange),
                  //     child: Container(
                  //       width: 60,
                  //       height: 60,
                  //     ),
                  //   ),
                  //   feedback: CustomPaint(
                  //     painter: ShapePainter(
                  //         shape: "circle",
                  //         sx: 60,
                  //         sy: 60,
                  //         color: Colors.deepOrange),
                  //     child: Container(
                  //       width: 60,
                  //       height: 60,
                  //     ),
                  //   ),
                  //   childWhenDragging: CustomPaint(
                  //     painter: ShapePainter(
                  //         shape: "circle",
                  //         sx: 60,
                  //         sy: 60,
                  //         color: Colors.deepOrange),
                  //     child: Container(
                  //       width: 60,
                  //       height: 60,
                  //     ),
                  //   ),
                  //   onDragEnd: (details) {
                  //     setState(() {
                  //       _x = details.offset.dx - width * 0.1 - 17;
                  //       _y = details.offset.dy - 55;
                  //     });
                  //   },
                  // ),
                  SizedBox(height: 10),
                  Draggable<String>(
                    data: "rect",
                    child: CustomPaint(
                      painter: ShapePainter(
                          shape: "rect",
                          sx: 60,
                          sy: 60,
                          color: Colors.deepOrange),
                      child: Container(
                        width: 60,
                        height: 60,
                      ),
                    ),
                    feedback: CustomPaint(
                      painter: ShapePainter(
                          shape: "rect",
                          sx: 60,
                          sy: 60,
                          color: Colors.deepOrange),
                      child: Container(
                        width: 60,
                        height: 60,
                      ),
                    ),
                    childWhenDragging: CustomPaint(
                      painter: ShapePainter(
                          shape: "rect",
                          sx: 60,
                          sy: 60,
                          color: Colors.deepOrange),
                      child: Container(
                        width: 60,
                        height: 60,
                      ),
                    ),
                    onDragEnd: (details) {
                      setState(() {
                        _x = details.offset.dx - width * 0.1 - 17;
                        _y = details.offset.dy - 55;
                      });
                    },
                  ),
                  SizedBox(height: 10),
                  // Draggable<String>(
                  //   data: "tri",
                  //   child: CustomPaint(
                  //     painter: ShapePainter(
                  //         shape: "tri",
                  //         sx: 60,
                  //         sy: 60,
                  //         color: Colors.deepOrange),
                  //     child: Container(
                  //       width: 60,
                  //       height: 60,
                  //     ),
                  //   ),
                  //   feedback: CustomPaint(
                  //     painter: ShapePainter(
                  //         shape: "tri",
                  //         sx: 60,
                  //         sy: 60,
                  //         color: Colors.deepOrange),
                  //     child: Container(
                  //       width: 60,
                  //       height: 60,
                  //     ),
                  //   ),
                  //   childWhenDragging: CustomPaint(
                  //     painter: ShapePainter(
                  //         shape: "tri",
                  //         sx: 60,
                  //         sy: 60,
                  //         color: Colors.deepOrange),
                  //     child: Container(
                  //       width: 60,
                  //       height: 60,
                  //     ),
                  //   ),
                  //   onDragEnd: (details) {
                  //     setState(() {
                  //       _x = details.offset.dx - width * 0.1 - 17;
                  //       _y = details.offset.dy - 55;
                  //     });
                  //   },
                  // ),
                  SizedBox(height: 10),
                  // Draggable<String>(
                  //   data: "text",
                  //   child: Icon(
                  //     Icons.text_fields,
                  //     size: 50,
                  //     color: Colors.deepOrange,
                  //   ),
                  //   feedback: Text("Text",
                  //       style: TextStyle(
                  //           decoration: TextDecoration.none,
                  //           fontSize: 20,
                  //           color: Colors.black)),
                  //   childWhenDragging: Text("Text",
                  //       style: TextStyle(
                  //           decoration: TextDecoration.none,
                  //           fontSize: 20,
                  //           color: Colors.black)),
                  //   onDragEnd: (details) {
                  //     setState(() {
                  //       _x = details.offset.dx - width * 0.1 - 17;
                  //       _y = details.offset.dy - 55;
                  //     });
                  //   },
                  // ),
                ],
              ),
            ),
            Screenshot(
              controller: scr,
              child: Container(
                  key: Key("Canvas"),
                  width: width * 0.9,
                  height: height,
                  decoration: BoxDecoration(color: Colors.grey[200]),
                  child: DragTarget<String>(
                    builder: (a, b, c) => Stack(
                      children: tree,
                    ),
                    onAccept: (data) {
                      double sx = 60, sy = 60;
                      Timer(Duration(microseconds: 1), () {
                        switch (data) {
                          case "circle":
                            setState(() {
                              tree.add(CustomCircle(
                                sx: sx,
                                sy: sy,
                                y: _y,
                                x: _x,
                                indexValue: indexValue,
                                color: Colors.deepOrange,
                              ));
                            });
                            break;
                          case "rect":
                            setState(() {
                              tree.add(CustomRect(
                                // sx: sx,
                                // sy: sy,
                                y: _y,
                                x: _x,
                                // indexValue: indexValue,
                                // color: Colors.deepOrange,
                              ));
                            });
                            break;
                          case "tri":
                            setState(() {
                              tree.add(CustomTri(
                                sx: sx,
                                sy: sy,
                                y: _y,
                                x: _x,
                                indexValue: indexValue,
                                color: Colors.deepOrange,
                              ));
                            });
                            break;
                          case "text":
                            setState(() {
                              tree.add(CustomText(
                                sx: sx,
                                sy: sy,
                                y: _y,
                                x: _x,
                              ));
                            });
                        }
                        indexValue++;
                      });
                    },
                  )),
            )
          ],
        ),
      ),
    );
  }
}

