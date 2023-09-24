import 'package:ecofinder/appscreens/home.dart';
import 'package:ecofinder/auth_screens/loginScreen.dart';
import 'package:ecofinder/consts/consts.dart';
import 'package:ecofinder/widget_common/custom_textfield.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                child: signup.text
                    .fontFamily(bold)
                    .size(30)
                    .color(Color.fromARGB(244, 3, 96, 19))
                    .make(),
              ),
              20.heightBox,
              customTextField(title: "NAME", hint: ""),
              customTextField(title: email, hint: "Enter your email"),
              customTextField(title: password, hint: "Enter your password"),
              customTextField(
                  title: retypepassword, hint: "Retype your password"),
              30.heightBox,
              Padding(
                padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => const LoginScreen());
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(244, 3, 96, 19)),
                  child: signup.text.fontFamily(bold).white.size(15).make(),
                ),
              ),
              //5.heightBox,

              Center(
                child: Row(
                  children: [
                    logged_in.text.fontFamily(bold).black.size(15).make(),
                    // 5.widthBox,
                    TextButton(
                        onPressed: () {
                          Get.to(() => const LoginScreen());
                        },
                        child: login.text
                            .fontFamily(bold)
                            .black
                            .size(15)
                            .color(Color.fromARGB(244, 3, 96, 19))
                            .make()),
                  ],
                ),
              ),

              //15.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: 1,
                    color: Color.fromARGB(244, 3, 96, 19),
                  ),
                  4.widthBox,
                  "OR".text.fontFamily(bold).size(20).black.make(),
                  4.widthBox,
                  Container(
                    width: MediaQuery.of(context).size.width / 2.5,
                    height: 1,
                    color: Color.fromARGB(244, 3, 96, 19),
                  ),
                ],
              ),
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
