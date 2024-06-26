import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Widget004Screen extends StatefulWidget {
  const Widget004Screen({super.key});

  @override
  State<Widget004Screen> createState() => _Widget004ScreenState();
}

class _Widget004ScreenState extends State<Widget004Screen> {
  final urlLink = Uri.parse("https://github.com/vishag002");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text("URL Launcher"),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.lightGreen),
          ),
          onPressed: () {
            launchUrl(
                // browserConfiguration: BrowserConfiguration(showTitle: false),
                mode: LaunchMode.inAppWebView,
                urlLink,
                webViewConfiguration: WebViewConfiguration());
          },
          child: Text("data"),
        ),
      ),
    );
  }
}
