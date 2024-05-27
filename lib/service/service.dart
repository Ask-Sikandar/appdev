import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<List<String>> fetchProducts() async {
    QuerySnapshot querySnapshot = await _db.collection('products').get();
    return querySnapshot.docs.map((doc) => doc.id).toList();
  }

  Future<Map<String, dynamic>> fetchCategories(String product) async {
    DocumentSnapshot documentSnapshot = await _db.collection('categories').doc(product).get();
    return documentSnapshot.data() as Map<String, dynamic>;
  }

  Future<Map<String, dynamic>> fetchSubCategories(String product, String category) async {
    DocumentSnapshot documentSnapshot = await _db.collection('categories').doc(product).collection(category).doc('subcategories').get();
    return documentSnapshot.data() as Map<String, dynamic>;
  }
}
