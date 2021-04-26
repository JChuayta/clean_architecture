// To parse this JSON data, do
//
//     final movie = movieFromJson(jsonString);

// import 'dart:convert';

// List<Movie> movieFromJson(String str) => List<Movie>.from(json.decode(str).map((x) => Movie.fromJson(x)));

// String movieToJson(List<Movie> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Movie {
  bool adult;
  String backdropPath;
  // List<int> genreIds;
  int id;
  String originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  // DateTime releaseDate;
  String title;
  bool video;
  double voteAverage;
  int voteCount;

  Movie({
    this.adult,
    this.backdropPath,
    // this.genreIds,
    this.id,
    this.originalLanguage,
    this.originalTitle,
    this.overview,
    this.popularity,
    this.posterPath,
    // this.releaseDate,
    this.title,
    this.video,
    this.voteAverage,
    this.voteCount,
  });
}
