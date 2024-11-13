import 'package:app/app.dart';
import 'package:flutter/material.dart';
import 'package:widget_module/widget_module.dart';

GoRoute get collectRoute => GoRoute(
  path: AppRoute.collection.path,
  builder: (_, __) => const CollectPageAdapter(),
  routes: [
    GoRoute(path: AppRoute.collectionDetail.path, builder: collectionDetailBuilder),
  ],
);

Widget collectionDetailBuilder(BuildContext context, GoRouterState state) {
  Object? extra = state.extra;
  CategoryModel? model;
  if (extra is CategoryModel) {
    model = extra;
  }
  return CategoryShow(model: model!);
}
