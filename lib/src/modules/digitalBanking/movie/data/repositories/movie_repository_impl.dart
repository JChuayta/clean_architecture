import 'package:digital_banking/src/core/error/exceptions.dart';

import '../datasources/movie_local_data_sources.dart';
import '../datasources/movie_remote_data_sources.dart';
import '../../domain/entities/movie.dart';
import '../../domain/repositories/movie_repository.dart';

typedef Future<Movie> _movieLocalOrRemote();

class MovieRepositoryImpl implements MovieRepository {
  final MovieRemoteDataSource remoteDataSource;
  final MovieLocalDataSource localDataSource;

  MovieRepositoryImpl({
    this.remoteDataSource,
    this.localDataSource,
  });

  @override
  Future<Movie> getMovie() async =>
      await _getMovie(() => remoteDataSource.getMovie());

  Future<Movie> _getMovie(_movieLocalOrRemote movieLocalOrRemote) async {
    try {
      final remoteMovie = await movieLocalOrRemote();
      localDataSource.cacheMovie(remoteMovie);
      return remoteMovie;
    } on ServerException {
      // return ServerFailure();
    }
  }
}
