
import 'package:flutter/material.dart';
import 'package:untitled/widgetPractice/animated_align_demo.dart';
import 'package:untitled/widgetPractice/OverflowBox_demo.dart';
import 'package:untitled/widgetPractice/align_demo.dart';
import 'package:untitled/widgetPractice/animatedContainer_demo.dart';
import 'package:untitled/widgetPractice/animated_builder_demo.dart';
import 'package:untitled/widgetPractice/appbar_demo.dart';
import 'package:untitled/widgetPractice/aspectratio_demo.dart';
import 'package:untitled/widgetPractice/autocomple_demo.dart';
import 'package:untitled/widgetPractice/baseline_demo.dart';
import 'package:untitled/widgetPractice/column_demo.dart';
import 'package:untitled/widgetPractice/container_demo.dart';
import 'package:untitled/widgetPractice/fittedbox_demo.dart';
import 'package:untitled/widgetPractice/flutter_logo.dart';
import 'package:untitled/widgetPractice/fractionallysizedbox_demo.dart';
import 'package:untitled/widgetPractice/from_demo.dart';
import 'package:untitled/widgetPractice/image_demo.dart';
import 'package:untitled/widgetPractice/intrinsicheight_demo.dart';
import 'package:untitled/widgetPractice/limitedbox_demo.dart';
import 'package:untitled/widgetPractice/offstage_demo.dart';
import 'package:untitled/widgetPractice/row_demo.dart';
import 'package:untitled/widgetPractice/stack_demo.dart';
import 'package:untitled/widgetPractice/transform_demo.dart';

import 'flow_demo.dart';
import 'gridview_demo.dart';




class AllWidgetDemo extends StatefulWidget {
  const AllWidgetDemo({super.key});

  @override
  State<AllWidgetDemo> createState() => _AllWidgetDemoState();
}

class _AllWidgetDemoState extends State<AllWidgetDemo> {
  String dropdownvalue = 'AlignDemo()';
  var items = [
    const AlignDemo(),
    const Animated_Align_demo(),
    const AnimatedBuilderDemo(),
    const AnimatedContainerDemo(),
    const AppBarDemo(),
    const AspeactRationDemo(),
    const AutoCompleteDemo(),
    const BaseLineDemo(),
    const ColumnDemo(),
    const ContainerDemo(),
    const FittedBoxDemo(),
    const PracticeLogo(),
    const FractionallySizedBoxDemo(),
    const FormDemo(),
    const ImageDemo(),
    const InterinsicHeightDemo(),
    const LimitedBoxDemo(),
    const OffStageDemo(),
    const OverflowBoxDemo(),
    const RawDemo(),
    const TransfromDemo(),
    const FlowDemo(),
    const StackDemo(),
    const GridViewDemo(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
                child: DropdownButton(
            // value: dropdownvalue,
        items: items.map((e) {
          return DropdownMenuItem(value: e, child: Text(e.toString(),));
        }).toList(),
        onChanged: (value)  {
          setState(() {
            dropdownvalue = value.toString();
            navigateOtherPage(value);
          });

        },
      )),
    ));
  }
  navigateOtherPage(values)
  {
    return Navigator.push(context, MaterialPageRoute(builder: (context) {
      return values;
    },));
  }

}
