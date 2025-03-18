import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';

import '../models/product.dart';

class ProductService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _storage = FirebaseStorage.instance;

  Future<void> addProduct(Product product, File? imageFile) async {
    try {
      if (imageFile != null) {
        final imageUrl = await _uploadImage(imageFile);
        product.imageUrl = imageUrl;
      }
      await _firestore.collection('products').add(product.toMap());
    } catch (e) {
      debugPrint('Error adding product: $e');
    }
  }

  Future<void> updateProduct(Product product, File? imageFile) async {
    try {
      if (imageFile != null) {
        final imageUrl = await _uploadImage(imageFile);
        product.imageUrl = imageUrl;
      }
      await _firestore.collection('products').doc(product.id).update(product.toMap());
    } catch (e) {
      debugPrint('Error updating product: $e');
    }
  }

  Future<void> deleteProduct(String productId) async {
    try {
      await _firestore.collection('products').doc(productId).delete();
    } catch (e) {
      debugPrint('Error deleting product: $e');
    }
  }

  Stream<List<Product>> getProducts() {
    return _firestore.collection('products').snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => Product.fromMap(doc.data(), doc.id)).toList();
    });
  }

  Future<String> _uploadImage(File imageFile) async {
    try {
      final ref = _storage.ref().child('images/${DateTime.now().toString()}');
      await ref.putFile(imageFile);
      return await ref.getDownloadURL();
    } catch (e) {
      debugPrint('Error uploading image: $e');
      rethrow;
    }
  }

}