import 'package:flutter/material.dart';
import 'pages/tap_page.dart';
import 'pages/drag_page.dart';
import 'pages/scale_page.dart';
import 'pages/playground_page.dart';

class HomePage extends StatelessWidget {
  final menus = [
    {"title": "Tap Interaction", "page": TapPage()},
    {"title": "Drag Movement", "page": DragPage()},
    {"title": "Scale & Zoom", "page": ScalePage()},
    {"title": "Gesture Playground", "page": PlaygroundPage()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Puis Lab")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: GridView.builder(
          itemCount: menus.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 106,
          ),
          itemBuilder: (_, i) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => menus[i]["page"] as Widget),
                );
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [Colors.blue, Colors.purple],
                  ),
                ),
                child: Center(
                  child: Text(
                    menus[i]["title"] as String,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
