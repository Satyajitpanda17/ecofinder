import 'package:ecofinder/consts/consts.dart';

Widget searchBar({controller}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      hintStyle: const TextStyle(
        fontFamily: regular,
        color: Color.fromARGB(255, 149, 142, 142),
      ),
      hintText: 'Search your Location',
      suffixIcon: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.search),
      ),
      isDense: true,
      // fillColor: Colors.blueGrey,
      filled: true,
      border: InputBorder.none,
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.black),
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  );
}
