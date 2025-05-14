part of 'product_bloc.dart';

enum ProductStatus { initial, loading, success, failure }

class ProductState extends Equatable {
  final ProductStatus status;
  final String? errorMessage;
  final List<dynamic> products;
  final dynamic selectedProduct;

  const ProductState({
    this.status = ProductStatus.initial,
    this.errorMessage,
    this.products = const [],
    this.selectedProduct,
  });

  ProductState copyWith({
    ProductStatus? status,
    String? errorMessage,
    List<dynamic>? products,
    dynamic selectedProduct,
  }) {
    return ProductState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      products: products ?? this.products,
      selectedProduct: selectedProduct ?? this.selectedProduct,
    );
  }

  @override
  List<Object?> get props => [status, errorMessage, products, selectedProduct];
}
