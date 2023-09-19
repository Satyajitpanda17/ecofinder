import 'package:ecofinder/consts/consts.dart';

Widget profileTile({String? title}) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(40, 3, 10, 3),
    child: Container(
      child: Row(
        children: [
          "$title".text.fontFamily(semibold).color(Colors.grey).size(20).make(),
          // 30.widthBox,
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Image.asset(arrow),
            // alignment: Alignment.centerRight,
          )
        ],
      ),
    ),
  );
}
