//import 'package:flutter/material.dart';
import 'package:ecofinder/consts/consts.dart';
import 'package:ecofinder/widget_common/profiletile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                width: context.screenWidth * 0.95,
                height: context.screenHeight * 0.25,
                decoration: BoxDecoration(
                  color: Color.fromARGB(192, 69, 117, 15),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6),
                  child: Column(
                    //padding : const EdgeInsets.all(6),
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          10.widthBox,
                          Image.asset(profile),
                          15.widthBox,
                          'Username'
                              .text
                              .fontFamily(bold)
                              .size(20)
                              .black
                              .make(),
                        ],
                      ),
                      'username@gmail.com'
                          .text
                          .fontFamily(semibold)
                          .size(15)
                          .black
                          .make(),
                      20.heightBox,
                      Row(
                        //scrollDirection: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          5.widthBox,
                          Expanded(
                            child: Container(
                              width: context.screenWidth * 0.25,
                              height: context.screenHeight * 0.06,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  5.widthBox,
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Colors.white,
                                    ),
                                    child: Image.asset(gem),
                                  ),
                                  5.widthBox,
                                  '245 points'
                                      .text
                                      .fontFamily(bold)
                                      .size(10)
                                      .black
                                      .make(),
                                ],
                              ),
                            ),
                          ),
                          10.widthBox,
                          Expanded(
                            child: Container(
                              width: context.screenWidth * 0.25,
                              height: context.screenHeight * 0.06,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  5.widthBox,
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Colors.white,
                                    ),
                                    child: Image.asset(donation),
                                  ),
                                  //
                                  2.5.widthBox,
                                  '345 rupees'
                                      .text
                                      .fontFamily(bold)
                                      .size(10)
                                      .black
                                      .make(),
                                ],
                              ),
                            ),
                          ),
                          10.widthBox,
                          Expanded(
                            child: Container(
                              width: context.screenWidth * 0.25,
                              height: context.screenHeight * 0.06,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.white,
                              ),
                              child: Row(
                                children: [
                                  5.widthBox,
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: Colors.white,
                                    ),
                                    child: Image.asset(garbage),
                                  ),
                                  5.widthBox,
                                  '3 items'
                                      .text
                                      .fontFamily(bold)
                                      .size(10)
                                      .black
                                      .make(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              (context.screenHeight * 0.07).heightBox,
              profileTile(title: account),
              15.heightBox,
              profileTile(title: credit),
              15.heightBox,
              profileTile(title: aware),
              15.heightBox,
              profileTile(title: settings),
              15.heightBox,
              profileTile(title: fb),
              15.heightBox,
              profileTile(title: pp),
              15.heightBox,
              Padding(
                padding: EdgeInsets.fromLTRB(20, 5, 10, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          logout,
                          color: Colors.red,
                        )),
                    30.widthBox,
                    signout.text
                        .fontFamily(semibold)
                        .color(Colors.grey)
                        .size(20)
                        .make(),
                  ],
                ),
              )
              // ' Locate E-Waste Facilities'
              //     .text
              //     .fontFamily(bold)
              //     .size(30)
              //     .black
              //     .make(),
              // (context.screenHeight * 0.03).heightBox,
              // const SearchBar(hintText: 'Search your dump Location'),
              // (context.screenHeight * 0.04).heightBox,
              // Row(
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: [
              //     (context.screenWidth * 0.06).widthBox,
              //     'My Location'.text.fontFamily(semibold).size(20).black.make(),
              //   ],
              // ),
              // (context.screenHeight * 0.05).heightBox,
              // Container(
              //   height: context.screenHeight * 0.3,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage(map),
              //     ),
              //   ),
              // ),
              // (context.screenHeight * 0.05).heightBox,
              // Padding(
              //   padding: EdgeInsets.all(10),
              //   child: Expanded(
              //     child: Container(
              //       width: context.screenWidth * 0.8,
              //       height: context.screenHeight * 0.3,
              //       decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(10),
              //         color: Color.fromARGB(154, 2, 200, 35),
              //       ),
              //       child: Padding(
              //         padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             'SAVE  EARTH'
              //                 .text
              //                 .fontFamily(bold)
              //                 .size(25)
              //                 .color(
              //                   Color.fromARGB(174, 5, 34, 5),
              //                 )
              //                 .make(),
              //             10.heightBox,
              //             'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id es'
              //                 .text
              //                 .fontFamily(semibold)
              //                 .size(15)
              //                 .color(
              //                   Color.fromARGB(146, 5, 34, 5),
              //                 )
              //                 .make(),
              //             20.heightBox,
              //             Container(
              //               padding: EdgeInsets.fromLTRB(30, 5, 5, 5),
              //               width: context.screenWidth * 0.4,
              //               height: context.screenHeight * 0.06,
              //               decoration: BoxDecoration(
              //                 color: Colors.white,
              //                 borderRadius: BorderRadius.circular(6),
              //               ),
              //               child: 'Device'
              //                   .text
              //                   .fontFamily(bold)
              //                   .size(25)
              //                   .black
              //                   .make(),
              //             )
              //           ],
              //         ),
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
