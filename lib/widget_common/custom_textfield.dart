import 'package:ecofinder/consts/consts.dart';

Widget customTextField({String? title, String? hint, controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      title!.text
          .fontFamily(semibold)
          .size(16.0)
          .color(Color.fromARGB(244, 3, 96, 19))
          .make(),
      5.heightBox,
      TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontFamily: regular,
            color: Color.fromRGBO(127, 127, 127, 1),
          ),
          hintText: hint,
          isDense: true,
          fillColor: Color.fromRGBO(240, 240, 240, 0.915),
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(244, 3, 96, 19)),
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
      15.heightBox,
    ],
  );
}
