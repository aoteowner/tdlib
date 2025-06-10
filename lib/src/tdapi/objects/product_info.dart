part of '../tdapi.dart';

class ProductInfo extends TdObject {

  /// Contains information about a product that can be paid with invoice
  const ProductInfo({
    required this.title,
    required this.description,
    this.photo,
  });
  
  /// [title] Product title
  final String title;

  /// [description] Product description
  final FormattedText description;

  /// [photo] Product photo; may be null
  final Photo? photo;
  
  /// Parse from a json
  factory ProductInfo.fromJson(Map<String, dynamic> json) => ProductInfo(
    title: json['title'],
    description: FormattedText.fromJson(json['description']),
    photo: json['photo'] == null ? null : Photo.fromJson(json['photo']),
  );
  
  
  @override
  Map<String, dynamic> toJson([dynamic extra]) {
    return {
      "@type": CONSTRUCTOR,
      "title": title,
      "description": description.toJson(),
      "photo": photo?.toJson(),
    };
  }
  
  ProductInfo copyWith({
    String? title,
    FormattedText? description,
    Photo? photo,
  }) => ProductInfo(
    title: title ?? this.title,
    description: description ?? this.description,
    photo: photo ?? this.photo,
  );

  static const CONSTRUCTOR = 'productInfo';
  
  @override
  String getConstructor() => CONSTRUCTOR;
}
