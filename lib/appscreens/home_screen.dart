import 'package:flutter/material.dart';
import 'package:ecofinder/consts/consts.dart';
import 'package:ecofinder/widget_common/worktile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: context.screenWidth,
        height: context.screenHeight,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              5.heightBox,
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      "Hi Satyajit".text.fontFamily(bold).size(20).black.make(),
                      // 1.heightBox,
                      "Ready to take a step towards clean world"
                          .text
                          .fontFamily(regular)
                          .size(10)
                          .black
                          .make(),
                    ],
                  ),
                  (context.screenWidth * 0.25).widthBox,
                  Image.asset(notification),
                ],
              ),
              10.heightBox,
              VxSwiper.builder(
                  aspectRatio: 16 / 9,
                  autoPlay: false,
                  enableInfiniteScroll: false,
                  height: context.screenHeight * 0.16,
                  //
                  // enlargeCenterPage: true,
                  itemCount: sliderList.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      sliderList[index],
                      fit: BoxFit.fitWidth,
                    )
                        .box
                        .rounded
                        .clip(Clip.antiAlias)
                        .margin(EdgeInsets.symmetric(horizontal: 8))
                        .make();
                  }),
              (context.screenHeight * 0.001).heightBox,
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  // padding: EdgeInsets.all(8),
                  width: context.screenWidth * 0.7,
                  height: context.screenHeight * 0.15,
                  //color: Colors.amberAccent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      5.heightBox,
                      Image.asset(love),
                      5.heightBox,
                      SizedBox(
                        height: context.screenHeight * 0.04,
                        width: context.screenWidth * 0.35,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            // ignore: deprecated_member_use
                            primary: Colors.pinkAccent,
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              //to set border radius to button
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Center(
                            child: "DONATE"
                                .text
                                .fontFamily(bold)
                                .size(20)
                                .white
                                .make(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              (context.screenHeight * 0.02).heightBox,
              Worktile(
                image: img1,
                title:
                    "Discover your nearest e-waste disposal destination right away where Recycling meets Convenience",
                boxtext: "FIND NOW",
              ),
              Worktile(
                image: img2,
                title:
                    "Unlock a greener future with tips for E-Waste Disposal and Raising Public Awareness for a Sustainable Tomorrow",
                boxtext: "GET TIPS",
              ),
              Worktile(
                image: img3,
                title:
                    "Earn Green Rewards by Converting Precious Metals from Recycled E-Waste into Credit Points",
                boxtext: "UPLOAD",
              ),
              10.heightBox,
              Center(
                child: "OUR VOLUNTEERS"
                    .text
                    .fontFamily(bold)
                    .size(20)
                    .black
                    .make(),
              ),
              20.heightBox,
              Center(
                child: "J o i n    t h e    C o m m u n i t y !"
                    .text
                    .fontFamily(bold)
                    .size(20)
                    .black
                    .make(),
              ),
              5.heightBox,
              Center(
                child:
                    "Unite for a Cleaner Planet, One Recycled Gadget at a Time"
                        .text
                        .fontFamily(regular)
                        .size(5)
                        .black
                        .make(),
              ),
              5.heightBox,
              Image.asset(comm),
            ],
          ),
        ),
      ),
    );
  }
}
