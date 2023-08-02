import 'package:flutter/material.dart';
import 'package:weather/category/custom_textfield.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomTextField()),
    );
  }
}
