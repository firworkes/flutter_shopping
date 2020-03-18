import 'package:flutter/material.dart';
import '../pages/Routerdemo.dart';
import '../pages/RouteDemo2.dart';
import '../pages/Search.dart';
import '../tabs/tabs.dart';

final Map routes = {
        '/': (context) => Tabs(),
        '/search': (context) => Search(),
        '/routerdemo': (context,{arguments}) => RouterDemo(arguments:arguments),
        '/routedemo2': (context,{arguments}) => RouteDemo2(arguments:arguments)
      };

var onGenerateRoute=(RouteSettings settings) {
      // 统一处理
      final String name = settings.name; 
      final Function pageContentBuilder = routes[name];
      if (pageContentBuilder != null) {
        if (settings.arguments != null) {
          final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context, arguments: settings.arguments));
          return route;
        }else{
            final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context));
            return route;
        }
      }
};