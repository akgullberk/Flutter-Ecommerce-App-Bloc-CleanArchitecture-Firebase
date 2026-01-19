import 'package:dartz/dartz.dart';
import 'package:ecommerceapp/core/usecase/usecase.dart';
import 'package:ecommerceapp/domain/product/repository/product.dart';
import 'package:ecommerceapp/service_locator.dart';

class GetProductsByCategoryIdUseCase implements UseCase<Either,String> {

  @override
  Future<Either> call({String? params}) async {
    return await sl<ProductRepository>().getProductsByCategoryId(params!);
  }

}
