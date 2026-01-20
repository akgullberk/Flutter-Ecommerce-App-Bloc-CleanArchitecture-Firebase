import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:ecommerceapp/data/product/models/product.dart';
import 'package:ecommerceapp/domain/product/entity/product.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class ProductFirebaseService {
  Future<Either> getTopSelling();
  Future<Either> getNewIn();
  Future<Either> getProductsByCategoryId(String categoryId);
  Future<Either> getProductsByTitle(String title);
  Future<Either> addOrRemoveFavoriteProduct(ProductEntity product);

  
}

class ProductFirebaseServiceImpl extends ProductFirebaseService {
  
  @override
  Future < Either > getTopSelling() async {
    try {
      var returnedData = await FirebaseFirestore.instance.collection(
        'Products'
      ).where(
        'salesNumber',
        isGreaterThanOrEqualTo: 20
      ).get();
      
      // DEBUG: İlk ürünün categoryId'sini kontrol et
      if (returnedData.docs.isNotEmpty) {
        var firstProduct = returnedData.docs.first.data();
        print('🔎 DEBUG - İlk ürün bilgileri:');
        print('   Ürün adı: ${firstProduct['title']}');
        print('   CategoryId: ${firstProduct['categoryId']}');
        print('   CategoryId tipi: ${firstProduct['categoryId'].runtimeType}');
      }
      
      return Right(returnedData.docs.map((e) => e.data()).toList());
    } catch (e) {
      return const Left(
        'Please try again'
      );
    }
  }
  
  @override
  Future<Either> getNewIn() async {
     try {
      var returnedData = await FirebaseFirestore.instance.collection(
        'Products'
      ).where(
        'createdDate',
        isGreaterThanOrEqualTo: DateTime(2024,07,25)
      ).get();
      return Right(returnedData.docs.map((e) => e.data()).toList());
    } catch (e) {
      return const Left(
        'Please try again'
      );
    }
  }
  
  @override
  Future<Either> getProductsByCategoryId(String categoryId) async {
     try {
      print('🔍 Aranan CategoryId: $categoryId');
      var returnedData = await FirebaseFirestore.instance.collection(
        'Products'
      ).where(
        'categoryId',
        isEqualTo: categoryId
      ).get();
      print('📦 Bulunan Ürün Sayısı: ${returnedData.docs.length}');
      if (returnedData.docs.isNotEmpty) {
        print('🏷️ İlk ürün categoryId: ${returnedData.docs.first.data()['categoryId']}');
      }
      return Right(returnedData.docs.map((e) => e.data()).toList());
    } catch (e) {
      print('❌ Hata: $e');
      return const Left(
        'Please try again'
      );
    }
  }

  @override
  Future<Either> getProductsByTitle(String title) async {
     try {
      // Tüm ürünleri çek
      var returnedData = await FirebaseFirestore.instance.collection(
        'Products'
      ).get();
      
      // İstemci tarafında filtreleme yap (case-insensitive)
      var filteredProducts = returnedData.docs.where((doc) {
        var productTitle = doc.data()['title'].toString().toLowerCase();
        var searchTitle = title.toLowerCase();
        return productTitle.contains(searchTitle);
      }).toList();
      
      return Right(filteredProducts.map((e) => e.data()).toList());
    } catch (e) {
      return const Left(
        'Please try again'
      );
    }
  }

  @override
  Future < Either > addOrRemoveFavoriteProduct(ProductEntity product) async {
    try {
      var user = FirebaseAuth.instance.currentUser;
      var products = await FirebaseFirestore.instance.collection(
        "Users"
      ).doc(user!.uid).collection('Favorites').where(
        'productId', isEqualTo: product.productId
      ).get();

      if (products.docs.isNotEmpty) {
        await products.docs.first.reference.delete();
        return const Right(false);
      } else {
        await FirebaseFirestore.instance.collection(
          "Users"
        ).doc(user.uid).collection('Favorites').add(
          product.fromEntity().toMap()
        );
        return const Right(true);
      }

    } catch (e) {
      return const Left(
        'Please try again'
      );
    }
  }




}