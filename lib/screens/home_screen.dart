// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:hostel_finder/Widgets/drawer_header.dart';
import 'package:hostel_finder/screens/accounts.dart';
import 'package:hostel_finder/screens/contacts.dart';
import 'package:hostel_finder/screens/log_out.dart';
import 'package:hostel_finder/screens/notifications.dart';
import 'package:hostel_finder/screens/privacy.dart';
import 'package:hostel_finder/screens/send_feedback.dart';
import 'package:hostel_finder/screens/settings.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  State<Dashboard> createState() => _DashboardState();
}
class _DashboardState extends State<Dashboard> {
  var currentPage = DrawerSections.accounts;

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_typing_uninitialized_variables
    var container;
    if (currentPage == DrawerSections.accounts) {
      container = Account();
    } else if (currentPage == DrawerSections.contacts) {
      container = Contact();
    } else if (currentPage == DrawerSections.notifications) {
      container = Notifications();
    } else if (currentPage == DrawerSections.privacy_policy) {
      container = Privacy();
    } else if (currentPage == DrawerSections.send_feedback) {
      container = SendFeedback();
    } else if (currentPage == DrawerSections.settings) {
      container = Setting();
    } else if (currentPage == DrawerSections.log_out) {
      container = Log_Out();
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 23, 237, 41),
        title: const Text("Hostel Finder"),
      ),
      body:  Column(
        children: [
          Drawer(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    const Mydrawerheader(),
                    MyDrawerList(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget MyDrawerList() {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          menuItem(1, "accounts", Icons.account_box_outlined,
              currentPage == DrawerSections.accounts ? true : false),
          menuItem(2, "contacts", Icons.contact_mail_rounded,
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(3, "notifications", Icons.notification_add_rounded,
              currentPage == DrawerSections.notifications ? true : false),
          const Divider(
            height: 10,
          ),
          menuItem(4, "privacy", Icons.privacy_tip_rounded,
              currentPage == DrawerSections.privacy_policy ? true : false),
          menuItem(5, "send feedback", Icons.feedback_rounded,
              currentPage == DrawerSections.send_feedback ? true : false),
          const Divider(
            height: 10,
          ),
          menuItem(6, "settings", Icons.settings_accessibility_rounded,
              currentPage == DrawerSections.settings ? true : false),
          menuItem(7, "Log Out", Icons.logout_rounded,
              currentPage == DrawerSections.log_out ? true : false),
        ],
      ),
    );
  }

//  Menu List
  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.accounts;
            } else if (id == 2) {
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              currentPage = DrawerSections.notifications;
            } else if (id == 4) {
              currentPage = DrawerSections.privacy_policy;
            } else if (id == 5) {
              currentPage = DrawerSections.send_feedback;
            } else if (id == 6) {
              currentPage = DrawerSections.settings;
            } else if (id == 7) {
              currentPage = DrawerSections.log_out;
            }
          });
        },
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  accounts,
  contacts,
  notifications,
  settings,
  // ignore: constant_identifier_names
  privacy_policy,
  // ignore: constant_identifier_names
  send_feedback,
  // ignore: constant_identifier_names
  log_out,
}
