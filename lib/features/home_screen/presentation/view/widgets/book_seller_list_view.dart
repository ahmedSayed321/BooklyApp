import 'package:bookly_app/features/home_screen/presentation/view/widgets/best_seller_widget.dart';
import 'package:flutter/material.dart';

class BookSellerListView extends StatelessWidget {
  const BookSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => BestSellerWidget(),
    itemCount: 15,);
  }
}
