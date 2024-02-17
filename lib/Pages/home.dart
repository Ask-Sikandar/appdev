import 'package:flutter/material.dart';
import '../model/product.dart';
// import 'model/products_repository.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO: Add app bar (102)
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
                semanticLabel: 'menu',
              ),
              onPressed: () {
                print('Menu Button');
              },
            ),
            title: const Text('Shrine'),
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.search,
                  semanticLabel: 'search',
                ),
                onPressed: () {
                  print('Search Button');
                },
              ),
              IconButton(
                icon: const Icon(
                  Icons.filter,
                  semanticLabel: 'filter',
                ),
                onPressed: () {
                  print('Filter Button');
                },
              )
            ]
          // TODO: Add buttons and title (102)
        ),
        body: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(16.0),
          childAspectRatio: 8.0 / 9.0,
          // TODO: Build a grid of cards (102)
          children: _buildCard(context),
        )
    );
  }
  List<Product> products = mockProducts;
  List<Widget> _buildCard(BuildContext context) {
    return products.map((product) {
      return
        Card(
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 18.0 / 11.0,
              child: Image.asset('assets/diamond.png'),
            ),
             Padding(
              padding: EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(product.name),
                  SizedBox(height: 8.0),
                  Text('Secondary Text'),
                ],
              ),
            ),
          ],
        ),
      )
      ;
    }
    ).toList();
  }
}
