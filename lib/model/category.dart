class Category {
  final String icon, title;

  Category({required this.icon, required this.title});
}

List<Category> demo = [
  Category(
    icon: "assets/images/hamburger.png",
    title: "Burgers",
  ),
  Category(
    icon: "assets/images/pizza.png",
    title: "Pizza",
  ),
  Category(
    icon: "assets/images/soda.png",
    title: "Drinks",
  ),
  Category(
    icon: "assets/images/panna-cotta.png",
    title: "Others",
  ),
];
