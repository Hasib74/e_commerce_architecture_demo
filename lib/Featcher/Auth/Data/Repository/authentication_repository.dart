import 'package:dartz/dartz.dart';
import 'package:e_commerce/core/error/failures.dart';
import 'package:http/http.dart' as http;

abstract class AuthRepository{
 Future<Either<http.Response , Failure >> signIn() ;
 Future<Either<http.Response , Failure >> signUp() ;
 Future<Either<http.Response , Failure >> passwordUpdate(String password) ;
 Future<Either<http.Response , Failure >> emailVerification(String email) ;
 Future<Either<http.Response , Failure >> phoneVerification(String num) ;
}