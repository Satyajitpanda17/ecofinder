import 'package:ecofinder/appscreens/device/device_screen.dart';
import 'package:ecofinder/appscreens/home_screen.dart';
import 'package:ecofinder/appscreens/location/location.dart';
import 'package:ecofinder/appscreens/profile/profile.dart';
import 'package:ecofinder/consts/consts.dart';
import 'package:ecofinder/controllers/home_controller.dart';
//import 'package:ecofinder/consts/list.dart';
//import 'package:ecofinder/widget_common/search.dart';

//import 'package:ecofinder/widget_common/imageslider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  //int myindex = 0;
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    var navBarItem = [
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
    ];
    var navBody = [
      HomeScreen(),
      LocationScreen(),
      DeviceScreen(),
      ProfileScreen(),
    ];

    return Scaffold(
      body: Column(children: [
        Obx(() => Expanded(
            child: navBody.elementAt(controller.currentNavIndex.value)))
      ]),
      // appBar: AppBar(
      //   title: '      EcoFinder'.text.fontFamily(bold).size(30).white.make(),
      //   backgroundColor: const Color.fromARGB(255, 139, 246, 16),
      // ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.currentNavIndex.value,
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
          items: navBarItem,
          onTap: (value) {
            controller.currentNavIndex.value = value;
          },
        ),
      ),
      //
      //
    );
  }
}
