import 'package:flutter/material.dart';
import 'api_service.dart';
import 'recipe.dart';
import 'recipe_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Recipes',
      theme: ThemeData(
        // Adjusting primarySwatch to teal to match the new color theme
        primarySwatch: Colors.teal,
      ),
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _controller = TextEditingController();
  final ApiService _apiService = ApiService();
  List<Recipe> _searchResults = [];

  void _searchFood(String query) async {
    final results = await _apiService.fetchRecipes(query);
    setState(() {
      _searchResults = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Applying teal color to the AppBar for a cohesive color scheme
      appBar: AppBar(
        title: Text('Find Recipes'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(16.0), // Increased padding for overall body
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 16.0), // Specific padding for the search bar
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  labelText: 'Enter a food name',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.search),
                    onPressed: () => _searchFood(_controller.text),
                  ),
                  // Enhanced styling for TextField
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onSubmitted: (value) => _searchFood(value),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _searchResults.length,
                itemBuilder: (context, index) {
                  return Card(
                    // Wrapping ListTile with Card for better UI presentation
                    margin: const EdgeInsets.symmetric(
                        vertical: 4.0, horizontal: 0), // Adjust card margin
                    child: ListTile(
                      title: Text(_searchResults[index].title),
                      leading: Image.network(_searchResults[index].imageUrl),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                RecipeDetailPage(recipe: _searchResults[index]),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
