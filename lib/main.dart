import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:remote_config_example/services/firebase_remote_config_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseRemoteConfigServices.initRemoteConfigFunction();
  runApp(const FruitVeggieApp());
}

class FruitVeggieApp extends StatelessWidget {
  const FruitVeggieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //debug red line state false
      title: 'Fruit & Veggie Store',
      home: FruitVeggieHomePage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class FruitVeggieHomePage extends StatelessWidget {
  final List<String> fruits = [
    'Apple',
    'Banana',
    'Orange',
    'Strawberry',
    'Grapes',
    'Pineapple'
  ];
  final List<String> veggies = ['Carrot', 'Potato', 'Tomato', 'Cucumber'];

  final List<Map<String, dynamic>> gridItems = [
    {
      'name': 'Apple',
      'image':
          'https://www.medikalakademi.com.tr/wp-content/uploads/2021/03/elma-fayda-meyve-apple-2.jpg'
    },
    {
      'name': 'Banana',
      'image':
          'https://www.ufuktarim.com/imaj/blog/sera-muz-yetistiriciligi.jpg'
    },
    {
      'name': 'Orange',
      'image':
          'https://www.gurmar.com.tr/images/thumbs/0011308_portakal-kg_510.jpeg'
    },
    {
      'name': 'Strawberry',
      'image':
          'https://www.anadolununozu.com/img/products/cilek_01.01.2023_6f46423.jpg'
    },
    {
      'name': 'Apple',
      'image':
          'https://www.medikalakademi.com.tr/wp-content/uploads/2021/03/elma-fayda-meyve-apple-2.jpg'
    },
    {
      'name': 'Banana',
      'image':
          'https://www.ufuktarim.com/imaj/blog/sera-muz-yetistiriciligi.jpg'
    },
    {
      'name': 'Orange',
      'image':
          'https://www.gurmar.com.tr/images/thumbs/0011308_portakal-kg_510.jpeg'
    },
    {
      'name': 'Strawberry',
      'image':
          'https://www.anadolununozu.com/img/products/cilek_01.01.2023_6f46423.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //Container appBar widget
            height: 200,
            decoration: const BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25)),
            ),
            child: const SearchBarWidget(),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Categories'.toUpperCase(),
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          // Categories List
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...fruits.map((fruit) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 126, 191, 128),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.shop),
                              Text(fruit),
                            ],
                          ))),
                    )),
              ],
            ),
          ),
          //Discount Banner
          Visibility(
            //widget visible change - with remote config
            visible: FirebaseRemoteConfigServices.widgetActivateKey,
            child: Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(20)),
              margin: const EdgeInsets.all(16),
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Center(
                    child: Text(
                      'Discount! Buy 1 Get 1 Free!',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image.network(
                    'https://thumbs.dreamstime.com/b/discount-red-rubber-stamp-over-white-background-88000109.jpg',
                    height: 70,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Fruits'.toUpperCase(),
              style: const TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          // GridView List
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: gridItems.length,
              itemBuilder: (context, index) {
                final item = gridItems[index];
                return Card(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Meyvenin resmi
                      Image.network(
                        item['image'],
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                      // Meyvenin adı
                      Text(
                        item['name'],
                        style: const TextStyle(fontSize: 18),
                      ),
                      // Sepete ekleme butonu
                      ElevatedButton(
                        onPressed: () {
                          print('${item['name']} added to cart');
                        },
                        child: const Text('Add to Cart'),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
          width: 350,
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: const Row(children: [
            Icon(Icons.search),
            SizedBox(width: 10.0),
            Expanded(
                child: TextField(
                    decoration: InputDecoration(
              hintText: 'Search your fruit',
              border: InputBorder.none,
            )))
          ]))
    ]);
  }
}
