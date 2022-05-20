import 'package:flutter/material.dart';
import "ShopBottomNavigator.dart";

void main() {
  runApp(const Store());
}

class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
              "فروشگاه",
            style: TextStyle(color: Colors.black45,fontFamily: "Vazir"),
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back,
          color: Colors.black45,),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            IconButton(
                icon: const Icon(
                    Icons.map,
                    color:Colors.black45
                ), onPressed: () {  },)
          ],
        ),

        body:
        Padding(
          padding: const EdgeInsets.all(15),
          child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 15,
              children: List.generate(10, (int position) => generateItem()),
          ),
        ),


        bottomNavigationBar: const ShopBottomNavigator(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {  },
          backgroundColor: Colors.red[900],

          child: Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

Card generateItem(){
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.elliptical(30,30))
    ),
    elevation: 4,
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 90,
            width: 90,
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGFJy6U6JpqHroN4aEQZJzRz1a7QDDBFUSXA&usqp=CAU"),
          ),
          Text(
            "قیمت",
         style: TextStyle(
           fontFamily: "Vazir",
           color: Colors.red[700],
           fontSize: 14.0
         ),
          ),
          Text(
            "عنوان",
            style: TextStyle(
                fontFamily: "Vazir",
                color: Color(0xff575e67),
                fontSize: 14.0
            ),
          )
        ],
      ),
    ),
  );
}