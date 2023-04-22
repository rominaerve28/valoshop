
import 'package:flutter/material.dart';

class SearchSkinDelegate extends SearchDelegate {

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () => query = '', 
        icon: const Icon(
          Icons.close
        ),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => {
        close(context, null)
      }, 
      icon:  const Icon(
        Icons.arrow_back
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text('resultados');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Text('ultimo');
  }

}