import 'package:flutter/material.dart';
import 'package:flutter_application_wheelmanager/search/search_delegate.dart';

class SearchService extends StatelessWidget {
  const SearchService({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buscar Servicio'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
              icon: Icon(Icons.search))
        ],
      ),
    );
  }
}
