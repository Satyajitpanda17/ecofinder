import 'package:ecofinder/consts/consts.dart';
import 'package:ecofinder/controllers/profile_controller.dart';
import 'package:ecofinder/appscreens/profile/awaretip.dart';
import 'package:ecofinder/appscreens/profile/credit_body.dart';
import 'package:ecofinder/appscreens/profile/profile_body.dart';

Widget profileTile({
  String? title,
}) {
  var prof_controller = Get.put(ProfileController());
  var prof_body = [
    const ProfileBody(),
    const CreditBody(),
    const AwarenessTipsScreen(),
  ];
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
