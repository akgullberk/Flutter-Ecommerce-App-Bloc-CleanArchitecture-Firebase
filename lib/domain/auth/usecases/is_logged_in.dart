import 'package:ecommerceapp/core/usecase/usecase.dart';
import 'package:ecommerceapp/domain/auth/repository/auth.dart';
import 'package:ecommerceapp/service_locator.dart';

class IsLoggedInUseCase implements UseCase<bool,dynamic> {

  @override
  Future<bool> call({params}) async {
    return await sl<AuthRepository>().isLoggedIn();
  }

}
