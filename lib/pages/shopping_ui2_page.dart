import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ShoppingUi2Page extends StatelessWidget {
  const ShoppingUi2Page ({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Column(
        children: [
          CusAppBarSessionView(),
          FirstTitleSessionView(),
          SizedBox(height: 10.0),
          CusPageViewSessionView(),
          SecondTitleSessionView(),
          GridViewSessionView(),
        ],
      ),
      bottomNavigationBar: FooterContainerSessionView(),
    );
  }
}

class FirstTitleSessionView extends StatelessWidget{
  const FirstTitleSessionView({super.key});

  @override
  Widget build (BuildContext context){
    return  Container(
      padding:const EdgeInsets.all(16.0), // Add padding as needed
      child:const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left side content (title and label)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to Shoppie',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0), // Add spacing between title and label
              Text(
                'Lets gets something awesome with lovely?',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }


}


class CusAppBarSessionView extends StatelessWidget {
  const CusAppBarSessionView({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Row(
        children: [
          IconButton(
            color: Colors.black,
            icon:const Icon(Icons.menu),
            onPressed: () {
            },
          ),
        ],
      ),
      actions: [
        IconButton(
          color: Colors.black,
          icon:const Icon(Icons.more_vert_sharp),
          onPressed: () {
          },
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            IconButton(
              color: Colors.black,
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
              },
              iconSize: 28,
            ),
            Positioned(
              right: 8,
              top: 8,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: const Text(
                  '2',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}


class CusPageViewSessionView extends StatelessWidget {
  const CusPageViewSessionView({super.key});

  @override
  Widget build(BuildContext context) {

    List imagePaths = [
      'images/nezuko.jpeg',
      'images/tanjiro.jpeg',
      'images/zenitsu.jpeg',
    ];

    List labels = [
      'WHITE FRIDAY \nOFFERS',
      'Label 2',
      'Label 3',
    ];

    return CarouselSlider.builder(
      itemCount: imagePaths.length,
      options: CarouselOptions(
        height: 250.0,
        viewportFraction: 0.8,
        enlargeCenterPage: true,
      ),
      itemBuilder: (BuildContext context, int index, int realIndex) {
        return Builder(
          builder: (BuildContext context) {
            // Custom content for each slide
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(imagePaths[index]),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Text(
                      labels[index],
                      style: const TextStyle(
                        color: Colors.indigoAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Button
                  Positioned(
                    bottom: 20,
                    left: 20,
                      child: ElevatedButton(
                        onPressed: () {
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        ),
                        child:const Text('GET NOW', style: TextStyle(color: Colors.white)),
                      )
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}

class SecondTitleSessionView extends StatelessWidget{
  const SecondTitleSessionView({super.key});

  @override
  Widget build (BuildContext context){
    return  Container(
      // color: Colors.cyan,
      padding:const EdgeInsets.all(10.0),
      child:const Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "this week's latest",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Shop for the most amazing items 2022 needs!",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class GridViewSessionView extends StatelessWidget {
  const GridViewSessionView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      width: 410,
      child: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children: [

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8,
                  spreadRadius: 2,
                  offset: Offset(2, 8),
                )
              ]
            ),
            child: ClipRRect(
              borderRadius:const BorderRadius.only(
                topRight: Radius.circular(15),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius:const BorderRadius.only(
                          topRight: Radius.circular(15),
                        ),
                        child: Image.asset(
                          "images/nike.jpeg",
                          height: 130,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Nike shoe",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$29.9",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      decoration:const  BoxDecoration(
                        color: Color.fromRGBO(169, 169, 169, 0.7),
                      ),
                      padding:const EdgeInsets.all(10),
                      child:const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: Offset(2, 8),
                  )
                ]
            ),
            child: ClipRRect(
              borderRadius:const BorderRadius.only(
                topRight: Radius.circular(15),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius:const BorderRadius.only(
                          topRight: Radius.circular(15),
                        ),
                        child: Image.asset(
                          "images/bag.jpeg",
                          height: 130,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Leather BackPack",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$30.9",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      decoration:const  BoxDecoration(
                        color: Color.fromRGBO(169, 169, 169, 0.7),
                      ),
                      padding:const EdgeInsets.all(10),
                      child:const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: Offset(2, 8),
                  )
                ]
            ),
            child: ClipRRect(
              borderRadius:const BorderRadius.only(
                topRight: Radius.circular(15),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius:const BorderRadius.only(
                          topRight: Radius.circular(15),
                        ),
                        child: Image.asset(
                          "images/laptop.webp",
                          height: 130,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "laptop",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$900.9",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      decoration:const  BoxDecoration(
                        color: Color.fromRGBO(169, 169, 169, 0.7),
                      ),
                      padding:const EdgeInsets.all(10),
                      child:const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: Offset(2, 8),
                  )
                ]
            ),
            child: ClipRRect(
              borderRadius:const BorderRadius.only(
                topRight: Radius.circular(15),
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      ClipRRect(
                        borderRadius:const BorderRadius.only(
                          topRight: Radius.circular(15),
                        ),
                        child: Image.asset(
                          "images/phone.jpeg",
                          height: 130,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Samsung",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$1000.9",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      decoration:const  BoxDecoration(
                        color: Color.fromRGBO(169, 169, 169, 0.7),
                      ),
                      padding:const EdgeInsets.all(10),
                      child:const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.add_shopping_cart,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class FooterContainerSessionView extends StatelessWidget {
  const FooterContainerSessionView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon:const Icon(Icons.home),
            onPressed: () {
            },
          ),
          IconButton(
            icon:const Icon(Icons.favorite),
            onPressed: () {
            },
          ),
          IconButton(
            icon:const Icon(Icons.shopping_cart),
            onPressed: () {
            },
          ),
          IconButton(
            icon:const Icon(Icons.account_circle),
            onPressed: () {
            },
          ),
        ],
      ),
    );
  }
}


