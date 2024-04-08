import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HompRepo {
  Future<Either<Failure, List<BookModel>>> fetshBestSellerBooks();
  Future<Either<Failure, List<BookModel>>> fetshFeaturedBooks();
}
