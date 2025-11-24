import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/register_screen.dart';
import 'screens/home_screen.dart';
import 'screens/products_screen.dart';
import 'screens/product_detail_screen.dart';
import 'screens/favorites_screen.dart';
import 'screens/about_screen.dart';

void main() {
  runApp(const FlutterStoreApp());
}

class FlutterStoreApp extends StatelessWidget {
  const FlutterStoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Store',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          elevation: 2,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/home': (context) => const HomeScreen(),
        '/products': (context) => const ProductsScreen(),
        '/favorites': (context) => const FavoritesScreen(),
        '/about': (context) => const AboutScreen(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/product-detail') {
          final product = settings.arguments as Product;
          return MaterialPageRoute(
            builder: (context) => ProductDetailScreen(product: product),
          );
        }
        return null;
      },
    );
  }
}

// Model - Product
class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final String imageUrl;
  bool isFavorite;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isFavorite = false,
  });
}

// Data - Products List
class ProductData {
  static final List<Product> products = [
    Product(
      id: '1',
      name: 'Smartphone Galaxy X',
      description: 'Smartphone de última geração com tela AMOLED de 6.7", processador octa-core, 128GB de armazenamento e câmera tripla de 48MP.',
      price: 2499.99,
      imageUrl: 'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=400',
    ),
    Product(
      id: '2',
      name: 'Notebook Pro 15"',
      description: 'Notebook profissional com processador Intel i7, 16GB RAM, SSD 512GB, placa de vídeo dedicada e tela Full HD.',
      price: 4999.00,
      imageUrl: 'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?w=400',
    ),
    Product(
      id: '3',
      name: 'Fone Bluetooth Premium',
      description: 'Fone de ouvido wireless com cancelamento de ruído ativo, bateria de 30h e qualidade de áudio Hi-Fi.',
      price: 899.90,
      imageUrl: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400',
    ),
    Product(
      id: '4',
      name: 'Smartwatch Fitness',
      description: 'Relógio inteligente com monitor cardíaco, GPS integrado, resistência à água e mais de 50 modos esportivos.',
      price: 1299.00,
      imageUrl: 'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400',
    ),
    Product(
      id: '5',
      name: 'Tablet Ultra 10"',
      description: 'Tablet com tela de 10.5", 64GB de armazenamento, suporte a caneta stylus e ideal para trabalho e entretenimento.',
      price: 1799.99,
      imageUrl: 'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0?w=400',
    ),
    Product(
      id: '6',
      name: 'Câmera DSLR Pro',
      description: 'Câmera profissional com sensor de 24MP, gravação 4K, lente 18-55mm e perfeita para fotografia avançada.',
      price: 3499.00,
      imageUrl: 'https://images.unsplash.com/photo-1502920917128-1aa500764cbd?w=400',
    ),
  ];

  static List<Product> getFavorites() {
    return products.where((p) => p.isFavorite).toList();
  }
}