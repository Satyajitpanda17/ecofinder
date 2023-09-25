//import 'package:flutter/material.dart';
import 'package:ecofinder/consts/consts.dart';
import 'package:ecofinder/widget_common/locatetile.dart';
import 'package:ecofinder/widget_common/search.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Container(
      padding: EdgeInsets.fromLTRB(10, 30, 10, 10),
      color: Colors.white,
      width: screenWidth,
      child: SingleChildScrollView(
        child: Column(
          children: [
            15.heightBox,
            searchBar(hint: "Search dump Location"),
            25.heightBox,
            Image.asset(map),
            20.heightBox,
            LocationTile(
                dumpname: "BMC Dump Yard",
                address: "Nayapalli,Bhubaneswar",
                time: 8),
            LocationTile(
              dumpname: centre_1,
              address: address_1,
              time: 9,
            ),
            LocationTile(
              dumpname: centre_2,
              address: address_2,
              time: 9,
            ),
            LocationTile(
              dumpname: centre_3,
              address: address_3,
              time: 10,
            ),
            LocationTile(
              dumpname: centre_4,
              address: address_4,
              time: 9,
            ),
            // 5.heightBox,
            Padding(
              padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(233, 228, 228, 0.961),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "More Places"
                        .text
                        .fontFamily(semibold)
                        .size(15)
                        .black
                        .make(),
                    10.widthBox,
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_right_alt_outlined),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
