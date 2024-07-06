import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/home_provider.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    HomeProvider homeProviderTrue = Provider.of<HomeProvider>(context);
    return Scaffold(
      backgroundColor: Colors.orange.shade50,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(homeProviderTrue.modal!
                            .recipesList[homeProviderTrue.foodIndex].image))),
              ),
            ),
          ),
          Container(
            height: 415,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(color: Colors.grey, spreadRadius: 1, blurRadius: 5)
                ],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          homeProviderTrue.modal!
                              .recipesList[homeProviderTrue.foodIndex].name,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '\$ ${homeProviderTrue.modal!.recipesList[homeProviderTrue.foodIndex].caloriesPerServing}',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Ingredients:',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    ...List.generate(
                      homeProviderTrue
                          .modal!
                          .recipesList[homeProviderTrue.foodIndex]
                          .ingredients
                          .length,
                      (index) {
                        return Text(
                          '- ${homeProviderTrue.modal!.recipesList[homeProviderTrue.foodIndex].ingredients[index]}',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Instructions:',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    ...List.generate(
                      homeProviderTrue
                          .modal!
                          .recipesList[homeProviderTrue.foodIndex]
                          .instructions
                          .length,
                      (index) {
                        return Text(
                          '- ${homeProviderTrue.modal!.recipesList[homeProviderTrue.foodIndex].instructions[index]}',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
