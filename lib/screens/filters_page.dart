import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class FiltersPage extends StatefulWidget {
  static const routeName = '/filters';
  final Map<String, bool> currentFilters;
  final Function setFilters;

  FiltersPage(
    this.currentFilters,
    this.setFilters,
  );

  @override
  _FiltersPageState createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {
  var _glutenFree = false;
  var _lactoseFree = false;
  var _vegetarian = false;
  var _vegan = false;

  @override
  initState() {
    _glutenFree = widget.currentFilters['gluten'];
    _lactoseFree = widget.currentFilters['lactose'];
    _vegetarian = widget.currentFilters['vegetarian'];
    _vegan = widget.currentFilters['vegan'];
    super.initState();
  }

  Widget _buildSwitch(
    String title,
    String subtitle,
    bool initialValue,
    Function updateValue,
  ) {
    return SwitchListTile(
      title: Text(
        title,
        style: TextStyle(fontSize: 20),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: 18),
      ),
      value: initialValue,
      onChanged: updateValue,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: (Text('Filtros de Receita')),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Text(
              'Ajuste filtros para as receitas de acordo\ncom suas necessidades',
              style: TextStyle(
                fontSize: 20,
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildSwitch('Sem Glúten', 'Exibir apenas receitas sem glúten',
                    _glutenFree, (newValue) {
                  setState(() {
                    _glutenFree = newValue;
                  });
                }),
                _buildSwitch(
                    'Sem Lactose',
                    'Exibir apenas receitas sem lactose',
                    _lactoseFree, (newValue) {
                  setState(() {
                    _lactoseFree = newValue;
                  });
                }),
                _buildSwitch(
                    'Vegetarianas',
                    'Exibir apenas receitas vegetarianas',
                    _vegetarian, (newValue) {
                  setState(() {
                    _vegetarian = newValue;
                  });
                }),
                _buildSwitch(
                    'Veganas', 'Exibir apenas receitas veganas', _vegan,
                    (newValue) {
                  setState(() {
                    _vegan = newValue;
                  });
                }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Container(
              child: RaisedButton(
                  child: Text(
                    'SALVAR FILTROS',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  color: Theme.of(context).primaryColor,
                  padding: const EdgeInsets.all(10),
                  onPressed: () {
                    widget.setFilters({
                      'gluten': _glutenFree,
                      'lactose': _lactoseFree,
                      'vegetarian': _vegetarian,
                      'vegan': _vegan,
                    });
                    Navigator.of(context).pop();
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
