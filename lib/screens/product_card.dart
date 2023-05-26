import 'package:flutter/material.dart';
import 'package:flutter_project/screens/Favourite/favourite_page.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_project/model/product_items.dart';
import 'package:flutter_project/screens/details/detail_screens.dart';
import 'package:flutter_project/provider/favorite_provider.dart';
import 'package:provider/provider.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 140,
    this.aspectRatio = 1.02,
    required this.product,
  }) : super(key: key);

  final double width, aspectRatio;
  final Product product;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    return Padding(
      padding: EdgeInsets.only(left: 16),
      child: SizedBox(
        width: 140,
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            DetailsScreen.routeName,
            arguments: ProductDetailsArguments(product: product),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  child: Hero(
                    tag: product.id.toString(),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(8), // Set desired border radius
                      child: Image.asset(
                        product.images[0],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                product.title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product.price}",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFF7643),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {
                      provider.toggleFavorite(product);
                    },
                    child: Container(
                      padding: EdgeInsets.all(8),
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                        color: provider.isExist(product)
                            ? Color(0xFFFF7643).withOpacity(0.15)
                            : Color(0xFF979797).withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        "assets/images/Heart Icon_2.svg",
                        color: provider.isExist(product)
                            ? Color(0xFFFF4848)
                            : Color(0xFFDBDEE4),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
