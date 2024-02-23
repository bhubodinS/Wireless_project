import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food for you, Song!"),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            // Add functionality to navigate to home page
          },
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Text(
              "Choose to EAT !",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20), // Add spacing between header and cards
          // First Image with description wrapped in Card
          _buildFoodCard(
            imageUrl:
                'https://lh6.ggpht.com/fHX5niNGXLFTvwiDzZzY0GWXXh7pAjhHVcFAS28LjSIz1YWxyE5Mh9uhKmnyuVWeutG2TI5mlyW2yrA6vtLUyg=s690-c-rw-v1-e365',
            description: 'Blueberry-Oat Bars',
          ),
          SizedBox(height: 10), // Add some spacing between the cards
          // Second Image with description wrapped in Card
          _buildFoodCard(
            imageUrl:
                'https://lh3.googleusercontent.com/7sjomC_QWl6E_VgEIM-jtMKcHqXx_vyx3HKwg1ehqU1JzQ4N8FCGIx0HDdHsysFXfycngSJooDDaxEKlYy69=s690-c-rw-v1-e365',
            description: 'Israeli Salad',
          ),
          SizedBox(height: 10), // Add some spacing between the cards
          // Third Image with description wrapped in Card
          _buildFoodCard(
            imageUrl:
                'https://lh3.googleusercontent.com/itqCFLWvaV6Bggd9Iv6ldagmEj2Mkl-0NcMMPmC5oe3aTK5xJUdD9sruGF5YtMOfbY3P5y6_d24blHX1jxaL-Q=s690-c-rw-v1-e365',
            description: 'Mushroom Paella',
          ),
          SizedBox(height: 10), // Add some spacing between the cards
          // Fourth Image with description wrapped in Card
          _buildFoodCard(
            imageUrl:
                'https://lh3.ggpht.com/r5DFybYGW2r4pGYdbDopoxiW4Ua3VBhpjWehb2hAJtI0qUZF4Un2Bjz8KucrHqi8eOsehBByr17GCy11yiQ5=s690-c-rw-v1-e365',
            description: 'Creamy Vegan Cauliflower Soup with Garlic + Rosemary',
          ),
        ],
      ),
    );
  }

  Widget _buildFoodCard(
      {required String imageUrl, required String description}) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.green.withOpacity(0.8),
              Colors.green.withOpacity(0.4)
            ],
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: ListTile(
          leading: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: EdgeInsets.all(4.0),
            child: Image.network(
              imageUrl,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
            ),
          ),
          title: Text(
            description,
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text(
            "This is a description of the $description.",
            style: TextStyle(color: Colors.white),
          ),
          trailing: Icon(
            Icons.favorite,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
