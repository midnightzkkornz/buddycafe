// found in the LICENSE file.

//import 'package:buddycafes/main.dart';
//import 'package:buddycafes/screens/result.dart';
import 'dart:html';

import 'package:flutter/material.dart';

import 'package:buddycafes/widget/search_widget.dart';
import 'package:buddycafes/models/cafe.dart';
import 'package:buddycafes/data/cafe_data.dart';


class MySearch extends StatefulWidget {
  
  //final Cafe cafe;
  
  // MySearch({
  //   Key? key, required this.cafe,
  // }) : super(key: key);

  int index = 0;

  Widget build(BuildContext context) => Scaffold(
    //bottomNavigationBar: buildBottomBar(),
    body: buildPages(),
  );

  Widget buildPages() {
    switch (index) {
      case 0:
        return MySearch();
      case 1:
        //return MyResult();
      default:
        return Container();
    }
  }

  @override
  MySearchState createState() => MySearchState();
}

class MySearchState extends State<MySearch> {
  
  late List<Cafe> cafes;
  String query = '';

  @override
  void initState() {
    super.initState();

    cafes = allCafes;
  }
  
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Searchig BuddyCafe!'), // heading text
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            buildSearch(), //search box..
            Expanded(
              child: ListView.builder(
                itemCount: cafes.length,
                itemBuilder: (context, index) {
                  final cafe = cafes[index];

                  return buildCafe(cafe);
                },
              ),
            ),
          ],
        ),
      );

  Widget buildSearch() => SearchWidget(
        text: query,
        hintText: 'Name or Type Animal Cafe',
        onChanged: searchCafe,
        
      );

  Widget buildCafe(Cafe cafe) => ListTile(
    
        onTap: () {
          //buildResults;
          // push to result..
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                // 10
                return buildResults(cafe);
              },
            ),
          );

        }, // click on result 
        leading: Image.network(
          cafe.petc_image,
          fit: BoxFit.cover,
          width: 50,
          height: 50,
        ),
        
        title: Text(cafe.petc_name),
        subtitle: Text(cafe.petc_open),
      );

  void searchCafe(String query) {
    final cafes = allCafes.where((cafe) {
      final titleLower = cafe.petc_name.toLowerCase();
      final authorLower = cafe.petc_type.toLowerCase();
      final searchLower = query.toLowerCase();

      return titleLower.contains(searchLower) ||
          authorLower.contains(searchLower);
    }).toList();

    setState(() {
      this.query = query;
      this.cafes = cafes;
    });
  }


  // @override
  // Widget buildResults(Cafe cafe) => Scaffold(
  //       appBar: AppBar(
  //         title: Text(cafe.petc_name),
  //       ),
  //       body: Center(
  //         child: Image.network(cafe.petc_image),

  //       ),
  //     );    

  // result page!!!
  @override
  Widget buildResults(Cafe cafe) => Scaffold(
        appBar: AppBar(
          title: Text(cafe.petc_name),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Text('\nName: ' + cafe.petc_name+'\n', style: const TextStyle(fontSize: 18),),

              SizedBox(
                height: 300,
                width: double.infinity,
                child: Image.network(cafe.petc_image),
              ),

              const SizedBox(
                height: 4,
              ),
              const Text('\n\n'),
              
              Expanded(
                child: Column(
                  children: [
                    Text('Information:' + cafe.petc_info +'\n', textAlign: TextAlign.center,),
                    Text('Open: ' + cafe.petc_open +'\n', textAlign: TextAlign.center,),
                    Text('Phone: ' + cafe.petc_phone_num +'\n', textAlign: TextAlign.center,),
                    Text('Location: ' + cafe.petc_location +'\n', textAlign: TextAlign.center,),
                    //Text()
                  ],
                ),
              ),
              
              //api? 

            ],
          ),
        ),
      );    


}