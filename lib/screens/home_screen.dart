import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int _currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Expanded(
              flex: 2,
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
                          Icon(
                            Icons.notifications_active,
                            color: Colors.grey.shade700,
                          ),
                          const SizedBox(width: 20),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          const SizedBox(width: 20),
                          Icon(
                            Icons.cabin,
                            color: Colors.grey.shade700,
                          ),
                          const SizedBox(width: 20),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Hi ${widget.name},"),
                                  const Text("Here's your spending dashboard")
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
                                    children: [Text("data"), Text("data")],
                                  ),
                                  const VerticalDivider(
                                    color: Colors.grey,
                                    thickness: 2,
                                  ),
                                  Column(
                                    children: [Text("data"), Text("data")],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [Text("Send Again")],
                      ),
                      const SizedBox(height: 20),
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
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
              ),
              label: 'Dashboard'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.qr_code,
              ),
              label: 'Scan Receipt'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.wallet,
              ),
              label: 'Send & Request'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
              ),
              label: 'Settings'),
        ],
      ),
    );
  }
}
