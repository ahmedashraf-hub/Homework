/* 
E-commerce Inventory Management System
 Imagine you're working for an e-commerce startup that's rapidly growing and facing challenges
 managing its inventory. Your manager wants a structured system to efficiently organize and handle
 various types of products - both physical goods (such as electronics, clothing, home accessories,
 and beauty items) and digital products (like downloadable content or digital licenses).
 The company needs a solution that:- Clearly categorizes products based on their types and attributes.
 - Allows products to have discounts applied easily during promotions or seasonal sales.
 - Supports easy filtering of products, such as finding all digital products or all products within a
 specific category (e.g., electronics).
 - Provides quick insights, such as calculating the total inventory value to assist with accounting and
 financial projections.
 Your task is to design and build a flexible inventory management system that addresses these
 requirements and can be easily maintained and extended as the business continues to grow.
*/

void main() {
  final inventory = InventoryManager();

  inventory.addProduct(const PhysicalProduct(
    id: "p1",
    name: "Smartphone",
    basePrice: 599.99,
    category: "Electronics",
    stockQuantity: 15,
  ));
  inventory.addProduct(const PhysicalProduct(
    id: "p2",
    name: "Laptop",
    basePrice: 1299.99,
    category: "Electronics",
    stockQuantity: 5,
  ));
  inventory.addProduct(const DigitalProduct(
    id: "d1",
    name: "Game License",
    basePrice: 49.99,
    category: "Digital",
    downloadLink: "http://example.com/game",
  ));

  inventory.applyDiscount("p1", 0.15);

  print("Total Value: \$${inventory.products.totalValue.toStringAsFixed(2)}");
  print(
      "Electronics: ${inventory.products.byCategory("Electronics").map((p) => p.name).join(", ")}");
  print(
      "Digital Products: ${inventory.products.digitalProducts.map((p) => p.name).join(", ")}");
}

abstract class Product {
  final String id;
  final String name;
  final double basePrice;
  final String category;
  final double? discount;

  const Product({
    required this.id,
    required this.name,
    required this.basePrice,
    required this.category,
    this.discount,
  });

  double get price =>
      discount != null ? basePrice * (1 - discount!) : basePrice;

  Map<String, dynamic> get details;
}

// Physical Product with stock
class PhysicalProduct extends Product {
  final int stockQuantity;

  const PhysicalProduct({
    required String id,
    required String name,
    required double basePrice,
    required String category,
    required this.stockQuantity,
    double? discount,
  }) : super(
            id: id,
            name: name,
            basePrice: basePrice,
            category: category,
            discount: discount);

  @override
  Map<String, dynamic> get details => {'stock': stockQuantity};
}

// Digital Product with download link
class DigitalProduct extends Product {
  final String downloadLink;

  const DigitalProduct({
    required String id,
    required String name,
    required double basePrice,
    required String category,
    required this.downloadLink,
    double? discount,
  }) : super(
            id: id,
            name: name,
            basePrice: basePrice,
            category: category,
            discount: discount);

  @override
  Map<String, dynamic> get details => {'downloadLink': downloadLink};
}

class InventoryManager {
  final List<Product> _products = [];

  void addProduct(Product product) => _products.add(product);

  void applyDiscount(String productId, double discount) {
    final index = _products.indexWhere((p) => p.id == productId);
    if (index != -1) {
      final oldProduct = _products[index];
      _products[index] = _createDiscountedProduct(oldProduct, discount);
    }
  }

  Product _createDiscountedProduct(Product product, double discount) {
    if (product is PhysicalProduct) {
      return PhysicalProduct(
        id: product.id,
        name: product.name,
        basePrice: product.basePrice,
        category: product.category,
        stockQuantity: product.stockQuantity,
        discount: discount,
      );
    } else if (product is DigitalProduct) {
      return DigitalProduct(
        id: product.id,
        name: product.name,
        basePrice: product.basePrice,
        category: product.category,
        downloadLink: product.downloadLink,
        discount: discount,
      );
    }
    throw Exception("Unknown product type");
  }

  List<Product> get products => List.unmodifiable(_products);
}

extension InventoryExtensions on List<Product> {
  List<Product> byCategory(String category) =>
      where((p) => p.category == category).toList();

  List<DigitalProduct> get digitalProducts =>
      whereType<DigitalProduct>().toList();

  double get totalValue => fold(0.0, (sum, p) => sum + p.price);

  List<Product> get discountedProducts =>
      where((p) => p.discount != null).toList();
}
