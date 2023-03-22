import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_strings.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(IconData icon, String title, void Function() tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).colorScheme.secondary,
            child: Text(
              AppStrings.of(context).greeting,
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile(
            Icons.restaurant,
            AppStrings.of(context).recipes,
            () => Navigator.of(context).pushReplacementNamed('/')
          ),
          buildListTile(
            Icons.filter_list,
            AppStrings.of(context).filters,
            () => Navigator.of(context).pushNamed('/filters')
          ),
        ],
      ),
    );
  }
}
