import 'package:belajar_widget/homePage.dart';
import 'package:belajar_widget/widgetPage/button_widget.dart';
import 'package:belajar_widget/widgetPage/iOs_cupertino_widget.dart';
import 'package:belajar_widget/widgetPage/image_widget.dart';
import 'package:belajar_widget/widgetPage/scaffold_widget.dart';
import 'package:belajar_widget/widgetPage/task.dart';
import 'package:belajar_widget/widgetPage/temperature_converter.dart';
import 'package:belajar_widget/widgetPage/text_widget.dart';
import 'package:flutter/material.dart';
import 'widgetPage/stack_widget.dart';
import 'widgetPage/column_widget.dart';
import 'widgetPage/date_time_pickers_widget.dart';
import 'widgetPage/dialog_widget.dart';
import 'widgetPage/grid_view_widget.dart';
import 'widgetPage/input_and_selection_widget.dart';
import 'widgetPage/list_view_widget.dart';
import 'widgetPage/property_alignment_widget.dart';
import 'widgetPage/property_child_widget.dart';
import 'widgetPage/property_color_widget.dart';
import 'widgetPage/property_decoration_widget.dart';
import 'widgetPage/property_height_and_width_widget.dart';
import 'widgetPage/property_margin_widget.dart';
import 'widgetPage/property_padding_widget.dart';
import 'widgetPage/property_transform_widget.dart';
import 'widgetPage/row_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/nomor0': (context) => TaskPage(),
        '/nomor1': (context) => TextWidget(),
        '/nomor2': (context) => ImageWidget(),
        '/nomor3': (context) => Cupertino(),
        '/nomor4': (context) => Button(),
        '/nomor5': (context) => ScaffoldWdiget(),
        '/nomor6': (context) => DialogWidget(),
        '/nomor7': (context) => InputAndSelectionWidget(),
        '/nomor8': (context) =>
            const DateAndTimePickersWidget(title: 'Contoh Date Picker'),
        // '/nomor9': (context) => ContainerWidget(),
        '/nomor10': (context) => PropertyChildWidget(),
        '/nomor11': (context) => PropertyAlignmentWidget(),
        '/nomor12': (context) => PropertyColorWidget(),
        '/nomor13': (context) => PropertyHeightWidthWidget(),
        '/nomor14': (context) => PropertyMarginWidget(),
        '/nomor15': (context) => PropertyPaddingWidget(),
        '/nomor16': (context) => PropertyTransformWidget(),
        '/nomor17': (context) => PropertyDecorationWidget(),
        '/nomor18': (context) => RowWidget(),
        '/nomor19': (context) => ColumnWidget(),
        '/nomor20': (context) => StackWidget(),
        '/nomor21': (context) => ListViewWidget(),
        '/nomor22': (context) => GridViewWidget(),
        '/nomor23': (context) => Temperature(),
      },
    );
  }
}
