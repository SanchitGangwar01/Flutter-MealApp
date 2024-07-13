
import 'package:flutter/material.dart';
//import 'package:meal_app/screens/tabs.dart';
// import 'package:meal_app/widgets/main_drawer.dart';


enum Filter{
glutenfree,
lactosefree,
vegan,
Vegeterian,
}

class FiltersScreen extends StatefulWidget{
const FiltersScreen({super.key, required this.currentFilters});

final Map<Filter,bool> currentFilters;

@override
  State<StatefulWidget> createState() {
   return _FIltersScreenState(); 
  }
}

class _FIltersScreenState extends State<FiltersScreen>{
var _glutenFreeFilterSet = false;
var _lactoseFreeFilterSet = false;
var _vegeterianFilterSet = false;
var _veganFilterSet = false;


@override
  void initState() {
  super.initState();
  _glutenFreeFilterSet= widget.currentFilters[Filter.glutenfree]!;
  _lactoseFreeFilterSet= widget.currentFilters[Filter.lactosefree]!;
  _vegeterianFilterSet= widget.currentFilters[Filter.Vegeterian]!;
  _veganFilterSet= widget.currentFilters[Filter.vegan]!;
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      // drawer: MainDrawer(onSelectScreen: (identifier){
      //   Navigator.of(context).pop();
      //   if(identifier=='meal'){
      //     Navigator.of(context)
      //     .pushReplacement(MaterialPageRoute(builder:(ctx)=>TabsScreen(),
      //     ),
      //     );
      //   }
      // },),
      body:WillPopScope(
        onWillPop:() async {
           
          Navigator.of(context).pop({
          Filter.glutenfree:_glutenFreeFilterSet,
          Filter.lactosefree: _lactoseFreeFilterSet,
          Filter.Vegeterian: _vegeterianFilterSet,
          Filter.vegan: _veganFilterSet,
          });
          return false;
        },
        child: Column(
          children: [
          SwitchListTile(
            value: _glutenFreeFilterSet,
           onChanged: (isChecked){
           setState(() {
             _glutenFreeFilterSet= isChecked;
           });
           },
          title: Text(
            'Gluten-Free',
             style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color:Theme.of(context).colorScheme.onBackground,
          ),
          ),
          subtitle: Text(
            'Only incclude gluten-free meals',
           style: Theme.of(context).textTheme.labelMedium!.copyWith(
            color:Theme.of(context).colorScheme.onBackground,
           ), 
           ),
             activeColor:Theme.of(context).colorScheme.tertiary,
             contentPadding: const EdgeInsets.only(left: 34,right: 22),
          ),
        
        
        
           SwitchListTile(
            value: _lactoseFreeFilterSet,
           onChanged: (isChecked){
           setState(() {
             _lactoseFreeFilterSet= isChecked;
           });
           },
          title: Text(
            'Lactose-Free',
             style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color:Theme.of(context).colorScheme.onBackground,
          ),
          ),
          subtitle: Text(
            'Only include Lactose-free meals',
           style: Theme.of(context).textTheme.labelMedium!.copyWith(
            color:Theme.of(context).colorScheme.onBackground,
           ), 
           ),
             activeColor:Theme.of(context).colorScheme.tertiary,
             contentPadding: const EdgeInsets.only(left: 34,right: 22),
          ),
        
        
          SwitchListTile(
            value: _vegeterianFilterSet,
           onChanged: (isChecked){
           setState(() {
             _vegeterianFilterSet= isChecked;
           });
           },
          title: Text(
            'Vegeterian-Free',
             style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color:Theme.of(context).colorScheme.onBackground,
          ),
          ),
          subtitle: Text(
            'Only include Vegeterian-free meals',
           style: Theme.of(context).textTheme.labelMedium!.copyWith(
            color:Theme.of(context).colorScheme.onBackground,
           ), 
           ),
             activeColor:Theme.of(context).colorScheme.tertiary,
             contentPadding: const EdgeInsets.only(left: 34,right: 22),
          ),
        
        
                   SwitchListTile(
            value: _veganFilterSet,
           onChanged: (isChecked){
           setState(() {
             _veganFilterSet= isChecked;
           });
           },
          title: Text(
            'Vegan-Free',
             style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color:Theme.of(context).colorScheme.onBackground,
          ),
          ),
          subtitle: Text(
            'Only incclude Vegan-free meals',
           style: Theme.of(context).textTheme.labelMedium!.copyWith(
            color:Theme.of(context).colorScheme.onBackground,
           ), 
           ),
             activeColor:Theme.of(context).colorScheme.tertiary,
             contentPadding: const EdgeInsets.only(left: 34,right: 22),
          ),
        ],
        ),
      ) ,
    );
  }

}
