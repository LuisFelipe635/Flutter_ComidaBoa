import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_strings.dart';

import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(30),
      children: DUMMY_CATEGORIES
          .map(
            (catData) => CategoryItem(
              id: catData.id,
              title: _resolveTitleTranslation(context, catData.id),
              color: catData.color,
            ),
          )
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
    );
  }

  String _resolveTitleTranslation(final BuildContext context, final String id) {
    switch (id) {
      case 'c1':
        return AppStrings.of(context).italian;
      case 'c2':
        return AppStrings.of(context).quickAndEasy;
      case 'c3':
        return AppStrings.of(context).hamburgers;
      case 'c4':
        return AppStrings.of(context).german;
      case 'c5':
        return AppStrings.of(context).lightMeals;
      case 'c6':
        return AppStrings.of(context).exotic;
      case 'c7':
        return AppStrings.of(context).breakfast;
      case 'c8':
        return AppStrings.of(context).asian;
      case 'c9':
        return AppStrings.of(context).french;
      case 'c10':
        return AppStrings.of(context).summer;
      default:
        return '';
    }
  }
}
