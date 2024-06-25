import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:wifi_flutter_vconnex/wifi_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _ssid = 'Unknown';

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    String ssid;
    try {
      ssid = await PluginWifiConnect.ssid ?? '';
    } on PlatformException {
      ssid = 'Failed to get ssid';
    }
    if (!mounted) return;

    setState(() {
      _ssid = ssid;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Plugin example app'),
          ),
          body: Center(
            child: Text(
              'Network SSID: $_ssid\n',
              style: TextStyle(),
            ),
          ),
        ),
      ),
    );
  }
}
