import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';

class MealScreen extends StatelessWidget{
const MealScreen({super.key, required this.meals,required this.title});

final String title;
final List<Meal> meals;
@override
  Widget build(BuildContext context) {
    Widget content =  ListView.builder(
    itemBuilder: (ctx,index)=> Text(
    meals[index].title,
    ),
    );

    if(meals.isEmpty){
  content = Center(child: 
  Column(
    mainAxisSize: MainAxisSize.min,
  children: [
    const Text('oh  ... nothing here !'),
    const SizedBox(height: 16),
    Text('Try selecting a different category',
    style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Theme.of(context).colorScheme.onBackground,
    ),
    ),
  ],
  ),
  );


if (meals.isNotEmpty){
content= ListView.builder(
  itemCount: meals.length,
  itemBuilder: (context, index) => Text(
    meals[index].title,
  ),
);
}

    }
 return Scaffold(
  appBar: AppBar(
    title: Text(title),
  ),
  body:content
    );
    }

}