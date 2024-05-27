import 'package:appdev/ui/product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Providers/provider.dart';

class Category3Page extends ConsumerWidget {
  final String product;
  final String category;

  Category3Page({required this.product, required this.category});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final subCategoriesAsyncValue = ref.watch(subCategoriesProvider({'product': product, 'category': category}));

    return Scaffold(
      appBar: AppBar(
        title: Text('Category 3 for $category'),
      ),
      body: subCategoriesAsyncValue.when(
        data: (subCategories) {
          return ListView.builder(
            itemCount: subCategories.length,
            itemBuilder: (context, index) {
              final subCategory = subCategories.keys.elementAt(index);
              return ListTile(
                title: Text(subCategory),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailsPage(product: product, category: category, subCategory: subCategory),
                    ),
                  );
                },
              );
            },
          );
        },
        loading: () => Center(child: CircularProgressIndicator()),
        error: (err, stack) => Center(child: Text('Error: $err')),
      ),
    );
  }
}
