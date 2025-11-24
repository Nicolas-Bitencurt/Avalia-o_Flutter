import 'package:flutter/material.dart';
import '../main.dart';
import '../widgets/app_drawer.dart';
import '../widgets/product_card.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  void _toggleFavorite(Product product) {
    setState(() {
      product.isFavorite = !product.isFavorite;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          product.isFavorite
              ? '${product.name} adicionado aos favoritos'
              : '${product.name} removido dos favoritos',
        ),
        duration: const Duration(seconds: 1),
        backgroundColor: product.isFavorite ? Colors.green : Colors.grey,
      ),
    );
  }

  void _navigateToDetail(Product product) {
    Navigator.of(context).pushNamed(
      '/product-detail',
      arguments: product,
    ).then((_) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produtos'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.of(context).pushNamed('/favorites');
            },
          ),
        ],
      ),
      drawer: const AppDrawer(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.deepPurple.shade50,
              Colors.white,
            ],
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  const Icon(Icons.shopping_bag, color: Colors.deepPurple),
                  const SizedBox(width: 8),
                  Text(
                    '${ProductData.products.length} produtos disponíveis',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: ProductData.products.length,
                itemBuilder: (context, index) {
                  final product = ProductData.products[index];
                  return ProductCard(
                    product: product,
                    onTap: () => _navigateToDetail(product),
                    onFavoriteToggle: () => _toggleFavorite(product),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}