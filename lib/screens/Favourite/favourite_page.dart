import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_project/provider/favorite_provider.dart';
import 'package:flutter_project/theme.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_project/screens/details/detail_screens.dart';
import 'package:flutter/cupertino.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({Key? key});
  static String routeName = "/favourites";

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    final favoriteProducts = provider.product;

    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            Colors.transparent, // Set the background color to transparent
        elevation: 0, // Remove the elevation
        iconTheme: IconThemeData(
            color: Colors.black), // Set the color of the back icon to black
        leading: IconButton(
          icon: Icon(CupertinoIcons.back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Padding(
          padding: EdgeInsets.fromLTRB(60, 20, 0, 0),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/images/favour.svg",
              ),
              const SizedBox(width: 16 / 2),
              Text(
                "Favourite",
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: Container(
          // Add container properties here
          child: ListView.builder(
            itemCount: favoriteProducts.length,
            itemBuilder: (context, index) {
              final product = favoriteProducts[index];

              return GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    DetailsScreen.routeName,
                    arguments: ProductDetailsArguments(product: product),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
                  child: Card(
                    child: ListTile(
                      leading: Container(
                        width: 60,
                        height: 60,
                        child: Image.asset(
                          product.images[0],
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(product.title),
                      subtitle: Text('\$${product.price}'),
                      trailing: IconButton(
                        onPressed: () {
                          provider.toggleFavorite(product);
                        },
                        icon: Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      ),
                      // Add more details or customize the UI as needed
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
