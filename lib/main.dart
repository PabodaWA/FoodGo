import 'package:flutter/material.dart';

void main() {
  runApp(const FoodGoApp());
}

class FoodGoApp extends StatelessWidget {
  const FoodGoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodGo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'FoodGo',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Welcome text
              const Text(
                'What would you like to eat?',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              // Search bar
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search for food...',
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // Categories title
              const Text(
                'Categories',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              // Categories
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    categoryItem(Icons.lunch_dining, 'Burgers'),
                    categoryItem(Icons.local_pizza, 'Pizza'),
                    categoryItem(Icons.ramen_dining, 'Noodles'),
                    categoryItem(Icons.local_cafe, 'Drinks'),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // Popular food
              const Text(
                'Popular Food',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              // Food cards
              foodCard(
                'Chicken Burger',
                'Rs. 850',
                'assets/images/burger.jpg',
              ),

              foodCard(
                'Cheese Pizza',
                'Rs. 1200',
                'assets/images/cheese_pizza.jpg',
              ),

              foodCard(
                'Cheese Kottu',
                'Rs. 650',
                'assets/images/cheese_kottu.jpg',
              ),

              foodCard(
                'Fried Rice',
                'Rs. 500',
                'assets/images/cheese_kottu.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Category widget
  Widget categoryItem(IconData icon, String name) {
    return Container(
      width: 90,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30,
            child: Icon(
              icon,
              size: 30,
            ),
          ),

          const SizedBox(height: 8),

          Text(name),
        ],
      ),
    );
  }

  // Food card widget
  Widget foodCard(
    String name,
    String price,
    String imagePath,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),

      child: Row(
        children: [

          // Food image
          ClipRRect(
            borderRadius: BorderRadius.circular(10),

            child: Image.asset(
              imagePath,
              width: 120,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 15),

          // Food information
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  price,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 10),

                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Add to Cart'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}