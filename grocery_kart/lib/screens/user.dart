import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class User extends StatelessWidget {
  const User({super.key});

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
                        recognizer: TapGestureRecognizer()..onTap = (){
                          // ignore: avoid_print
                          print("My name is pressed");
                        }
                    ),
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
              onPressed: () {},
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
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
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
