import 'package:dartz/dartz.dart';
import 'package:e_commerce/Featcher/Auth/Data/LocalDataRepo/authentication_local_reposiotory.dart';
import 'package:e_commerce/Featcher/Auth/Data/RemoteDataRepo/auithenticiation_remote_repository.dart';
import 'package:e_commerce/Featcher/Auth/Data/Repository/authentication_repository.dart';
import 'package:e_commerce/core/error/failures.dart';
import 'package:http/http.dart' as http;

class SignInFunctions{

  AuthRepository _authLocalRepository = AuthenticationLocalRepository() ;
  AuthRepository _authRemoteRepository = AuthenticationRemoteRepository() ;

 Future<Either<http.Response, Failure>>  logIn() async{

   return await _authRemoteRepository.signIn();

  }

}