import 'package:dartz/dartz.dart';
import 'package:ecommerceapp/core/usecase/usecase.dart';
import 'package:ecommerceapp/data/auth/models/user_signin_req.dart';
import 'package:ecommerceapp/domain/auth/repository/auth.dart';
import 'package:ecommerceapp/service_locator.dart';

class SigninUseCase implements UseCase<Either, UserSigninReq> {

  @override
  Future<Either> call({UserSigninReq ? params}) async {
    return await sl<AuthRepository>().signin(params!);
  }
}