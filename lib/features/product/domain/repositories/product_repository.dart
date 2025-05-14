import 'package:injectable/injectable.dart';
import '../models/product.dart';

abstract class ProductRepository {
  Future<List<Product>> getProducts();
  Future<Product> getProductById(String id);
  Future<void> createProduct(Product product);
  Future<void> updateProduct(Product product);
  Future<void> deleteProduct(String id);
}

@Injectable(as: ProductRepository)
class ProductRepositoryImpl implements ProductRepository {
  @override
  Future<List<Product>> getProducts() async {
    // TODO: Implement getProducts
    throw UnimplementedError();
  }

  @override
  Future<Product> getProductById(String id) async {
    // TODO: Implement getProductById
    throw UnimplementedError();
  }

  @override
  Future<void> createProduct(Product product) async {
    // TODO: Implement createProduct
    throw UnimplementedError();
  }

  @override
  Future<void> updateProduct(Product product) async {
    // TODO: Implement updateProduct
    throw UnimplementedError();
  }

  @override
  Future<void> deleteProduct(String id) async {
    // TODO: Implement deleteProduct
    throw UnimplementedError();
  }
}
