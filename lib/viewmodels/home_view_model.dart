import 'package:myschool/constants/route_names.dart';
import 'package:myschool/locator.dart';
import 'package:myschool/services/navigation_service.dart';
import 'package:myschool/viewmodels/base_model.dart';

class HomeViewModel extends BaseModel {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToCreateView() =>
      _navigationService.navigateTo(CreatePostViewRoute);
}
