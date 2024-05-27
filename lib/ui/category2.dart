import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../Providers/provider.dart';
import 'category3.dart';

class Category2Page extends ConsumerWidget {
  final String item;

  Category2Page({required this.item});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categoriesAsyncValue = ref.watch(categoriesProvider(item));

    return Scaffold(
      appBar: AppBar(
        title: Text('Category 2 for $item'),
      ),
      body: categoriesAsyncValue.when(
        data: (categories) {
          return ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories.keys.elementAt(index);
              return ListTile(
                title: Text(category),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Category3Page(product: item, category: category),
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
