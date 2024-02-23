import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Favorite Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Favorite page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        title: Text("Favorite"),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () {
            // Navigate to home
          },
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBox1(
            name: "Salmon Maki Sushi",
            description:
                "Salmon Maki the most classic looking sushi. Raw fresh salmon is wrapped in sticky sushi rice and crispy seaweed.",
            categories: "Japanese Food",
            imgUrl:
                "https://www.sushiya.in/cdn/shop/products/10.FreshSalmonMaki.jpg?v=1629102974",
            ingredients:
                "Nori - These are the sheets of edible seaweed that sushi is wrapped in. Choose a brand that is dark green in colour.\nSushi rice - You have to use sushi rice for the best results. Other rice will not work.\nSalmon - We have used smoked salmon, or raw salmon fillets (try to find sashimi grade salmon) and thinly slice them.",
            recipe:
                "Step1: Lay a sheet of nori on a bamboo rolling mat, shiny side down. Put the cooked sushi rice onto the nori and spread to cover ¾ of the nori. \nStep2: Lay the strips of smoked salmon halfway along the rice.\nStep3: Using a bamboo rolling mat roll up from the bottom, tightly away from you . Leave a small amount of nori unrolled . Wet this part of the nori with water and finish rolling to seal it.\nStep4: Cut it into pieces.",
          ),
          ProductBox2(
            name: "Pad Thai",
            description:
                "Pad Thai is a traditional Thai dish and is one of the most famous street food in the world",
            categories: 'Thai Food',
            imgUrl:
                "https://hot-thai-kitchen.com/wp-content/uploads/2019/09/pad-thai-blog.jpg",
            ingredients:
                "200g flat rice noodles\n2 tablespoons vegetable oil\n1 onion, finely chopped\n2 cloves garlic, minced\n1 red chili, finely chopped\n150g firm tofu or your choice of protein (shrimp, chicken, or beef), diced\n2 eggs, lightly beaten\n2 cups bean sprouts\n4 green onions, sliced\n1/4 cup roasted peanuts, chopped\nLime wedges for serving\n\nFor the Sauce:\n3 tablespoons fish sauce, 1 tablespoon tamarind paste, 1-2 tablespoons sugar, 1/2 teaspoon chili powder",
            recipe:
                "Step1: Cook the rice noodles according to the package instructions. Drain and set aside.\nStep2: In a small bowl, mix together the fish sauce (or soy sauce), tamarind paste, sugar, and chili powder to make the sauce. Adjust the quantities to achieve the desired balance of sweet, salty, and spicy flavors.\nStep3: Heat vegetable oil in a large pan or wok over medium-high heat. Add chopped onion, minced garlic, and finely chopped red chili. Sauté until the onions are translucent.\nStep4: Push the vegetables to the side of the pan and add diced tofu or your choice of protein. Cook until the protein is cooked through.\nStep5: Push everything to the side again and pour the beaten eggs into the pan. Scramble the eggs until they are just set.\nStep6: Add the cooked rice noodles to the pan and pour the prepared sauce over them. Toss everything together to combine and coat the noodles in the sauce.\nStep7: Add bean sprouts and sliced green onions. Toss for an additional 1-2 minutes until the bean sprouts are slightly cooked but still crisp.\nStep7: Serve the Pad Thai hot, garnished with chopped roasted peanuts and lime wedges on the side.",
          ),
          ProductBox2(
            name: "Lasagna",
            description:
                "Lasagna is the name of one of the oldest and best-known pasta shapes.",
            categories: "Italian Food",
            imgUrl:
                "https://static01.nyt.com/images/2023/08/31/multimedia/RS-Lasagna-hkjl/RS-Lasagna-hkjl-superJumbo.jpg",
            ingredients:
                "For the Meat Sauce:\n1 pound ground beef, 1 pound Italian sausage, casings removed, 1 onion, finely chopped, 3 cloves garlic, minced, 1 can (28 ounces) crushed tomatoes, 2 cans (6 ounces each) tomato paste, 1 can (14 ounces) tomato sauce, 1/2 cup water, 2 teaspoons sugar, 1 teaspoon dried basil, 1 teaspoon dried oregano, 1/2 teaspoon salt, 1/4 teaspoon black pepper\n\nFor the Ricotta Filling:\n2 cups ricotta cheese\n1 cup shredded mozzarella cheese\n1/2 cup grated Parmesan cheese\n1 egg\n2 tablespoons fresh parsley, chopped\nSalt and black pepper to taste",
            recipe:
                "Step1: Preheat your oven to 375°F (190°C).\n Step2: In a large skillet over medium heat, cook the ground beef and Italian sausage until browned. Drain excess fat.\nStep 3:  Add chopped onion and minced garlic to the skillet. Sauté until the onion is softened.\nStep4: Stir in crushed tomatoes, tomato paste, tomato sauce, water, sugar, basil, oregano, salt, and pepper. Simmer the sauce for about 20 minutes, stirring occasionally.\nStep5: In a medium bowl, mix together ricotta cheese, mozzarella cheese, Parmesan cheese, egg, chopped parsley, salt, and pepper to make the ricotta filling.\nStep6: Cook the lasagna noodles according to the package instructions. Drain and set aside.\nStep7:  In a baking dish, spread a thin layer of meat sauce. Place a layer of cooked lasagna noodles on top.\nStep8:  Spread half of the ricotta filling over the noodles, followed by a portion of the meat sauce. Sprinkle with mozzarella and Parmesan cheeses.\nStep9:  Repeat the layers, ending with a final layer of meat sauce and a generous topping of mozzarella and Parmesan cheeses.\nStep10:  Cover the baking dish with aluminum foil and bake in the preheated oven for 25 minutes. Then, remove the foil and bake for an additional 25-30 minutes or until the cheese is melted and bubbly.\nStep11: Allow the lasagna to rest for 10 minutes before slicing and serving.",
          ),
          ProductBox2(
            name: "Panna Cotta",
            description:
                "It is One of the simplest desserts in the world: a pudding literally “cooked cream”.",
            categories: "Italian Dessert",
            imgUrl:
                "https://www.bigbasket.com/media/uploads/recipe/w-l/2867_2_1.jpg",
            ingredients:
                "2 cups heavy cream\n1/2 cup granulated sugar\n1 vanilla bean, split lengthwise (or 1 teaspoon vanilla extract)\n2 1/4 teaspoons (1 packet) unflavored gelatin\n3 tablespoons cold water\nFresh berries or fruit compote for serving (optional)",
            recipe:
                "Step1: In a saucepan, combine the heavy cream and sugar. If you're using a vanilla bean, scrape the seeds from the bean and add both the seeds and the bean to the saucepan. If you're using vanilla extract, add it later.\nStep2: Heat the cream mixture over medium heat, stirring occasionally, until it is hot but not boiling. Remove from heat.\nStep3: In a small bowl, sprinkle the gelatin over the cold water and let it sit for about 5 minutes to soften.\nStep4: After the gelatin has softened, add it to the warm cream mixture. If you used a vanilla bean, remove the bean at this point.\nStep5: Stir the mixture over low heat until the gelatin is completely dissolved. Make sure not to boil the mixture.\nStep6: If you're using vanilla extract, add it at this point and stir to combine.\nStep7: Pour the mixture into individual serving glasses or ramekins. Allow them to cool to room temperature, and then cover with plastic wrap.\nStep8: Refrigerate the Panna Cotta for at least 4 hours, or preferably overnight, until it is fully set.\nStep9: Before serving, you can garnish the Panna Cotta with fresh berries or a fruit compote if desired.",
          ),
          ProductBox2(
            name: "Macaron",
            description:
                "A macaron is a meringue-based sandwich cookie fillings with buttercream, ganache, or fruit-based jam",
            categories: "French Dessert",
            imgUrl:
                "https://images.immediate.co.uk/production/volatile/sites/2/2022/05/Macarons-fb56db8.jpg?resize=768,574",
            ingredients:
                "For the Macaron Shells:\n1 cup (100g) almond flour, 1 3/4 cups (200g) powdered sugar, 3 large egg whites, at room temperature, 1/4 cup (50g) granulated sugar, Gel food coloring (optional)\nFor the Filling:\n1/2 cup (115g) unsalted butter, softened, 1 cup (125g) powdered sugar, 1 teaspoon vanilla extract",
            recipe:
                "Macaron Shells:\nStep1:Prepare Baking Sheets: Line two baking sheets with parchment paper or silicone baking mats.\nStep2: Sift Almond Flour and Powdered Sugar: In a medium bowl, sift together almond flour and powdered sugar. Discard any large bits that remain.\nStep3: Whip Egg Whites: In a clean, dry bowl, whip the egg whites using an electric mixer until foamy. Gradually add granulated sugar while continuing to whip. Whip until stiff, glossy peaks form.\nStep4: Macaronage: Gently fold the sifted almond flour and powdered sugar mixture into the whipped egg whites. This process is called macaronage. Fold until the batter is smooth and shiny, but be careful not to overmix.\nStep5: Piping: Transfer the batter to a piping bag fitted with a round tip. Pipe small circles onto the prepared baking sheets. You can use a template for consistent sizing.\nStep6: Resting: Allow the piped macarons to rest at room temperature for about 30 minutes to 1 hour. This helps them develop a skin. \nStep7: Preheat Oven: Preheat your oven to 300°F (150°C).\nStep8: Bake: Bake the macarons for 15-18 minutes or until they have formed feet and are set. The exact time may vary, so keep an eye on them.\nStep9: Cooling: Allow the macarons to cool completely on the baking sheets before attempting to remove them.\n\nFilling:\nStep1: Prepare Filling: In a bowl, beat together softened butter, powdered sugar, and vanilla extract until smooth and creamy.\nStep2: Assemble: Match up similar-sized macaron shells and spread or pipe a small amount of filling onto one shell. Top with another shell to create a sandwich.\nStep3: Final Touch: Optionally, let the assembled macarons rest in the refrigerator for a few hours to allow the flavors to meld.",
          ),
        ],
      ),
    );
  }
}

class ProductBox1 extends StatelessWidget {
  ProductBox1({
    Key? key,
    required this.name,
    required this.description,
    required this.categories,
    required this.imgUrl,
    required this.recipe,
    required this.ingredients,
  }) : super(key: key);

  final String name;
  final String description;
  final String categories;
  final String imgUrl;
  final String recipe;
  final String ingredients;

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsPage(
              name: name,
              description: description,
              categories: categories,
              imgUrl: imgUrl,
              recipe: recipe,
              ingredients: ingredients,
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.network(
                imgUrl,
                height: 100,
                width: 100,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(this.name,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(this.description),
                      Text("Categories: " + this.categories.toString()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductBox2 extends StatelessWidget {
  ProductBox2({
    Key? key,
    required this.name,
    required this.description,
    required this.categories,
    required this.imgUrl,
    required this.recipe,
    required this.ingredients,
  }) : super(key: key);

  final String name;
  final String description;
  final String categories;
  final String imgUrl;
  final String recipe;
  final String ingredients;

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsPage(
              name: name,
              description: description,
              categories: categories,
              imgUrl: imgUrl,
              recipe: recipe,
              ingredients: ingredients,
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.network(
                imgUrl,
                height: 100,
                width: 100,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(this.name,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(this.description),
                      Text("Categories: " + this.categories.toString()),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductDetailsPage extends StatelessWidget {
  final String name;
  final String description;
  final String categories;
  final String imgUrl;
  final String recipe;
  final String ingredients;

  ProductDetailsPage({
    required this.name,
    required this.description,
    required this.categories,
    required this.imgUrl,
    required this.recipe,
    required this.ingredients,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imgUrl,
              height: 200,
              width: 200,
            ),
            SizedBox(height: 20),
            Text("Name: $name", style: TextStyle(fontSize: 18)),
            Text("Description: $description", style: TextStyle(fontSize: 16)),
            Text("Categories: $categories", style: TextStyle(fontSize: 16)),
            SizedBox(height: 20),
            Text("Ingredients",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(ingredients),
            SizedBox(height: 20),
            Text("Recipe",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(recipe),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Go back to the product list page
              },
              child: Text("Back to Favorite List"),
            ),
          ],
        ),
      ),
    );
  }
}
