import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../service/firestore_service.dart';

// Create an instance of FirestoreService
final firestoreServiceProvider = Provider<FirestoreService>((ref) => FirestoreService());

// Provider to fetch categories
final categoriesProvider = FutureProvider.family<Map<String, dynamic>, String>((ref, product) async {
  final firestoreService = ref.watch(firestoreServiceProvider);
  return await firestoreService.fetchCategories(product);
});

// Provider to fetch sub-categories
final subCategoriesProvider = FutureProvider.family<Map<String, dynamic>, Map<String, String>>((ref, params) async {
  final firestoreService = ref.watch(firestoreServiceProvider);
  return await firestoreService.fetchSubCategories(params['product']!, params['category']!);
});
