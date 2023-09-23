import 'package:ecofinder/consts/consts.dart';

Widget LocationTile({String? dumpname, String? address, int? time}) {
  return Container(
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
    child: ColoredBox(
      color: Colors.transparent,
      child: Material(
        child: ListTile(
          contentPadding: const EdgeInsets.all(10),
          title: dumpname!.text.fontFamily(bold).size(20).black.make(),
          // selectedTileColor: Color.fromARGB(255, 125, 231, 5),
          subtitle: Container(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              address!.text.fontFamily(semibold).size(10).black.make(),
              "Opens $time am".text.fontFamily(semibold).size(10).black.make(),
              8.heightBox,
              Image.asset(star),
            ],
          )),
          dense: true,
          onTap: () {},
        ),
      ),
    ),
  );
}
