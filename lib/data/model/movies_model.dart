
class MoviesModelItems {

  String? id;
  String? rank;
  String? rankUpDown;
  String? title;
  String? fullTitle;
  String? year;
  String? image;
  String? crew;
  String? imDbRating;
  String? imDbRatingCount;

  MoviesModelItems({
    this.id,
    this.rank,
    this.rankUpDown,
    this.title,
    this.fullTitle,
    this.year,
    this.image,
    this.crew,
    this.imDbRating,
    this.imDbRatingCount,
  });
  MoviesModelItems.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toString();
    rank = json['rank']?.toString();
    rankUpDown = json['rankUpDown']?.toString();
    title = json['title']?.toString();
    fullTitle = json['fullTitle']?.toString();
    year = json['year']?.toString();
    image = json['image']?.toString();
    crew = json['crew']?.toString();
    imDbRating = json['imDbRating']?.toString();
    imDbRatingCount = json['imDbRatingCount']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['rank'] = rank;
    data['rankUpDown'] = rankUpDown;
    data['title'] = title;
    data['fullTitle'] = fullTitle;
    data['year'] = year;
    data['image'] = image;
    data['crew'] = crew;
    data['imDbRating'] = imDbRating;
    data['imDbRatingCount'] = imDbRatingCount;
    return data;
  }
}

class MoviesModel {

  List<MoviesModelItems?>? items;
  String? errorMessage;

  MoviesModel({
    this.items,
    this.errorMessage,
  });
  MoviesModel.fromJson(Map<String, dynamic> json) {
    if (json['items'] != null) {
      final v = json['items'];
      final arr0 = <MoviesModelItems>[];
      v.forEach((v) {
        arr0.add(MoviesModelItems.fromJson(v));
      });
      items = arr0;
    }
    errorMessage = json['errorMessage']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    if (items != null) {
      final v = items;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['items'] = arr0;
    }
    data['errorMessage'] = errorMessage;
    return data;
  }
}
