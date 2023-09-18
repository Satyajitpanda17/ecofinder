import 'package:ecofinder/consts/consts.dart';
import 'package:ecofinder/widget_common/search.dart';
import 'package:ecofinder/widget_common/worktile.dart';
import 'package:ecofinder/widget_common/imageslider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myindex = 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   title: '      EcoFinder'.text.fontFamily(bold).size(30).white.make(),
      //   backgroundColor: const Color.fromARGB(255, 139, 246, 16),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            myindex = index;
          });
        },
        currentIndex: myindex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
        selectedLabelStyle: const TextStyle(
          color: Colors.red,
          fontFamily: bold,
        ),
        unselectedLabelStyle: const TextStyle(
          color: Colors.black,
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(ichome),
              size: 20,
              //color: Colors.black,
            ),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage(icmap),
                size: 20,
                //color: Colors.black,
              ),
              label: 'Map',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(icglobe),
              size: 20,
              //color: Colors.black,
            ),
            label: 'Globe',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(icprofile),
              size: 20,
              //color: Colors.black,
            ),
            label: 'Profile',
            backgroundColor: Colors.white,
          ),
        ],
      ),
      body: Container(
        width: screenWidth,
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
              Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  // padding: EdgeInsets.all(8),
                  width: context.screenWidth * 0.7,
                  height: context.screenHeight * 0.2,
                  //color: Colors.amberAccent,
                  child: Image.asset(
                    slide1,
                    width: context.screenWidth * 0.7,
                  ),
                ),
              ),
              (context.screenHeight * 0.001).heightBox,
              Padding(
                padding: EdgeInsets.all(8),
                child: Container(
                  // padding: EdgeInsets.all(8),
                  width: context.screenWidth * 0.7,
                  height: context.screenHeight * 0.1,
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
              (context.screenHeight * 0.04).heightBox,
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
      // body: Container(
      //   width: double.infinity,
      //   color: Colors.white,
      //   child: Padding(
      //     padding: const EdgeInsets.all(8),
      //     child: ListView(
      //       scrollDirection: Axis.vertical,
      //       children: [
      //         (context.screenHeight * 0.02).heightBox,
      //         'Welcome !'.text.fontFamily(bold).size(30).black.make(),
      //         // (context.screenHeight * 0.07).heightBox,
      //         Container(
      //           padding: const EdgeInsets.all(8),
      //           width: context.screenWidth * 0.95,
      //           height: context.screenHeight * 0.35,
      //           decoration: BoxDecoration(
      //             color: const Color.fromARGB(255, 139, 246, 16),
      //             borderRadius: BorderRadius.circular(8),
      //           ),
      //           child: Padding(
      //             padding: const EdgeInsets.all(6),
      //             child: Column(
      //               //padding : const EdgeInsets.all(6),
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 Row(
      //                   mainAxisAlignment: MainAxisAlignment.start,
      //                   children: [
      //                     10.widthBox,
      //                     Image.asset(profile),
      //                     15.widthBox,
      //                     'Username'
      //                         .text
      //                         .fontFamily(bold)
      //                         .size(20)
      //                         .black
      //                         .make(),
      //                   ],
      //                 ),
      //                 'username@gmail.com'
      //                     .text
      //                     .fontFamily(semibold)
      //                     .size(15)
      //                     .black
      //                     .make(),
      //                 20.heightBox,
      //                 Row(
      //                   //scrollDirection: Axis.horizontal,
      //                   mainAxisAlignment: MainAxisAlignment.start,
      //                   children: [
      //                     5.widthBox,
      //                     Expanded(
      //                       child: Container(
      //                         width: context.screenWidth * 0.25,
      //                         height: context.screenHeight * 0.06,
      //                         decoration: BoxDecoration(
      //                           borderRadius: BorderRadius.circular(6),
      //                           color: const Color.fromARGB(255, 124, 201, 36),
      //                         ),
      //                         child: Row(
      //                           children: [
      //                             5.widthBox,
      //                             Container(
      //                               width: 30,
      //                               height: 30,
      //                               decoration: BoxDecoration(
      //                                 borderRadius: BorderRadius.circular(4),
      //                                 color: Colors.white,
      //                               ),
      //                               child: Image.asset(gem),
      //                             ),
      //                             5.widthBox,
      //                             '245 points'
      //                                 .text
      //                                 .fontFamily(bold)
      //                                 .size(10)
      //                                 .black
      //                                 .make(),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //                     10.widthBox,
      //                     Expanded(
      //                       child: Container(
      //                         width: context.screenWidth * 0.25,
      //                         height: context.screenHeight * 0.06,
      //                         decoration: BoxDecoration(
      //                           borderRadius: BorderRadius.circular(6),
      //                           color: const Color.fromARGB(255, 124, 201, 36),
      //                         ),
      //                         child: Row(
      //                           children: [
      //                             5.widthBox,
      //                             Container(
      //                               width: 30,
      //                               height: 30,
      //                               decoration: BoxDecoration(
      //                                 borderRadius: BorderRadius.circular(4),
      //                                 color: Colors.white,
      //                               ),
      //                               child: Image.asset(donation),
      //                             ),
      //                             //
      //                             2.5.widthBox,
      //                             '345 rupees'
      //                                 .text
      //                                 .fontFamily(bold)
      //                                 .size(10)
      //                                 .black
      //                                 .make(),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //                     10.widthBox,
      //                     Expanded(
      //                       child: Container(
      //                         width: context.screenWidth * 0.25,
      //                         height: context.screenHeight * 0.06,
      //                         decoration: BoxDecoration(
      //                           borderRadius: BorderRadius.circular(6),
      //                           color: const Color.fromARGB(255, 124, 201, 36),
      //                         ),
      //                         child: Row(
      //                           children: [
      //                             5.widthBox,
      //                             Container(
      //                               width: 30,
      //                               height: 30,
      //                               decoration: BoxDecoration(
      //                                 borderRadius: BorderRadius.circular(4),
      //                                 color: Colors.white,
      //                               ),
      //                               child: Image.asset(garbage),
      //                             ),
      //                             5.widthBox,
      //                             '3 items'
      //                                 .text
      //                                 .fontFamily(bold)
      //                                 .size(10)
      //                                 .black
      //                                 .make(),
      //                           ],
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //         (context.screenHeight * 0.03).heightBox,
      //         ' Locate E-Waste Facilities'
      //             .text
      //             .fontFamily(bold)
      //             .size(30)
      //             .black
      //             .make(),
      //         (context.screenHeight * 0.03).heightBox,
      //         const SearchBar(hintText: 'Search your dump Location'),
      //         (context.screenHeight * 0.04).heightBox,
      //         Row(
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           children: [
      //             (context.screenWidth * 0.06).widthBox,
      //             'My Location'.text.fontFamily(semibold).size(20).black.make(),
      //           ],
      //         ),
      //         (context.screenHeight * 0.05).heightBox,
      //         Container(
      //           height: context.screenHeight * 0.3,
      //           decoration: BoxDecoration(
      //             image: DecorationImage(
      //               image: AssetImage(map),
      //             ),
      //           ),
      //         ),
      //         (context.screenHeight * 0.05).heightBox,
      //         Padding(
      //           padding: EdgeInsets.all(10),
      //           child: Expanded(
      //             child: Container(
      //               width: context.screenWidth * 0.8,
      //               height: context.screenHeight * 0.3,
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.circular(10),
      //                 color: Color.fromARGB(154, 2, 200, 35),
      //               ),
      //               child: Padding(
      //                 padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
      //                 child: Column(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     'SAVE  EARTH'
      //                         .text
      //                         .fontFamily(bold)
      //                         .size(25)
      //                         .color(
      //                           Color.fromARGB(174, 5, 34, 5),
      //                         )
      //                         .make(),
      //                     10.heightBox,
      //                     'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id es'
      //                         .text
      //                         .fontFamily(semibold)
      //                         .size(15)
      //                         .color(
      //                           Color.fromARGB(146, 5, 34, 5),
      //                         )
      //                         .make(),
      //                     20.heightBox,
      //                     Container(
      //                       padding: EdgeInsets.fromLTRB(30, 5, 5, 5),
      //                       width: context.screenWidth * 0.4,
      //                       height: context.screenHeight * 0.06,
      //                       decoration: BoxDecoration(
      //                         color: Colors.white,
      //                         borderRadius: BorderRadius.circular(6),
      //                       ),
      //                       child: 'Device'
      //                           .text
      //                           .fontFamily(bold)
      //                           .size(25)
      //                           .black
      //                           .make(),
      //                     )
      //                   ],
      //                 ),
      //               ),
      //             ),
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
