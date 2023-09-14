import 'package:ecofinder/consts/consts.dart';
import 'package:ecofinder/widget_common/search.dart';

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
      appBar: AppBar(
        title: '      EcoFinder'.text.fontFamily(bold).size(30).white.make(),
        backgroundColor: const Color.fromARGB(255, 139, 246, 16),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            myindex = index;
          });
        },
        currentIndex: myindex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.amberAccent),
          BottomNavigationBarItem(
              icon: Icon(Icons.call),
              label: 'Call',
              backgroundColor: Colors.grey),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'person',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'music',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Home',
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              (context.screenHeight * 0.02).heightBox,
              'Welcome !'.text.fontFamily(bold).size(30).black.make(),
              // (context.screenHeight * 0.07).heightBox,
              Container(
                padding: const EdgeInsets.all(8),
                width: context.screenWidth * 0.95,
                height: context.screenHeight * 0.25,
                color: const Color.fromARGB(255, 139, 246, 16),
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
                                color: const Color.fromARGB(255, 124, 201, 36),
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
                                color: const Color.fromARGB(255, 124, 201, 36),
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
                                color: const Color.fromARGB(255, 124, 201, 36),
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
              (context.screenHeight * 0.03).heightBox,
              ' Locate E-Waste Facilities'
                  .text
                  .fontFamily(bold)
                  .size(30)
                  .black
                  .make(),
              (context.screenHeight * 0.03).heightBox,
              const SearchBar(),
              (context.screenHeight * 0.04).heightBox,
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  (context.screenWidth * 0.06).widthBox,
                  'My Location'.text.fontFamily(semibold).size(20).black.make(),
                ],
              ),
              (context.screenHeight * 0.05).heightBox,
              Container(
                height: context.screenHeight * 0.3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(map),
                  ),
                ),
              ),
              (context.screenHeight * 0.05).heightBox,
              Padding(
                padding: EdgeInsets.all(10),
                child: Expanded(
                  child: Container(
                    width: context.screenWidth * 0.8,
                    height: context.screenHeight * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(154, 2, 200, 35),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          'SAVE  EARTH'
                              .text
                              .fontFamily(bold)
                              .size(25)
                              .color(
                                Color.fromARGB(174, 5, 34, 5),
                              )
                              .make(),
                          10.heightBox,
                          'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id es'
                              .text
                              .fontFamily(semibold)
                              .size(15)
                              .color(
                                Color.fromARGB(146, 5, 34, 5),
                              )
                              .make(),
                          20.heightBox,
                          Container(
                            padding: EdgeInsets.fromLTRB(30, 5, 5, 5),
                            width: context.screenWidth * 0.4,
                            height: context.screenHeight * 0.06,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: 'Device'
                                .text
                                .fontFamily(bold)
                                .size(25)
                                .black
                                .make(),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
