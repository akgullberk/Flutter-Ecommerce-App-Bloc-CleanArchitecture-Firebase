import 'package:ecommerceapp/core/usecase/usecase.dart';
import 'package:ecommerceapp/domain/product/repository/product.dart';
import 'package:ecommerceapp/service_locator.dart';

class IsFavoriteUseCase implements UseCase<bool,String> {

  @override
  Future<bool> call({String ? params}) async {
    return await sl<ProductRepository>().isFavorite(params!);
  }

}
