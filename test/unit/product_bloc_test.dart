import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reetro_ecom/features/product/presentation/bloc/product_bloc.dart';

void main() {
  group('ProductBloc', () {
    late ProductBloc productBloc;

    setUp(() {
      productBloc = ProductBloc();
    });

    tearDown(() {
      productBloc.close();
    });

    test('initial state is ProductState.initial', () {
      expect(productBloc.state, const ProductState());
    });

    blocTest<ProductBloc, ProductState>(
      'emits [loading, success] when LoadProducts is added',
      build: () => productBloc,
      act: (bloc) => bloc.add(const LoadProducts()),
      expect: () => [
        const ProductState(status: ProductStatus.loading),
        const ProductState(status: ProductStatus.success),
      ],
    );

    blocTest<ProductBloc, ProductState>(
      'emits [loading, failure] when LoadProducts fails',
      build: () => productBloc,
      act: (bloc) => bloc.add(const LoadProducts()),
      expect: () => [
        const ProductState(status: ProductStatus.loading),
        const ProductState(
          status: ProductStatus.failure,
          errorMessage: 'Exception: Not implemented',
        ),
      ],
    );
  });
}
