import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'product_model.dart';

class ProductCatalogue extends StatefulWidget {
  const ProductCatalogue({super.key});
  @override
  State<ProductCatalogue> createState() => _ProductCatalogueState();
}

class BottomSheetWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String price;
  final String desc;
  const BottomSheetWidget({required this.imageUrl, required this.title, required this.price, required this.desc});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 5/3,
          child: ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
            child: Image.network(
              fit: BoxFit.cover,
              repeat: ImageRepeat.repeatX,
              imageUrl,
            ),
          ),
        ),
        Container(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        Text(
                          title,
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("\$ ${price}")),
                  const SizedBox(height: 12),
                  Align(alignment: Alignment.centerLeft,child: Text(
                    desc,
                    maxLines: 2,)),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star),
                            SizedBox(
                              width: 8.0,
                            ),
                            Text('4.7'),
                          ],
                        ),
                    Row(
                      children: [
                        Text('12.96%'),
                        SizedBox(
                          width: 8.0,
                        ),
                        Icon(Icons.discount),
                      ],),


                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  )
                ],
              ),
            )
        ),

      ],
    );
  }
}

class _ProductCatalogueState extends State<ProductCatalogue> {
  final apiLink = Uri.parse("https://dummyjson.com/products");
  late Future<List<Products>> screenData;

  Future<List<Products>> fetchData() async {
    final response = await http.get(apiLink);
    print(response);
    if (response.statusCode == 200) {
      final jsonResponse = jsonDecode(response.body.toString())['products'] as List;
      print(jsonResponse);
      List<Products> products = jsonResponse.map((e) => Products.fromJson(e)).toList();

      return products;
    } else {
      throw Exception('Failed to load products');
    }
  }


  Widget makeCard(
      String imageURI,
      String Title,
      String Price,
      String Desc,
      ) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 10.0,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 4/2,
            child: Image.network(
              fit: BoxFit.cover,
              repeat: ImageRepeat.repeatX,
              imageURI,
              loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                if(loadingProgress == null) return child;
                else return const Center(child: CircularProgressIndicator());
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 12.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      Title,
                      textAlign: TextAlign.left,
                    ),
                    Row(
                      children: [
                        Text(Price, textAlign: TextAlign.right),
                        IconButton(onPressed: () {
                          showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                            ),
                              context: context, builder: (BuildContext context) {
                            return BottomSheetWidget(imageUrl: imageURI, title: Title, price: Price, desc: Desc
                            );
                          }
                          );
                        },
                            icon: const Icon(Icons.remove_red_eye_sharp)),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    Desc,
                    maxLines: 2,
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          // const SizedBox(
          //   height: 6.0,
          // ),
          const SizedBox(
            height: 10.0,
          )
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Products')),
        ),
        body: FutureBuilder<List<Products>>(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('Error Occured while fetching data'),
              );
            } else {
              List<Products> products = snapshot.data!;
              return ListView(
                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
                children: <Widget>[
                  for (var product in products)
                    makeCard(
                      product.thumbnail.toString(),
                      product.title,
                      product.price.toString(),
                      product.description.toString(),
                    ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}