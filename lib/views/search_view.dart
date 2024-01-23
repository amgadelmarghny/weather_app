import 'package:flutter/material.dart';

import '../category/search_view_body.dart';

// ignore: must_be_immutable
class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search a City'),
      ),
      body: const SearchViewBody(),
    );
  }
}
