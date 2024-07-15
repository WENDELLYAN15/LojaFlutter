import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final CollectionReference products = 
  FirebaseFirestore.instance.collection("produtos");

  Stream<QuerySnapshot> getProductsStream() {
    final getProductsStream = products.orderBy("name").snapshots();
    return getProductsStream;
  }
}