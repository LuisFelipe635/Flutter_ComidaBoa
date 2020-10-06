import 'package:flutter/material.dart';

import 'categories_page.dart';
import 'favorites_page.dart';
import '../models/meal.dart';
import '../widgets/main_drawer.dart';

class TabsPage extends StatefulWidget {
  final List<Meal> favoriteMeals;

  TabsPage(this.favoriteMeals);
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      // initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Comida Boa'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'CATEGORIAS',
              ),
              Tab(
                text: 'FAVORITAS',
              ),
            ],
          ),
        ),
        drawer: MainDrawer(),
        body: TabBarView(
          children: <Widget>[
            CategoriesPage(),
            FavoritesPage(widget.favoriteMeals),
          ],
        ),
      ),
    );
  }
}
