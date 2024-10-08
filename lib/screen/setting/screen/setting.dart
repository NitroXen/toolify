// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:toolify/screen/setting/screen/about_toolify.dart';
import 'package:toolify/screen/setting/screen/app_information_page.dart';
import 'package:toolify/screen/setting/screen/change_log_page.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
                    Card(
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (b) => const AppInformationPage(),
                  ),
                );
              },
              title: const Text('App Information'),
              trailing: const Icon(Icons.info_rounded),
            ),
          ),
                    Card(
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (b) => const AboutToolify(),
                  ),
                );
              },
              title: const Text('About Toolify'),
              trailing: const Icon(Icons.info_rounded),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (b) => const ChangeLogPage(),
                  ),
                );
              },
              title: const Text('Changelog'),
              trailing: const Icon(Icons.history),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () async {
                String privacyUrl = 'https://sites.google.com/view/toolify-hub/home';
                final Uri url = Uri.parse(privacyUrl);
                if (await canLaunch(url.toString())) {
                  await launch(url.toString());
                } else {
                  await launch(url.toString());
                }
              },
              title: const Text('Privacy Policy'),
              trailing: const Icon(Icons.privacy_tip),
            ),
          ),
        ],
      ),
    );
  }
}
