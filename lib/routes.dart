import 'package:flutter/material.dart';

import 'pages/profile_page.dart';
import 'pages/notifications_page.dart';
import 'pages/settings_page.dart';

void onButtonTapped(BuildContext context, String pageID, String activityID) {
  switch (pageID) {
    case "home":
      Navigator.pop(context);
      break;
    case "profile":
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const ProfilePage()));
      break;
    case "notifications":
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const NotificationsPage()));
      break;
    case "settings":
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const SettingsPage()));
      break;
  }
}
