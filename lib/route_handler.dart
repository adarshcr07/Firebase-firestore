import 'package:flutter/material.dart';
import 'package:firestore_database/appt_model.dart';
import 'package:firestore_database/screens/admin_screen.dart';
import 'package:firestore_database/screens/appt_details.dart';
import 'package:firestore_database/screens/login_page.dart';
import 'package:firestore_database/screens/user_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case '/user':
        return MaterialPageRoute(
            builder: (_) => const UserHomePage(), settings: settings);
      case '/admin':
        return MaterialPageRoute(
            builder: (_) => const AdminHomePage(), settings: settings);
      case '/details':
        return MaterialPageRoute(
            builder: (_) => AppointmentDetails(args as Appointment));
      default:
        return MaterialPageRoute(builder: (_) => const LoginPage());
    }
  }
}
