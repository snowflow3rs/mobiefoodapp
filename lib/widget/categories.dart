import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_project/model/category.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 84,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: demo.length,
        itemBuilder: (context, index) => CategoryCard(
          icon: demo[index].icon,
          title: demo[index].title,
          press: () {},
        ),
        separatorBuilder: (context, index) => const SizedBox(width: 16),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: press,
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      child: Padding(
        padding:
            // const EdgeInsets.symmetric(vertical: 16 / 2, horizontal: 12 / 4),
            EdgeInsets.fromLTRB(0, 10, 0, 0),
        child: Column(
          children: [
            Image.asset(
              icon,
              width: 40,
              height: 40,
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: TextStyle(fontFamily: "Poppins", color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}
