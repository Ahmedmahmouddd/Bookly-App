import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, BookModel>> fetshNewestBooks();
  Future<Either<Failure, BookModel>> fetshFeaturedBooks(); 
  Future<Either<Failure, BookModel>> fetshSimilarBooks({required String category});
}
