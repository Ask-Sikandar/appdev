import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'dart:convert';
import 'model.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  Uri url = Uri.parse('https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline');

  Future<List<APIDataModel>> fetchData() async {
    http.Response response = await http.get(url);
    // print(jsonDecode(response.body).runtimeType);
    if(response.statusCode == 200) {
      final list = jsonDecode(response.body);
      List<APIDataModel> myList = list.map<APIDataModel>((e) => APIDataModel.fromJson(e)).toList();
      print(myList.runtimeType);
      return myList;
    } else {
      throw Exception('Error Occured while fetching data');
    }
  }


  Widget BottomSheetWidget(String imageURL) {
    return Container(
      child: Column(
        children: [
          AspectRatio(aspectRatio: 5/3,
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            child: Image.network(imageURL),
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<APIDataModel>>(
        future: fetchData(),
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(child: const Text('Error while fetching data'));
            } else {
              List<APIDataModel> list = snapshot.data!;
              return Center(
                child: ListView(

                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 30),
                  children: [
                    for(APIDataModel i in list)
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          ), context: context, builder: (BuildContext context){
                            return BottomSheetWidget(i.imageLink!);
                          }
                          );
                        },
                        child: Card(
                          elevation: 12.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network(i.imageLink!,
                              width: 30,),
                              SizedBox(
                                width: 70,
                                  height: 20,
                                  child: Text(i.name!, maxLines: 2)),
                              Text('\$ ${i.price}')
                            ],
                          ),
                        ),
                      )
                  ],
                ),
              );
            }
          }
      )
    );
  }
}
