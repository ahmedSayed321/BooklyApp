import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home_screen/presentation/view/widgets/book_seller_list_view.dart';
import 'package:bookly_app/features/home_screen/presentation/view/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home_screen/presentation/view/widgets/custom_book_list_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             CustomAppBar(),
             SizedBox(height: 15,),
             CustomBookListView(),
            SizedBox(height: 50,),
            Text("Best Seller",style: Styles.titleMedium,),
            SizedBox(height: 15,),
            BookSellerListView()
          ],
        ),
      ),
    );
  }
}
