import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerWidget extends StatelessWidget {
  const BestSellerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0,left: 8),
      child: Row(
        children: [
          Container(
            height: mediaQuery.height * 0.18,
            width: mediaQuery.width * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22.0),
              image: DecorationImage(
                image: AssetImage(testImage),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "Harry Potter \nand the Goblet of fire",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  style: Styles.titleMedium,
                ),
                SizedBox(height: 5),
                Text(
                  "Rudyard Kipling",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  style: Styles.titleSmall,
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Text("19.99 EGP", style: Styles.titleMedium),
                    SizedBox(width: 25),
                    Icon(Icons.star, color: Colors.yellow),
                    Text("4.8", style: Styles.titleMedium),
                    SizedBox(width: 25),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
