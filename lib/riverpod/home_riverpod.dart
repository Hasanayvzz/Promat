import 'package:promat/model/home_products_model.dart';
import 'package:promat/model/product.dart';
import 'package:flutter/material.dart';

class HomeRiverpod extends ChangeNotifier {
  List<String> campaigns = [
    "assets/images/1.jpeg",
    "assets/images/1.jpeg",
    "assets/images/promat.jpg"
  ];

  int campaignsCurrentIndex = 0;
  PageController pageController = PageController(initialPage: 0);

  void setCampaignsIndex(int newPageValue) {
    campaignsCurrentIndex = newPageValue;
    notifyListeners();
  }

  List<Color> colorList = [];

  HomeProductsModel hotDeals =
      HomeProductsModel(categoryTitle: "Ürünlerimiz", products: [
    Product(
      image: "assets/images/cips.png",
      title: "Ruffles Sade Patates Cipsi",
      price: 15,
      star: 4.9,
      descTitle: "Sade Patates Cipsi",
      descDetail: "Ruffles sade patates cipsinin eşsiz lezzetini tadın.",
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
      isSaved: false,
    ),
    Product(
      image: "assets/images/cikolata.png",
      title: "Eti Çikolatalı Gofret",
      price: 6,
      star: 4.7,
      descTitle: "Eti Çikolatalı Gofret",
      isSaved: true,
      descDetail: "Kendinizi küçük bir çikolata ile mutlu edebilirsiniz.",
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
    ),
    Product(
      image: "assets/images/bisküvi.png",
      title: "Eti Nero",
      price: 8,
      descTitle: "Eti Nero",
      star: 5.0,
      isSaved: false,
      descDetail: "Atıştırın açlığınızı yatıştırın.",
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
    ),
  ]);

  HomeProductsModel mostPopular =
      HomeProductsModel(categoryTitle: "", products: [
    Product(
      image: "assets/images/enerji.png",
      title: "Redbull",
      price: 20,
      descTitle: "Redbull Enerji İçeceği",
      star: 4.9,
      isSaved: true,
      descDetail: "Alın ve yorgunluğunuzu bir nebze düşürün",
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
    ),
    Product(
      image: "assets/images/kola.png",
      title: "Coca Cola",
      price: 10,
      star: 4.9,
      descTitle: "Coca Cola",
      isSaved: false,
      descDetail: "Coca cola lezzeti ile serinleyin.",
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
    ),
    Product(
      image: "assets/images/kuruyemis.png",
      title: "Lüx Kuruyemiş",
      price: 35,
      star: 5.0,
      isSaved: true,
      descTitle: "Lüx Kuruyemiş",
      descDetail: "İçerisinde fındık, badem, antep fıstığı, kaju, fıstık ile.",
      colors: [Colors.cyan, Colors.deepPurple, Colors.green],
    ),
  ]);
}
