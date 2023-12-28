import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'tools/tools.dart';

class UserScreen extends StatefulWidget {
  UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final TextEditingController _addressTextControler =
      TextEditingController(text: '');

  @override
  void dispose() {
    _addressTextControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 50,
        ),
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Hi, ',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.blueGrey),
                  children: [
                    TextSpan(
                      text: 'My name',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          print('name pressed');
                        },
                    ),
                  ],
                ),
              ),
              const SizedBoxHeight(),
              const Text('test@test.com'),
              const SizedBoxHeight(),
              Container(
                height: 2,
                color: Colors.black12,
              ),
              const SizedBox(
                height: 20,
              ),
              UserSelection(
                iconSelection: IconlyLight.user2,
                primaryText: 'Adress',
                secondaryText: 'My Adresses: 2',
                onTap: _showAddressDialog,
              ),
              const SizedBox(
                height: 14,
              ),
              UserSelection(
                iconSelection: IconlyLight.wallet,
                primaryText: 'Orders',
                secondaryText: '',
                onTap: () {},
              ),
              const SizedBox(
                height: 14,
              ),
              UserSelection(
                iconSelection: IconlyLight.heart,
                primaryText: 'WishList',
                secondaryText: '',
                onTap: () {},
              ),
              const SizedBox(
                height: 14,
              ),
              UserSelection(
                iconSelection: IconlyLight.show,
                primaryText: 'Viewed',
                secondaryText: '',
                onTap: () {},
              ),
              const SizedBox(
                height: 14,
              ),
              UserSelection(
                iconSelection: IconlyLight.lock,
                primaryText: 'Forget Password',
                secondaryText: '',
                onTap: () {
                  print('object');
                },
              ),
              const SizedBox(
                height: 14,
              ),
              UserSelection(
                iconSelection: IconlyLight.logout,
                primaryText: 'Logout',
                secondaryText: '',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showAddressDialog() async {
    await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Update'),
            content: const TextField(
              // onChanged: (value) {
              //   print('address: ${_addressTextControler.text}');
              // },
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Your address',
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {},
                child: const Text('Update'),
              ),
            ],
          );
        });
  }
}

class SizedBoxHeight extends StatelessWidget {
  const SizedBoxHeight({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 8,
    );
  }
}
