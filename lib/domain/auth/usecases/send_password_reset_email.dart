import 'package:dartz/dartz.dart';
import 'package:ecommerceapp/core/usecase/usecase.dart';
import 'package:ecommerceapp/domain/auth/repository/auth.dart';
import 'package:ecommerceapp/service_locator.dart';

class SendPasswordResetEmailUseCase implements UseCase<Either, String> {
  @override
  Future<Either> call({String? params}) async {
    return await sl<AuthRepository>().sendPasswordResetEmail(params!);
  }
}
