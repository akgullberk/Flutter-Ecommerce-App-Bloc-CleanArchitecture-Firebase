import 'package:ecommerceapp/data/auth/repository/auth_repository_impl.dart';
import 'package:ecommerceapp/data/auth/sources/auth_firebase_service.dart';
import 'package:ecommerceapp/data/category/repository/category.dart';
import 'package:ecommerceapp/data/category/sources/category_firebase_service.dart';
import 'package:ecommerceapp/data/order/repository/order.dart';
import 'package:ecommerceapp/data/order/sources/order_firebase_service.dart';
import 'package:ecommerceapp/data/product/repository/product.dart';
import 'package:ecommerceapp/data/product/sources/product_firebase_service.dart';
import 'package:ecommerceapp/domain/auth/repository/auth.dart';
import 'package:ecommerceapp/domain/auth/usecases/get_ages.dart';
import 'package:ecommerceapp/domain/auth/usecases/get_user.dart';
import 'package:ecommerceapp/domain/auth/usecases/is_logged_in.dart';
import 'package:ecommerceapp/domain/auth/usecases/send_password_reset_email.dart';
import 'package:ecommerceapp/domain/auth/usecases/signin.dart';
import 'package:ecommerceapp/domain/auth/usecases/signup.dart';
import 'package:ecommerceapp/domain/category/repository/category.dart';
import 'package:ecommerceapp/domain/category/usecases/add_or_remove_favorite_product.dart';
import 'package:ecommerceapp/domain/category/usecases/get_categories.dart';
import 'package:ecommerceapp/domain/order/repository/order.dart';
import 'package:ecommerceapp/domain/order/usecases/add_to_cart.dart';
import 'package:ecommerceapp/domain/order/usecases/get_cart_products.dart';
import 'package:ecommerceapp/domain/order/usecases/remove_cart_product.dart';
import 'package:ecommerceapp/domain/product/repository/product.dart';
import 'package:ecommerceapp/domain/product/usecases/get_new_in.dart';
import 'package:ecommerceapp/domain/product/usecases/get_products_by_categoryId.dart';
import 'package:ecommerceapp/domain/product/usecases/get_products_by_title.dart';
import 'package:ecommerceapp/domain/product/usecases/get_top_selling.dart';
import 'package:ecommerceapp/domain/product/usecases/is_favorite.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  // Services

  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceImpl());
  sl.registerSingleton<CategoryFirebaseService>(
    CategoryFirebaseServiceImpl()
  );
  sl.registerSingleton<ProductFirebaseService>(
    ProductFirebaseServiceImpl()
  );
  sl.registerSingleton<OrderFirebaseService>(
    OrderFirebaseServiceImpl()
  );

  




  // Repositories

  sl.registerSingleton<AuthRepository>(AuthRepositoryImpl());
  sl.registerSingleton<CategoryRepository>(
    CategoryRepositoryImpl()
  );
  sl.registerSingleton<ProductRepository>(
    ProductRepositoryImpl()
  );
  sl.registerSingleton<OrderRepository>(
    OrderRepositoryImpl()
  );



  // Usecases

  sl.registerSingleton<SignupUseCase>(SignupUseCase());
  sl.registerSingleton<GetAgesUseCase>(GetAgesUseCase());
  sl.registerSingleton<SigninUseCase>(SigninUseCase());
  sl.registerSingleton<SendPasswordResetEmailUseCase>(
    SendPasswordResetEmailUseCase(),
  );
  sl.registerSingleton<GetUserUseCase>(
    GetUserUseCase()
  );
  sl.registerSingleton<GetCategoriesUseCase>(
    GetCategoriesUseCase()
  );
  sl.registerSingleton<GetTopSellingUseCase>(
    GetTopSellingUseCase()
  );
  sl.registerSingleton<GetNewInUseCase>(
    GetNewInUseCase()
  );
  sl.registerSingleton<GetProductsByCategoryIdUseCase>(
    GetProductsByCategoryIdUseCase()
  );
  sl.registerSingleton<GetProductsByTitleUseCase>(
    GetProductsByTitleUseCase()
  );
  sl.registerSingleton<IsLoggedInUseCase>(
    IsLoggedInUseCase()
  );
  sl.registerSingleton<AddOrRemoveFavoriteProductUseCase>(
    AddOrRemoveFavoriteProductUseCase()
  );
  sl.registerSingleton<AddToCartUseCase>(
    AddToCartUseCase()
  );
  sl.registerSingleton<IsFavoriteUseCase>(
    IsFavoriteUseCase()
  );
  sl.registerSingleton<GetCartProductsUseCase>(
    GetCartProductsUseCase()
  );
  sl.registerSingleton<RemoveCartProductUseCase>(
    RemoveCartProductUseCase()
  );










}
