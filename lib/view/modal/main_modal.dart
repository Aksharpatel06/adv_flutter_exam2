import 'package:adv_flutter_exam2/view/modal/recipe_modal.dart';

class Modal {
  int total, skip, limit;
  List<RecipeModal> recipesList = [];

  Modal._init(
      {required this.total,
      required this.skip,
      required this.limit,
      required this.recipesList});

  factory Modal(Map json) {
    return Modal._init(
        total: json['total'],
        skip: json['skip'],
        limit: json['limit'],
        recipesList: (json['recipes'] as List).map((e) => RecipeModal(e),).toList());
  }
}
