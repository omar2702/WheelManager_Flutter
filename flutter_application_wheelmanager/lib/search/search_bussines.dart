import 'package:flutter/material.dart';
import 'package:flutter_application_wheelmanager/Apis/corporation_api.dart';
import 'package:flutter_application_wheelmanager/Pages/corporation_page.dart';
import 'package:flutter_application_wheelmanager/models/corporation.dart';
import 'package:flutter_application_wheelmanager/search/search_delegate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:transparent_image/transparent_image.dart';

class SearchCorporation extends StatefulWidget {
  @override
  _SearchCorporationState createState() => _SearchCorporationState();
}

class _SearchCorporationState extends State<SearchCorporation> {
  List<Corporation> get corporations => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/fondo2.jpg'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text('Buscar Empresa'),
        ),
        body: FutureBuilder<List<Corporation>>(
          future: CorporationApi.getCorporations(),
          builder: (context, snapshot) {
            final corporations = snapshot.data;

            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return Center(child: CircularProgressIndicator());
              default:
                if (snapshot.hasError) {
                  return Center(child: Text('Some error occurred!'));
                } else {
                  return buildsCorporations(corporations);
                }
            }
          },
        ),
      ),
    );
  }

  Widget buildsCorporations(List<Corporation> corporations) => ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: corporations.length,
        itemBuilder: (context, index) {
          final corporation = corporations[index];

          return Card(
            elevation: 10.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            child: Column(
              children: [
                ListTile(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        CorporationPage(corporation: corporation),
                  )),
                  trailing: FaIcon(FontAwesomeIcons.arrowRight),
                  title: Text(corporation.name),
                  subtitle: Text(corporation.ruc),
                ),
              ],
            ),
          );
        },
      );
}
