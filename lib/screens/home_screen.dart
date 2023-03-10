import 'package:flutter/material.dart';

import 'package:components_flutter/router/app_routes.dart';
import 'package:components_flutter/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
      ),
      body: ListView.separated(
          itemCount: menuOptions.length,
          itemBuilder: (context, index) => ListTile(
            leading: Icon(menuOptions[index].icon, color: AppTheme.lightTheme.primaryColor,),
            title: Text(menuOptions[index].name),
            onTap: () {
              // final route = MaterialPageRoute(
              //     builder: (context) => const Listview1Screen(),
              // );
              // Navigator.push(context, route);

              Navigator.pushNamed(context, menuOptions[index].route);

            },
          ),
          separatorBuilder: (_, __) => const Divider(),
      )
    );
  }
}