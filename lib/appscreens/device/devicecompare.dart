// import 'package:pie_chart/pie_chart.dart';
// import 'package:ecofinder/consts/consts.dart';

// class DeviceCompare extends StatefulWidget {
//   const DeviceCompare({super.key});

//   @override
//   State<DeviceCompare> createState() => _DeviceCompareState();
// }

// class _DeviceCompareState extends State<DeviceCompare> {
//   int choiceIndex = 0;
//   Map<String, double> dataMap = {
//     "Precious Metals": 22.5,
//     "Plastic Materials": 35,
//     "Hazardous Metals": 45,
//   };
//   List<Color> colorList = [
//     Colors.green,
//     Colors.blue,
//     Colors.red,
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//       child: PieChart(
//           dataMap: dataMap,
//           colorList: colorList,
//           chartRadius: MediaQuery.of(context).size.width / 2,
//           centerText: "Device Composition",
//           chartValuesOptions: ChartValuesOptions(
//             showChartValues: true,
//             showChartValuesInPercentage: true,
//           )),
//     ));
//   }
// }
