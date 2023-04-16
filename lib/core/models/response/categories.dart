import 'dart:convert';

class Categories {
  final List<Categorie> categories;
  Categories({
    required this.categories,
  });

  Categories copyWith({
    List<Categorie>? categories,
  }) {
    return Categories(
      categories: categories ?? this.categories,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'categories': categories.map((x) => x.toJson()).toList(),
    };
  }

  factory Categories.fromJson(Map<String, dynamic> map) {
    return Categories(
        categories: List<Categorie>.from(
            map['categories']?.map((x) => Categories.fromJson(x)))
        // categories: List<Categorie>.from(
        //   (map['categories'] as List<int>).map<Categorie>(
        //     (x) => Categorie.fromMap(x as Map<String, dynamic>),
        //   ),
        // ),
        );
  }

  @override
  String toString() => 'Categories(categories: $categories)';

  @override
  int get hashCode => categories.hashCode;
}

class Categorie {
  final String idCategory;
  final String strCategory;
  final String strCategoryThumb;
  final String strCategoryDescription;
  Categorie({
    required this.idCategory,
    required this.strCategory,
    required this.strCategoryThumb,
    required this.strCategoryDescription,
  });

  Categorie copyWith({
    String? idCategory,
    String? strCategory,
    String? strCategoryThumb,
    String? strCategoryDescription,
  }) {
    return Categorie(
      idCategory: idCategory ?? this.idCategory,
      strCategory: strCategory ?? this.strCategory,
      strCategoryThumb: strCategoryThumb ?? this.strCategoryThumb,
      strCategoryDescription:
          strCategoryDescription ?? this.strCategoryDescription,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idCategory': idCategory,
      'strCategory': strCategory,
      'strCategoryThumb': strCategoryThumb,
      'strCategoryDescription': strCategoryDescription,
    };
  }

  factory Categorie.fromMap(Map<String, dynamic> map) {
    return Categorie(
      idCategory: map['idCategory'] as String,
      strCategory: map['strCategory'] as String,
      strCategoryThumb: map['strCategoryThumb'] as String,
      strCategoryDescription: map['strCategoryDescription'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Categorie.fromJson(String source) =>
      Categorie.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Categorie(idCategory: $idCategory, strCategory: $strCategory, strCategoryThumb: $strCategoryThumb, strCategoryDescription: $strCategoryDescription)';
  }

  @override
  bool operator ==(covariant Categorie other) {
    if (identical(this, other)) return true;

    return other.idCategory == idCategory &&
        other.strCategory == strCategory &&
        other.strCategoryThumb == strCategoryThumb &&
        other.strCategoryDescription == strCategoryDescription;
  }

  @override
  int get hashCode {
    return idCategory.hashCode ^
        strCategory.hashCode ^
        strCategoryThumb.hashCode ^
        strCategoryDescription.hashCode;
  }
}
