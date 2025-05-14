import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../bloc/product_bloc.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: BlocBuilder<ProductBloc, ProductState>(
        builder: (context, state) {
          switch (state.status) {
            case ProductStatus.initial:
              return const Center(child: Text('Initial'));
            case ProductStatus.loading:
              return const Center(child: CircularProgressIndicator());
            case ProductStatus.success:
              return ListView.builder(
                itemCount: state.products.length,
                itemBuilder: (context, index) {
                  final product = state.products[index];
                  return ListTile(
                    title: Text(product.name),
                    subtitle: Text('\$${product.price}'),
                    onTap: () {
                      // TODO: Navigate to product details
                    },
                  );
                },
              );
            case ProductStatus.failure:
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Error: ${state.errorMessage}',
                      style: TextStyle(color: Colors.red),
                    ),
                    SizedBox(height: 16.h),
                    ElevatedButton(
                      onPressed: () {
                        context.read<ProductBloc>().add(const LoadProducts());
                      },
                      child: const Text('Retry'),
                    ),
                  ],
                ),
              );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: Navigate to add product screen
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
