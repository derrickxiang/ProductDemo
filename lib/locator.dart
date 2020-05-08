

import 'package:get_it/get_it.dart';

import './core/services/api.dart';
import './core/viewmodels/CRUDModel.dart';

final locator = GetIt.instance;

void setupLocator() {

  locator.registerLazySingleton(() => Api('products'));
  locator.registerLazySingleton<CRUDModel>(() => CRUDModel());
}