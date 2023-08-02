import 'package:flutter/material.dart';

import '../category/search_view_body.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

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
