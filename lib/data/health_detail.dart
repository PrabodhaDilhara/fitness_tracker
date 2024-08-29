import 'package:fitness_tracker/models/health_activity_model.dart';

class HealthDetail {
  final healthDetail = [
    HealthModel(
      icon: "assets/icons/burn.png",
      value: "230",
      title: "Water Levels",
    ),
    HealthModel(
      icon: "assets/icons/steps.png",
      value: "7.8",
      title: "Miles Steps",
    ),
    HealthModel(
      icon: "assets/icons/distance.png",
      value: "67m",
      title: "Covered distance",
    ),
    HealthModel(icon: "assets/icons/sleep.png", value: "7h", title: "Sleep")
  ];
}
