import 'package:flutter/material.dart';

class ShoppingUi2ListPage extends StatelessWidget {
  const ShoppingUi2ListPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: Column(
        children: [
          CusAppBarSessionView(),
          ListViewSessionView(),
          LabelSessionView(),
          // SizedBox(height: 10.0),
        ],
      ),
      bottomNavigationBar: FooterContainerSessionView(),
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
            icon:const Icon(Icons.menu), // Replace 'icon1' with the first icon you want
            onPressed: () {
              // Add functionality for the first icon here
            },
          ),
        ],
      ),
      actions: [
        IconButton(
          color: Colors.black,
          icon:const Icon(Icons.more_vert_sharp), // Icon for the menu on the right side
          onPressed: () {
            // Add functionality for the menu icon here
          },
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            IconButton(
              color: Colors.black,
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                // Add functionality for the second icon here
              },
              iconSize: 28, // Adjust the icon size as needed
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

class LabelSessionView extends StatelessWidget {
  const LabelSessionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: 130,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Text(
                  'Total',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ),
              Spacer(),
              // Title
              Text(
                '\$2530.88',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child:const Center(
                child: Text(
                  'Buy Now',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ListViewSessionView extends StatelessWidget {
  const ListViewSessionView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 600,
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          List<Map<String, String?>> dataList = [
            {
              "imagePath": 'images/laptop.webp',
              "label1": "Laptop",
              "label2": "\$2500",
              "title": "\$2000"
            },
            {
              "imagePath": 'images/phone.jpeg',
              "label1": "Phone",
              "label2": "\$1500",
              "title": "\$1000"
            },
            {
              "imagePath": 'images/zenitsu.jpeg',
              "label1": "Anime",
              "label2": "\$1500",
              "title": "\$1000"
            },
          ];

          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    spreadRadius: 2,
                    offset: Offset(2, 8),
                  )
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 15.0),
                    child: SizedBox(
                      width: 80,
                      child: Image.asset(
                        dataList[index % dataList.length]["imagePath"]!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          dataList[index % dataList.length]["label1"]!,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          dataList[index % dataList.length]["label2"]!,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          dataList[index % dataList.length]["title"]!,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
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
            icon: const Icon(Icons.home),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
    );
  }}
