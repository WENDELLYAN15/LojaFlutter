import "package:flutter/material.dart";
import "product.dart";

class Shop extends ChangeNotifier {
  final List<Product> _shop = [
    Product(
        name: "Moletom",
        price: 99,
        description: "Moletom Básico",
        imagePath: "assets/moletom.jpg"),
    Product(
        name: "Óculos",
        price: 99,
        description: "Óculos estilo Aviador",
        imagePath: "assets/oculos.jpg"),
    Product(
        name: "Relógio",
        price: 99,
        description: "Relógio de Pulso",
        imagePath: "assets/relogio.jpg"),
    Product(
        name: "Tênis",
        price: 99,
        description: "Tênis Básico",
        imagePath: "assets/tenis.jpg")
  ];

  final List<Product> _cart = [];

  List<Product> get shop => _shop;

  List<Product> get cart => _cart;

  //aumentar a quantidade de produto no carrinho
  void incrementQuantity(Product item) {
    _cart.firstWhere((cartItem) => cartItem == item).incrementQuantity();
    notifyListeners();
  }

  //diminuir a quantidade de produto no carrinho
  void decreamentQuantity(Product item) {
    _cart.firstWhere((cartItem) => cartItem == item).decreamentQuantity();
    notifyListeners();
  }

  // zerar quantidade de produto no carrinho
  void initialQuantity(Product item) {
    _cart.firstWhere((cartItem) => cartItem == item).initialQuantity();
    notifyListeners();
  }

  void addToCart(Product item) {
    if (_cart.contains(item)) {
      incrementQuantity(item);
      notifyListeners();
    } else {
      _cart.add(item);
      incrementQuantity(item);
      notifyListeners();
    }
  }

// remover do carrinho
  void removeFromCart(Product item) {
    initialQuantity(item);
    _cart.remove(item);
    notifyListeners();
  }

// diminuir quantidade no carrinho
  void decreamentFromCart(Product item) {
    decreamentQuantity(item);
    notifyListeners();
  }
}
