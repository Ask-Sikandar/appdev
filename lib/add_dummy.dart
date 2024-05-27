import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';

Future<void> main() async {
  // Initialize Flutter bindings
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp();

  // Get a Firestore instance
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  // Add dummy data to Firestore
  await addDummyData(firestore);
}

Future<void> addDummyData(FirebaseFirestore firestore) async {
  // Define dummy data
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Product 1',
      'categories': {
        'Category 1': {
          'subcategories': {
            'Sub-Category 1': {},
            'Sub-Category 2': {},
            'Sub-Category 3': {},
          },
        },
        'Category 2': {
          'subcategories': {
            'Sub-Category 1': {},
            'Sub-Category 2': {},
            'Sub-Category 3': {},
          },
        },
      },
    },
    {
      'name': 'Product 2',
      'categories': {
        'Category 1': {
          'subcategories': {
            'Sub-Category 1': {},
            'Sub-Category 2': {},
            'Sub-Category 3': {},
          },
        },
        'Category 2': {
          'subcategories': {
            'Sub-Category 1': {},
            'Sub-Category 2': {},
            'Sub-Category 3': {},
          },
        },
      },
    },
    {
      'name': 'Product 3',
      'categories': {
        'Category 1': {
          'subcategories': {
            'Sub-Category 1': {},
            'Sub-Category 2': {},
            'Sub-Category 3': {},
          },
        },
        'Category 2': {
          'subcategories': {
            'Sub-Category 1': {},
            'Sub-Category 2': {},
            'Sub-Category 3': {},
          },
        },
      },
    },
  ];

  // Add products to Firestore
  for (var product in products) {
    final productDoc = firestore.collection('products').doc(product['name']);
    await productDoc.set({'name': product['name']});

    for (var category in product['categories'].entries) {
      final categoryDoc = productDoc.collection('categories').doc(category.key);
      await categoryDoc.set({});

      for (var subcategory in category.value['subcategories'].entries) {
        final subcategoryDoc = categoryDoc.collection('subcategories').doc(subcategory.key);
        await subcategoryDoc.set({});
      }
    }
  }

  print('Dummy data added successfully!');
}
