import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kz_auth_profile/screens/login_page.dart';

import '../widgets/avatar_widget.dart';

class ProfilePage extends StatefulWidget {
  final User user;

  const ProfilePage({super.key, required this.user});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final bool _isSendingVerification = false;
  bool _isSigningOut = false;
  int _currentIndex =
      3; // Index of the selected item in the bottom navigation bar

  late User _currentUser;

  @override
  void initState() {
    _currentUser = widget.user;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.palette),
            label: 'Лента',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Карта',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Избранное',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        Widget child;
        switch (index) {
          case 0:
            child =
                const Placeholder(); // Replace Placeholder with the actual content of the "Palette" screen
            break;
          case 1:
            child =
                const Placeholder(); // Replace Placeholder with the actual content of the "Map" screen
            break;
          case 2:
            child =
                const Placeholder(); // Replace Placeholder with the actual content of the "Favorites" screen
            break;
          case 3:
            child = buildProfileContent();
            break;
          default:
            child = Container();
        }
        return CupertinoTabView(builder: (context) => child);
      },
    );
  }

  Widget buildProfileContent() {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Профиль'),
      ),
      child: Container(
        color: const Color.fromRGBO(220, 220, 220, 0.5),
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 36.0),
                const AvatarWidget(),
                const SizedBox(height: 32.0),
                Text(
                  '${_currentUser.displayName}',
                  style:
                      CupertinoTheme.of(context).textTheme.textStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: CupertinoTheme.of(context)
                                    .textTheme
                                    .textStyle
                                    .fontSize! *
                                2.5,
                          ),
                ),
                const SizedBox(height: 32.0),
                Text(
                  '${_currentUser.email}',
                  style: CupertinoTheme.of(context).textTheme.textStyle,
                ),
                const SizedBox(height: 32.0),
                _isSigningOut
                    ? const CupertinoActivityIndicator()
                    : Container(
                        decoration: const BoxDecoration(
                          color: Color(
                              0xFFF0F0F0), // Use Color(0xFFF0F0F0) for a lighter shade of gray
                        ),
                        padding: const EdgeInsets.only(left: 16.0),
                        width: double.infinity,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.red,
                            ),
                            onPressed: () async {
                              setState(() {
                                _isSigningOut = true;
                              });
                              await FirebaseAuth.instance.signOut();
                              setState(() {
                                _isSigningOut = false;
                              });
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                            },
                            child: const Text(
                              'Выйти',
                              style: TextStyle(
                                fontSize:
                                    18.0, // Increase the font size as desired
                              ),
                            ),
                          ),
                        ),
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
