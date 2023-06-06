import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
FlutterLocalNotificationsPlugin notificationsPlugin=FlutterLocalNotificationsPlugin();
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  AndroidInitializationSettings androidSettings=AndroidInitializationSettings("@mipmap/ic_launcher");
  DarwinInitializationSettings IOSSetting=DarwinInitializationSettings(
    requestAlertPermission: true,
    requestBadgePermission: true,
    requestCriticalPermission: true,
    requestSoundPermission: true,
    defaultPresentAlert: true,
    defaultPresentBadge: true,
    defaultPresentSound: true,
  );
  InitializationSettings initializationSettings=InitializationSettings(
    android: androidSettings,
    iOS: IOSSetting
  );
  bool ?initialiaze=await notificationsPlugin.initialize(initializationSettings);
print("Notification:$initialiaze");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void notification() async{
    AndroidNotificationDetails androidNotification=AndroidNotificationDetails(
      "Test",

      "Zohaib",
      priority: Priority.max,
      importance:Importance.max,

    );
    DarwinNotificationDetails iossetting=DarwinNotificationDetails(
        presentAlert: true,
        presentBadge: true,
        presentSound: true
    );
    NotificationDetails notificationDetails=NotificationDetails(
      android: androidNotification,
      iOS: iossetting,
    );
    await notificationsPlugin.show(0,"Test", "This is test body", notificationDetails);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body:
        FloatingActionButton(
          onPressed: notification,
          child: Icon(Icons.notification_important,size: 23,),
        )
    );
  }
}
