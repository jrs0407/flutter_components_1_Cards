import 'package:flutter/material.dart';
import 'package:flutter_components_1/models/models.dart';
import 'package:flutter_components_1/screens/listView3_screen.dart';
import 'package:flutter_components_1/screens/screens.dart';


class AppRoutes {
  static const initialRoute = 'home';

  static final MenuOptions = <MenuOption>[
    MenuOption(
      route: 'home', 
      icon: Icons.house_rounded, 
      name: 'HomeScreen', 
      screen: const HomeScreen()),
      MenuOption(
      route: 'listview1', 
      icon: Icons.list_alt_outlined, 
      name: 'ListView tipo 1', 
      screen: const Listview1Screen()),
      MenuOption(
      route: 'listview2', 
      icon: Icons.list_alt_rounded, 
      name: 'ListView tipo 2', 
      screen: const Listview2Screen()),
      MenuOption(
      route: 'listview3', 
      icon: Icons.list_alt_rounded, 
      name: 'ListView tipo 3', 
      screen: const Listview3Screen()),
      MenuOption(
      route: 'alert', 
      icon: Icons.warning, 
      name: 'Alert', 
      screen: const AlertScreen()),
      MenuOption(
      route: 'card', 
      icon: Icons.card_giftcard, 
      name: 'Card', 
      screen: const CardScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes(){
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for(final option in MenuOptions){
      appRoutes.addAll({option.route : (BuildContext context)=> option.screen});
    }

    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings){
        return MaterialPageRoute(
          builder: (context)=>const AlertScreen()
        );
      }


}