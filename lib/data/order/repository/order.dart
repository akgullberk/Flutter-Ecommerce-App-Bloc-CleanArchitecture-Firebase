import 'package:dartz/dartz.dart';
import 'package:ecommerceapp/data/order/models/add_to_card_req.dart';
import 'package:ecommerceapp/data/order/sources/order_firebase_service.dart';
import 'package:ecommerceapp/domain/order/repository/order.dart';
import 'package:ecommerceapp/service_locator.dart';

class OrderRepositoryImpl extends OrderRepository {
  @override
  Future<Either> addToCart(AddToCartReq addToCartReq) async {
    return sl<OrderFirebaseService>().addToCart(addToCartReq);
  }


}