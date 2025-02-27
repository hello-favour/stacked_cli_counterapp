import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_counterapp/services/counter_service.dart';
import 'package:stacked_counterapp/views/counter_home_view.dart';
import 'package:stacked_counterapp/views/counter_view.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: CounterView, initial: true),
    MaterialRoute(page: CounterHomeView),
  ],
  dependencies: [
    // Singleton(classType: NavigationService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: CounterService),
  ],
)
class AppSetup {}
