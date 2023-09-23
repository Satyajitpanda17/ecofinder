import 'package:ecofinder/consts/consts.dart';

Widget DeviceShow({String? imgdev, String? devname, String? devinfo}) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //5.widthBox,
        Image.asset("$imgdev"),
        15.widthBox,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            "$devname".text.fontFamily(bold).size(25).black.make(),
            "$devinfo"
                .text
                .fontFamily(regular)
                .size(15)
                .color(Colors.grey)
                .make(),
          ],
        )
      ],
    ),
  );
}
