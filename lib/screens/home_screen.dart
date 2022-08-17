import 'package:blupe/data/contacts_data.dart';
import 'package:blupe/model/contacts_model.dart';
import 'package:blupe/screens/settings_screen.dart';
import 'package:blupe/widgets/custom_contacts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<ContactsModel> contactsList = <ContactsModel>[];
  @override
  void initState() {
    super.initState();
    contactsList = getContacts();
  }

  int _selectedIndex = 0;
  int _currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
              flex: 3,
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.grey.shade700,
                            ),
                            onPressed: () => Get.back(),
                          ),
                          Icon(
                            Icons.notifications_active,
                            color: Colors.grey.shade700,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.network(
                                    "https://images.unsplash.com/photo-1517849845537-4d257902454a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80",
                                    fit: BoxFit.cover)),
                          ),
                          const SizedBox(width: 20),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Hi ${widget.name},",
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    "Here's your spending dashboard",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width - 40,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade50,
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IntrinsicHeight(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Text(
                                        '\$204.5',
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Your Balance",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  ),
                                  const SizedBox(width: 25),
                                  const VerticalDivider(
                                    color: Colors.grey,
                                    thickness: 2,
                                  ),
                                  const SizedBox(width: 25),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Text(
                                        '30',
                                        style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        "Last Days",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        children: const [
                          Text(
                            "Send Again",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(height: 30),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: SingleChildScrollView(
                            child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 70,
                                child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: contactsList.length,
                                    itemBuilder: ((context, index) {
                                      return CustomContacts(
                                        imageUrl: contactsList[index].imageUrl,
                                        categoryName:
                                            contactsList[index].contactName,
                                      );
                                    })),
                              ),
                            ],
                          ),
                        )),
                      )
                    ],
                  ),
                ),
              )),
          Expanded(child: Container())
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        onTap: (value) => setState(() {
          _currentTab = value;
        }),
        currentIndex: _currentTab,
        enableFeedback: true,
        items: [
          const BottomNavigationBarItem(
              icon: const Icon(
                Icons.dashboard,
              ),
              label: 'Dashboard\n'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.qr_code,
              ),
              label: 'Scan Receipt\n'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.wallet,
              ),
              label: 'Send &\nRequest'),
          BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () => Get.to(() => SettingScreen(myName: widget.name)),
                child: const Icon(
                  Icons.settings,
                ),
              ),
              label: 'Settings\n'),
        ],
      ),
    );
  }
}
