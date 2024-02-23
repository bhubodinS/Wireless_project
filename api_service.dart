import 'dart:convert';
import 'package:http/http.dart' as http;
import 'recipe.dart';

class ApiService {
  final String baseUrl = "https://api.spoonacular.com/recipes/complexSearch";
  final String apiKey =
      "fe68524b6b204162aa1d5ebe7ad4c377"; // Replace with your actual API key.

  Future<List<Recipe>> fetchRecipes(String query) async {
    final response =
        await http.get(Uri.parse("$baseUrl?query=$query&apiKey=$apiKey"));
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body)['results'];
      return jsonResponse.map((recipe) => Recipe.fromJson(recipe)).toList();
    } else {
      throw Exception('Failed to load recipes');
    }
  }
}
