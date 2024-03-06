import 'package:flutter/material.dart';
import 'model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class CatsPage extends StatefulWidget {
  const CatsPage({super.key});

  @override
  State<CatsPage> createState() => _CatsPageState();
}

class _CatsPageState extends State<CatsPage> {



  Future<List<Photo>> fetchData() async {
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    if(response.statusCode == 200) {
      print(jsonDecode(response.body).runtimeType);
      List<Photo> list = jsonDecode(response.body).map((e) => Photo.fromJson(e)).toList();


      return list;
    } else {
      throw Exception('Failed to load products');
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FutureBuilder(future: fetchData(), builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return const Center(
                child: Text('Error occured while fetching data'),
              );
            } else {
              List<Photo> photos = snapshot.data!;
              return ListView(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                children: <Widget>[
                  for(var photo in photos)
                    Card(
                      child: Image.network(photo.url)
                    )
                ],
              );
            }
          })
        ],
      )
    );
  }
}
