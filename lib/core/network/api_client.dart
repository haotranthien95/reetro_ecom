import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:reetro_ecom/features/product/domain/models/product.dart';
import 'package:retrofit/retrofit.dart';
import '../config/app_config.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient {
  @factoryMethod
  factory ApiClient(Dio dio) = _ApiClient;

  @GET('/products')
  Future<HttpResponse<List<Product>>> getProducts();

  @GET('/products/{id}')
  Future<HttpResponse<Product>> getProduct(@Path('id') String id);
}

@module
abstract class NetworkModule {
  @singleton
  Dio get dio => Dio(BaseOptions(
        baseUrl: AppConfig.apiBaseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      ))
        ..interceptors.addAll([
          LogInterceptor(
            requestBody: true,
            responseBody: true,
          ),
        ]);
}
