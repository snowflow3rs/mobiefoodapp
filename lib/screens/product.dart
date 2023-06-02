import 'package:flutter/material.dart';
import 'package:flutter_project/screens/special_title.dart';

import 'package:flutter_project/model/product_items.dart';
import 'package:flutter_project/screens/product_card.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: SectionTitle(title: "Ưu đãi đặc biệt", press: () {}),
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular)
                    return ProductCard(
                      product: demoProducts[index],
                    );

                  return SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}
