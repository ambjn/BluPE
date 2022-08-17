import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
              child: Container(
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
                )
              ],
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
