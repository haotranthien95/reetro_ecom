import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product extends Equatable {
  final String id;
  final String name;
  final String description;
  final double price;
  final List<String> images;
  final Map<String, dynamic> attributes;
  final bool isAvailable;
  final DateTime createdAt;
  final DateTime updatedAt;

  const Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.images,
    required this.attributes,
    required this.isAvailable,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
        description,
        price,
        images,
        attributes,
        isAvailable,
        createdAt,
        updatedAt,
      ];
}
