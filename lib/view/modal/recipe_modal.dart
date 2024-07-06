class RecipeModal {
  int id,
      prepTimeMinutes,
      cookTimeMinutes,
      servings,
      caloriesPerServing,
      userId,
      reviewCount;
  dynamic rating;
  List ingredients = [];
  List instructions = [];
  List tags = [];
  List mealType = [];

  String name, difficulty, cuisine, image;

  RecipeModal._init(
      {required this.id,
      required this.prepTimeMinutes,
      required this.cookTimeMinutes,
      required this.servings,
      required this.caloriesPerServing,
      required this.userId,
      required this.rating,
      required this.reviewCount,
      required this.ingredients,
      required this.instructions,
      required this.tags,
      required this.mealType,
      required this.name,
      required this.difficulty,
      required this.cuisine,
      required this.image});

  factory RecipeModal(Map json) {
    return RecipeModal._init(
        id: json['id'],
        prepTimeMinutes: json['prepTimeMinutes'],
        cookTimeMinutes: json['cookTimeMinutes'],
        servings: json['servings'],
        caloriesPerServing: json['caloriesPerServing'],
        userId: json['userId'],
        rating: json['rating'],
        reviewCount: json['reviewCount'],
        ingredients: json['ingredients'],
        instructions: json['instructions'],
        tags: json['tags'],
        mealType: json['mealType'],
        name: json['name'],
        difficulty: json['difficulty'],
        cuisine: json['cuisine'],
        image: json['image']);
  }
}
