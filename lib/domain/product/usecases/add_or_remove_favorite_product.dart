import 'package:dartz/dartz.dart';
import 'package:ecommerceapp/core/usecase/usecase.dart';
import 'package:ecommerceapp/domain/product/entity/product.dart';
import 'package:ecommerceapp/domain/product/repository/product.dart';
import 'package:ecommerceapp/service_locator.dart';

class AddOrRemoveFavoriteProductUseCase implements UseCase<Either,ProductEntity> {

  @override
  Future<Either> call({ProductEntity? params}) async {
    return await sl<ProductRepository>().addOrRemoveFavoriteProduct(params!);
  }

}
