import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'utils/index.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.transparent, // navigation bar color
      statusBarColor: Colors.transparent, // status bar color
      statusBarIconBrightness: Brightness.dark, // status bar icons' color
      systemNavigationBarIconBrightness:
          Brightness.dark, //navigation bar icons' color
    ),
  );
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(const MyApp());
}













// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';

// class BalanceChart extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(16),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 5,
//             blurRadius: 7,
//             offset: Offset(0, 3), // changes position of shadow
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Balance',
//             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 4),
//           Text(
//             '1000 USD',
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 16),
//           AspectRatio(
//             aspectRatio: 1.7,
//             child: BarChart(
//               BarChartData(
//                 barGroups: _getBarGroups(),
//                 borderData: FlBorderData(show: false),
//                 titlesData: FlTitlesData(
//                   show: true,
//                   bottomTitles: SideTitles(
//                     showTitles: true,
//                     getTitles: (double value) {
//                       switch (value.toInt()) {
//                         case 0:
//                           return 'Jan';
//                         case 1:
//                           return 'Feb';
//                         case 2:
//                           return 'Mar';
//                         case 3:
//                           return 'Apr';
//                         case 4:
//                           return 'May';
//                         case 5:
//                           return 'Jun';
//                         default:
//                           return '';
//                       }
//                     },
//                   ),
//                 ),
//                 gridData: FlGridData(show: false),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   List<BarChartGroupData> _getBarGroups() {
//     return [
//       BarChartGroupData(x: 0, barRods: [
//         BarChartRodData(y: 8, colors: [Colors.red, Colors.blue], width: 16),
//       ]),
//       BarChartGroupData(x: 1, barRods: [
//         BarChartRodData(y: 10, colors: [Colors.red, Colors.blue], width: 16),
//       ]),
//       BarChartGroupData(x: 2, barRods: [
//         BarChartRodData(y: 14, colors: [Colors.red, Colors.blue], width: 16),
//       ]),
//       BarChartGroupData(x: 3, barRods: [
//         BarChartRodData(y: 12, colors: [Colors.red, Colors.blue], width: 16),
//       ]),
//       BarChartGroupData(x: 4, barRods: [
//         BarChartRodData(y: 9, colors: [Colors.red, Colors.blue], width: 16),
//       ]),
//       BarChartGroupData(x: 5, barRods: [
//         BarChartRodData(y: 11, colors: [Colors.red, Colors.blue], width: 16),
//       ]),
//     ];
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(title: Text('Balance Chart')),
//       body: Center(child: BalanceChart()),
//     ),
//   ));
// }

