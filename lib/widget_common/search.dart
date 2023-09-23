import 'package:ecofinder/consts/consts.dart';

Widget searchBar({String? hint}) {
  return TextFormField(
    //controller: _searchController,
    decoration: InputDecoration(
      //suffixIcon: IconButton(icon: const Icon(Icons.clear), onPressed: () {}),
      filled: true,
      fillColor: Color.fromRGBO(240, 240, 240, 0.362),
      hintText: hint,
      hintStyle: TextStyle(color: Colors.black26),
      prefixIcon: IconButton(
        icon: const Icon(Icons.search),
        onPressed: () {
          // Perform the search here
        },
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    ),
  );
}
