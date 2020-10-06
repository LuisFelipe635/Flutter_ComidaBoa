import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../screens/meal_detail_page.dart';

class MealItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Cost cost;

  MealItem({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.duration,
    @required this.complexity,
    @required this.cost,
  });

  void selectMeal(BuildContext context) {
    Navigator.of(context).pushNamed(
      MealDetailPage.routeName,
      arguments: id,
    );
  }

  String get convertDuration {
    if (duration >= 60) {
      int hour = duration ~/ 60;
      if (duration % 60 == 0) {
        return '$hour h';
      } else {
        int min = duration % 60;
        return '$hour h $min min';
      }
    } else {
      return '$duration min';
    }
  }

  // ignore: missing_return
  String get getComplexity {
    switch (complexity) {
      case Complexity.Simples:
        return 'Fácil';
        break;
      case Complexity.Mediana:
        return 'Média';
        break;
      case Complexity.Trabalhosa:
        return 'Difícil';
        break;
      default:
        return 'Dificuldade\nnão informada';
    }
  }

  // ignore: missing_return
  String get getCost {
    switch (cost) {
      case Cost.Barata:
        return 'Barata';
        break;
      case Cost.Cara:
        return 'Cara';
        break;
      case Cost.Luxuosa:
        return 'Muito Cara';
        break;
      default:
        return 'Custo não\ninformado';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 25,
                  right: 10,
                  child: Container(
                    width: 300,
                    color: Colors.black54,
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      title,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 26,
                        fontFamily: 'Raleway',
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: [
                      Icon(Icons.query_builder),
                      SizedBox(width: 6),
                      Text(convertDuration),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.info_outline),
                      SizedBox(width: 6),
                      Text(getComplexity),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
                      SizedBox(width: 6),
                      Text(getCost),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
