import 'package:flutter/material.dart';

import 'custom_book_card.dart';

class CustomBookListView extends StatelessWidget {
  const CustomBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return SizedBox(
      height: mediaQuery.height * 0.35,
      child: ListView.builder(itemBuilder: (context, index) => CustomBookCard(),
        itemCount: 15,
        scrollDirection: Axis.horizontal
        ,),
    );
  }
}
