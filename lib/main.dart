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

      home: Scaffold(
        appBar: AppBar(
          title: const Text('FoodGo'),
        ),

        body: Padding(
          padding: const EdgeInsets.all(20),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              const Text(
                'Find your favorite food!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 20),

              // Food categories
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text('🍕 Pizza'),
                  ),

                  const SizedBox(width: 10),

                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text('🍔 Burger'),
                  ),

                  const SizedBox(width: 10),

                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text('🍝 Pasta'),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // Popular foods title
              const Text(
                'Popular Foods',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              // Food card
              Expanded(
               child: ListView(
                 children: [
                   Card(
                      child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Image.asset(
                      'assets/images/burgur.jpg',
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),

                    const Padding(
                      padding: EdgeInsets.all(12),
                      child: Text(
                        'Chicken Burger',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 20,
                          ),

                          const SizedBox(width: 5),

                          const Text('4.8'),

                          const Spacer(),

                          const Text(
                            '\$8.99',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 12),
                  ],
                ),
              ),

              const SizedBox(height: 15),

Card(
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Image.asset(
        'assets/images/cheese pizza.jpg',
        height: 180,
        width: double.infinity,
        fit: BoxFit.cover,
      ),

      const Padding(
        padding: EdgeInsets.all(12),
        child: Text(
          'Cheese Pizza',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            const Icon(
              Icons.star,
              color: Colors.amber,
              size: 20,
            ),

            const SizedBox(width: 5),

            const Text('4.7'),

            const Spacer(),

            const Text(
              '\$10.99',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

      const SizedBox(height: 12),
    ],
  ),
),
            ],
               ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}