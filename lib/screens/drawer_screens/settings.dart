import 'package:custom_switch/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/theme/colors.dart';
import 'package:flutter_switch/flutter_switch.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool notifyValue = false;
  bool updateValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(251, 251, 253, 1),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Settings",
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Expanded(
                  child: ListView(
                    children: [
                      ListTile(
                        onTap: () {},
                        leading: const Icon(Icons.mail, color: themeOrange),
                        title: const Text(
                          'Email Support',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color.fromRGBO(12, 3, 1, 0.5),
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: const Icon(Icons.question_mark_rounded,
                            color: themeOrange),
                        title: const Text(
                          'FAQ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color.fromRGBO(12, 3, 1, 0.5),
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: const Icon(Icons.lock, color: themeOrange),
                        title: const Text(
                          'Privacy Statement',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        trailing: const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Color.fromRGBO(12, 3, 1, 0.5),
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: const Icon(
                          Icons.notifications,
                          color: themeOrange,
                        ),
                        title: const Text(
                          'Notifications',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        trailing: FlutterSwitch(
                          height: 31.0,
                          width: 51.0,
                          padding: 4.0,
                          toggleSize: 25.0,
                          borderRadius: 15.0,
                          activeColor: themeOrange,
                          value: notifyValue,
                          onToggle: (value) {
                            setState(() {
                              notifyValue = value;
                            });
                          },
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: const Icon(Icons.system_update_alt,
                            color: themeOrange),
                        title: const Text(
                          'Update',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        trailing: FlutterSwitch(
                          height: 31.0,
                          width: 51.0,
                          padding: 4.0,
                          toggleSize: 25.0,
                          borderRadius: 15.0,
                          activeColor: themeOrange,
                          value: updateValue,
                          onToggle: (value) {
                            setState(() {
                              updateValue = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
