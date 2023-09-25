import 'package:ecofinder/consts/consts.dart';

class AwarenessTipsScreen extends StatelessWidget {
  const AwarenessTipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: context.screenWidth,
        height: context.screenHeight,
        color: Colors.white,
        // padding: const EdgeInsets.fromLTRB(30, 5, 10, 5),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            (context.screenHeight * 0.1).heightBox,
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 0, 40, 0),
              child: Container(
                  child: "AWARENESS"
                      .text
                      .fontFamily(bold)
                      .size(30)
                      .color(Colors.red)
                      .make()),
            ),
            10.heightBox,
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Container(
                child: awareness.text
                    .fontFamily(regular)
                    .color(Color.fromARGB(207, 6, 166, 11))
                    .size(15)
                    .make(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Container(
                child: detail_1.text
                    .fontFamily(regular)
                    .color(Color.fromARGB(207, 6, 166, 11))
                    .size(15)
                    .make(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Container(
                child: detail_2.text
                    .fontFamily(regular)
                    .color(Color.fromARGB(207, 6, 166, 11))
                    .size(15)
                    .make(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Container(
                child: detail_4.text
                    .fontFamily(regular)
                    .color(Color.fromARGB(207, 6, 166, 11))
                    .size(15)
                    .make(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
              child: Container(
                child: detail_5.text
                    .fontFamily(regular)
                    .color(Color.fromARGB(207, 6, 166, 11))
                    .size(15)
                    .make(),
              ),
            ),
            25.heightBox,
            Padding(
              padding: const EdgeInsets.fromLTRB(100, 0, 40, 0),
              child: Container(
                  child: "TIPS TO MANAGE"
                      .text
                      .fontFamily(bold)
                      .size(30)
                      .color(Colors.red)
                      .make()),
            ),
          ],
        ),
      ),
    );
  }
}
