//import 'package:flutter/material.dart';
//import 'package:ecofinder/appscreens/device/devicecompare.dart';
import 'package:ecofinder/appscreens/device/deviceshow.dart';
import 'package:ecofinder/consts/consts.dart';
import 'package:ecofinder/widget_common/search.dart';
import 'package:pie_chart/pie_chart.dart';

class DeviceScreen extends StatefulWidget {
  const DeviceScreen({super.key});

  @override
  State<DeviceScreen> createState() => _DeviceScreenState();
}

class _DeviceScreenState extends State<DeviceScreen> {
  int choiceIndex = 0;
  Map<String, double> dataMap = {
    "Precious Metals": 22.5,
    "Plastic Materials": 35,
    "Hazardous Metals": 45,
  };
  List<Color> colorList = [
    Colors.green,
    Colors.blue,
    Colors.red,
  ];
  @override
  Widget build(BuildContext context) {
    //double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          color: Colors.white,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              (context.screenHeight * 0.001).heightBox,
              searchBar(hint: "Device Name"),
              (context.screenHeight * 0.06).heightBox,
              DeviceShow(
                  imgdev: deviceimg,
                  devname: "OPPO A9 2020",
                  devinfo: "(Space Blue, 8GB RAM, 128GB Storage)"),
              (context.screenHeight * 0.06).heightBox,
              Container(
                child: PieChart(
                  dataMap: dataMap,
                  colorList: colorList,
                  chartRadius: MediaQuery.of(context).size.width / 2,
                  centerText: "Device Composition",
                  chartValuesOptions: ChartValuesOptions(
                    showChartValues: true,
                    showChartValuesInPercentage: true,
                  ),
                  legendOptions: LegendOptions(
                    showLegends: true,
                    legendShape: BoxShape.rectangle,
                  ),
                ),
              ),
              10.heightBox,
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                child: Container(
                    height: (context.screenHeight * 0.2),
                    width: double.infinity,
                    color: Colors.amberAccent,
                    child: Column(
                      children: [
                        "Harm it Causes"
                            .text
                            .fontFamily(bold)
                            .size(20)
                            .black
                            .make(),
                        10.heightBox,
                      ],
                    )),
              ),
              (context.screenHeight * 0.005).heightBox,
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                child: Container(
                  child: Row(
                    children: [
                      "CREDITS :".text.fontFamily(bold).size(20).black.make(),
                      (context.screenWidth * 0.03).widthBox,
                      "5 points"
                          .text
                          .fontFamily(semibold)
                          .size(15)
                          .black
                          .make(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 5, 100, 5),
                child: ElevatedButton(
                  onPressed: () {},
                  child: "EARN CREDITS"
                      .text
                      .fontFamily(semibold)
                      .size(15)
                      .white
                      .make(),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[800]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
