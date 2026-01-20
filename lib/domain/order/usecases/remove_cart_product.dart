import 'package:dartz/dartz.dart';
import 'package:ecommerceapp/core/usecase/usecase.dart';
import 'package:ecommerceapp/domain/order/repository/order.dart';
import 'package:ecommerceapp/service_locator.dart';

class RemoveCartProductUseCase implements UseCase<Either,String> {
  @override
  Future<Either> call({String ? params}) async {
    return sl<OrderRepository>().removeCartProduct(params!);
  }

}
