import 'package:dartz/dartz.dart';
import 'package:ecommerceapp/core/usecase/usecase.dart';
import 'package:ecommerceapp/data/order/models/add_to_card_req.dart';
import 'package:ecommerceapp/domain/order/repository/order.dart';
import 'package:ecommerceapp/service_locator.dart';

class AddToCartUseCase implements UseCase<Either,AddToCartReq> {
  @override
  Future<Either> call({AddToCartReq ? params}) async {
    return sl<OrderRepository>().addToCart(params!);
  }

}
