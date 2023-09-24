import 'package:ecofinder/appscreens/home.dart';
import 'package:ecofinder/consts/consts.dart';
import 'package:ecofinder/widget_common/custom_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: context.screenHeight,
        width: context.screenWidth,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: ListView(
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (context.screenHeight * 0.1).heightBox,
              Center(
                child: login.text
                    .fontFamily(bold)
                    .size(30)
                    .color(Color.fromARGB(244, 3, 96, 19))
                    .make(),
              ),
              20.heightBox,
              customTextField(title: email, hint: "Enter your email"),
              customTextField(title: password, hint: "Enter your password"),
              30.heightBox,
              Padding(
                padding: EdgeInsets.fromLTRB(80, 0, 80, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const Home());
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(244, 3, 96, 19)),
                  child: login.text.fontFamily(bold).white.size(20).make(),
                ),
              ),
              //5.heightBox,

              //5.heightBox,
              Center(
                child: IconButton(
                    // iconSize: 8,
                    onPressed: () {},
                    icon: Image.asset(
                      icgoogle,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
