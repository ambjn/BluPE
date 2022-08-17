import 'package:blupe/data/settings_data.dart';
import 'package:blupe/model/settings_model.dart';
import 'package:blupe/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatefulWidget {
  SettingScreen({Key? key, required this.myName}) : super(key: key);
  String myName;

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  List<SettingsModel> settingsList = <SettingsModel>[];
  var setting;
  @override
  void initState() {
    super.initState();
    settingsList = getSettings();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.fromLTRB(7.5, 5, 7.5, 0),
            child: Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
              ),
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () => Get.back(),
                        child: Text(
                          "Log Out",
                          style: TextStyle(
                              color: Colors.blueAccent.shade700, fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.network(
                                "https://images.unsplash.com/photo-1517849845537-4d257902454a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80",
                                fit: BoxFit.cover)),
                      ),
                      const SizedBox(height: 25),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            widget.myName,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "jainanuamber@gmail.com",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          )),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(7.5, 5, 7.5, 0),
                child: Container(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: TextField(
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                          maxLines: 1,
                          cursorColor: Colors.blueGrey,
                          decoration: InputDecoration(
                            isCollapsed: true,
                            filled: true,
                            fillColor: Colors.grey.shade200,
                            prefixIcon: const Icon(Icons.search, size: 25),
                            counterText: "",
                            hintText: 'Search Settings',
                            hintStyle: const TextStyle(fontSize: 18),
                            contentPadding: const EdgeInsets.all(15),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                          ),
                          onChanged: searchTitle,
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: settingsList.length,
                            itemBuilder: ((context, index) {
                              setting = settingsList[index];
                              return CustomListTile(
                                prefixIcon: setting.prefixIcon,
                                myTitle: setting.myTitle.toString(),
                                trailingIcon: setting.trailingIcon,
                              );
                            })),
                      )
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }

  void searchTitle(String query) {
    var suggestions = settingsList.where((note) {
      final settingsTitle = setting.myTitle.toLowerCase();
      final input = query.toLowerCase();
      return settingsTitle.contains(input);
    }).toList();
    setState(() => settingsList = suggestions);
  }
}
