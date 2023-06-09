import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  final TextEditingController _addressController =
      TextEditingController(text: "");

  @override
  void dispose() {
    _addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                  text: 'Hi, ',
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'User Name',
                        style: const TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // ignore: avoid_print
                            print("My name is pressed");
                          }),
                  ]),
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              thickness: 3,
            ),
            _listTile(
              title: 'Address',
              subtitle: 'Subtitle',
              icon: IconlyLight.profile,
              onPressed: () async {
                await _showAddressDialog();
              },
            ),
            _listTile(
              title: 'Orders',
              icon: IconlyLight.bag2,
              onPressed: () {},
            ),
            _listTile(
              title: 'Wishlist',
              icon: IconlyLight.heart,
              onPressed: () {},
            ),
            _listTile(
              title: 'Forgot Password',
              icon: IconlyLight.unlock,
              onPressed: () {},
            ),
            _listTile(
              title: 'Viewed',
              icon: IconlyLight.show,
              onPressed: () {},
            ),
            _listTile(
              title: 'Logout',
              icon: IconlyLight.logout,
              onPressed: () async{
                await _showLogoutDialog();
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showAddressDialog() async {
    await showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: const Text("Update Address"),
            content: TextField(
              onChanged: (value) {
                _addressController.text = value;
              },
              controller: _addressController,
              maxLines: 5,
              decoration: const InputDecoration(hintText: "Your Address"),
            ),
            actions: [
              TextButton(onPressed: () {}, child: const Text('Update')),
            ],
          );
        }));
  }

  Future<void> _showLogoutDialog() async {
    await showDialog(
        context: context,
        builder: ((context) {
          return AlertDialog(
            title: const Text("Logout"),
            content: const Text('Do You want to Logout?'),
            actions: [
              TextButton(onPressed: () {}, child: const Text('Cancel')),
              TextButton(onPressed: () {}, child: const Text('Logout')),
            ],
          );
        }));
  }

  Widget _listTile({
    required String title,
    String? subtitle,
    required IconData icon,
    required Function onPressed,
  }) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      ),
      subtitle: Text(subtitle ?? ""),
      leading: Icon(icon),
      trailing: const Icon(Icons.arrow_forward_ios_rounded),
      onTap: () {
        onPressed();
      },
    );
  }
}
