import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:reetro_ecom/features/product/presentation/bloc/product_bloc.dart';
import 'package:reetro_ecom/features/product/presentation/screens/product_list_screen.dart';

class MockProductBloc extends MockBloc<ProductEvent, ProductState>
    implements ProductBloc {}

void main() {
  late MockProductBloc mockProductBloc;

  setUp(() {
    mockProductBloc = MockProductBloc();
  });

  Widget createWidgetUnderTest() {
    return MaterialApp(
      home: BlocProvider.value(
        value: mockProductBloc,
        child: const ProductListScreen(),
      ),
    );
  }

  group('ProductListScreen', () {
    testWidgets('shows loading indicator when state is loading',
        (WidgetTester tester) async {
      whenListen(
        mockProductBloc,
        Stream.fromIterable([
          const ProductState(status: ProductStatus.loading),
        ]),
        initialState: const ProductState(),
      );

      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    });

    testWidgets('shows error message when state is failure',
        (WidgetTester tester) async {
      whenListen(
        mockProductBloc,
        Stream.fromIterable([
          const ProductState(
            status: ProductStatus.failure,
            errorMessage: 'Error message',
          ),
        ]),
        initialState: const ProductState(),
      );

      await tester.pumpWidget(createWidgetUnderTest());
      await tester.pump();

      expect(find.text('Error: Error message'), findsOneWidget);
      expect(find.byType(ElevatedButton), findsOneWidget);
    });
  });
}
