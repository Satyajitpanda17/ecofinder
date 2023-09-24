import 'package:ecofinder/appscreens/home.dart';
import 'package:ecofinder/auth_screens/loginScreen.dart';
import 'package:ecofinder/auth_screens/signupScreen.dart';
import 'package:ecofinder/consts/consts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  changeScreen() {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(244, 9, 245, 49),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(logo)
                .box
                .color(Color.fromARGB(244, 9, 245, 49))
                .size(77, 77)
                .padding(const EdgeInsets.all(8.0))
                .rounded
                .make(),
            20.heightBox,
            appname.text.fontFamily(bold).size(22.0).white.make(),
            5.heightBox,
            work.text.fontFamily(regular).size(5).white.make(),
          ],
        ),
      ),
    );
  }
}
