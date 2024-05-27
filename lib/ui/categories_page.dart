import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../Providers/provider.dart';
import '../Providers/provider.dart';

class CategoriesPage extends ConsumerWidget {
  final String item;

  CategoriesPage({required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoriesAsyncValue = ref.watch(categoriesProvider(item));

    return Scaffold(
      appBar: AppBar(
        title: Text('Categories for $item'),
      ),
      body: categoriesAsyncValue.when(
        data: (categories) {
          return ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories.keys.elementAt(index);
              return ExpansionTile(
                title: Text(category),
                children: [
                  Consumer(
                    builder: (context, watch, child) {
                      final subCategoriesAsyncValue = ref.watch(subCategoriesProvider({'product': item, 'category': category}));
                      return subCategoriesAsyncValue.when(
                        data: (subCategories) {
                          return ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: subCategories.length,
                            itemBuilder: (context, subIndex) {
                              final subCategory = subCategories.keys.elementAt(subIndex);
                              return ListTile(
                                title: Text(subCategory),
                                subtitle: Text('Product details for $subCategory'),
                              );
                            },
                          );
                        },
                        loading: () => Center(child: CircularProgressIndicator()),
                        error: (err, stack) => Center(child: Text('Error: $err')),
                      );
                    },
                  ),
                ],
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
