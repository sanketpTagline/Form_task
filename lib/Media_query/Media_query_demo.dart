import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MediaQueryDemo extends StatefulWidget {
  const MediaQueryDemo({super.key});

  @override
  State<MediaQueryDemo> createState() => _MediaQueryDemoState();
}

class _MediaQueryDemoState extends State<MediaQueryDemo> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final Size screenSize = MediaQuery.of(context).size;
    final double pixelRatio = MediaQuery.of(context).devicePixelRatio;
    final double textScaleFactor = MediaQuery.of(context).textScaleFactor;
    final Brightness platformBrightness = MediaQuery.of(context).platformBrightness;
    final EdgeInsets padding = MediaQuery.of(context).padding;
    final EdgeInsets viewInsets = MediaQuery.of(context).viewInsets;
    final EdgeInsets systemGestureInsets = MediaQuery.of(context).systemGestureInsets;
    final bool alwaysUse24HourFormat = MediaQuery.of(context).alwaysUse24HourFormat;
    final bool accessibleNavigation = MediaQuery.of(context).accessibleNavigation;
    final bool invertColors = MediaQuery.of(context).invertColors;
    final bool highContrast = MediaQuery.of(context).highContrast;


if (kDebugMode) {
  print("$height  $width");
}
    return Scaffold(
      body: Center(
        // child: Container(
        //   child: Text('Screen size: $screenSize\n'
        //       'Device pixel ratio: $pixelRatio\n'
        //       'Text scale factor: $textScaleFactor\n'
        //       'Platform brightness: $platformBrightness\n'
        //       'Padding: $padding\n'
        //       'View insets: $viewInsets\n'
        //       'System gesture insets: $systemGestureInsets\n'
        //       'Always use 24-hour format: $alwaysUse24HourFormat\n'
        //       'Accessible navigation: $accessibleNavigation\n'
        //       'Invert colors: $invertColors\n'
        //       'High contrast: $highContrast\n'
        //   ),
        // ),

        // child: Text("Hello",style: TextStyle(
        //   fontSize: 20 * MediaQuery.of(context).devicePixelRatio,
        // ),),
        child: Column(
          children: [
            SizedBox(
              height: height/9,
            ),
            Container(
              height: height/ 8,
              width: width/4,
              color: Colors.blue,
            ),
            SizedBox(
              height: height/5,
            ),
            Container(
              height: height/3,
              width: width/4,
              color: Colors.red,
            ),
            Image.asset("name"),
          const Image(image: AssetImage("qwertyu"))
          ],
        ),
      ),
    );
  }
}
