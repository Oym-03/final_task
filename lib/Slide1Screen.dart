// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'search.dart';
import 'drawer.dart';
import 'widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Side1Screen(),
      routes: {
        '/searchResult': (context) => SearchResultScreen(searchQuery: ''),
      },
    );
  }
}

class Side1Screen extends StatelessWidget {
  const Side1Screen({super.key});

  void _openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B0262),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: SafeArea(
          child: Container(
            color: const Color(0xFF2B0262),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Builder(
                  builder: (context) => IconButton(
                    icon: const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      _openDrawer(context); // Open the drawer on tap
                    },
                  ),
                ),
                const SizedBox(width: 20),
                InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: 250,
                    height: 40,
                    child: Row(
                      children: [
                        const SizedBox(width: 5),
                        Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(3.141),
                          child: const Icon(Icons.search,
                              color: Color(0xFF2B0262)),
                        ),
                        const SizedBox(width: 25),
                        const Text(
                          'Find what you want',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SearchScreen()),
                    );
                  },
                ),
                const SizedBox(width: 20),
                const Icon(
                  Icons.account_balance_wallet_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          const SizedBox(height: 20,),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 20),
                image('watch',84 , 105, purple: true),
                const SizedBox(width: 20),
                image('airbods',84,105, purple: true),
                const SizedBox(width: 20),
                image('laptop',84,105, purple: true),
                const SizedBox(width: 20),
                image('covers',84,105, purple: true),
              ],
            ),
          ),
        const SizedBox(height: 20,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
             const  SizedBox(width: 40,),

              Container(
                width: 325,
                height: 161,
                color: const Color(0xffF0E5FF),
                child: Row(
                  children: [
                    Image.asset('images/laptop-2.png',width: 200,),
                    Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        const Text('Hp Envy'),
                        Row(
                          children: const [
                            Text('4'),
                            Icon(Icons.star,color: Colors.yellow,),
                            
                          ],
                        ),
                        const SizedBox(),
                        Row(
                          children: const [
                            Text('300\$'),
                            SizedBox(width: 10,),
                            Text('400\$ ',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 2,
                              )
                              ,)
                          ],
                        ),
                        const SizedBox(),
                      ],
                      
                    )
                  ],
                ),
              ),
              const SizedBox(width: 20,),
              image('watch', 325, 161, purple: false),
            ],
          ),
        ),
           const SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 20),
                image('earphone', 127, 198, purple: false),
                const SizedBox(width: 20),
                image('airbods', 127, 198, purple: false),
                const SizedBox(width: 20),
                image('watch', 127, 198, purple: false),
                const SizedBox(width: 20),
                image('headphone', 127, 198, purple: false),
                const SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
