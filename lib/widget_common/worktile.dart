//import 'dart:js';

import 'package:ecofinder/consts/consts.dart';

Widget Worktile({String? image, String? title, String? boxtext}) {
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: ColoredBox(
        color: Colors.transparent,
        child: Material(
          child: ListTile(
            contentPadding: const EdgeInsets.all(6),
            leading: Image.asset(
              "$image",
              height: 300,
              width: 130,
              fit: BoxFit.cover,
            ),
            title: title!.text
                .fontFamily(semibold)
                .align(TextAlign.justify)
                .size(10)
                .black
                .make(),
            subtitle: Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 10, 5),
              child: Container(
                height: 30,
                width: 50,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 63, 113, 6),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: "$boxtext".text.fontFamily(bold).size(20).white.make(),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
