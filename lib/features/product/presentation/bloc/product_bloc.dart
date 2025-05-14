import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'product_event.dart';
part 'product_state.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(const ProductState()) {
    on<LoadProducts>(_onLoadProducts);
    on<LoadProductDetails>(_onLoadProductDetails);
  }

  Future<void> _onLoadProducts(
    LoadProducts event,
    Emitter<ProductState> emit,
  ) async {
    emit(state.copyWith(status: ProductStatus.loading));
    try {
      // TODO: Implement product loading logic
      emit(state.copyWith(status: ProductStatus.success));
    } catch (e) {
      emit(state.copyWith(
        status: ProductStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }

  Future<void> _onLoadProductDetails(
    LoadProductDetails event,
    Emitter<ProductState> emit,
  ) async {
    emit(state.copyWith(status: ProductStatus.loading));
    try {
      // TODO: Implement product details loading logic
      emit(state.copyWith(status: ProductStatus.success));
    } catch (e) {
      emit(state.copyWith(
        status: ProductStatus.failure,
        errorMessage: e.toString(),
      ));
    }
  }
}
