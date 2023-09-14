import 'package:ecofinder/consts/consts.dart';

Widget searchBar({String? hint}) {
  return TextField(
    //controller: _searchController,
    decoration: InputDecoration(
      hintText: hint,
      // Add a clear button to the search bar
      suffixIcon: IconButton(icon: const Icon(Icons.clear), onPressed: () {}),
      // Add a search icon or button to the search bar
      prefixIcon: IconButton(
        icon: const Icon(Icons.search),
        onPressed: () {
          // Perform the search here
        },
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );
}
