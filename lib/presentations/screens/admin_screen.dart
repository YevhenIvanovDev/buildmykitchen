import 'package:build_my_kitchen/presentations/designs/colors.dart';
import 'package:build_my_kitchen/presentations/designs/gradient_background.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AdminScreen extends StatefulWidget {
  static const routeName = 'admin_screen';
  @override
  _AdminScreenState createState() => _AdminScreenState();
}

class _AdminScreenState extends State<AdminScreen> {
  final GlobalKey _formkey = GlobalKey();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _showPassword = false;

  final auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Adminbereich',
          style: Theme.of(context).textTheme.headline1,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
          color: KitchenColors.corp,
        ),
      ),
      body: BackGroundGradient(
        child: FormBuilder(
            key: _formkey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300,
                  child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: _emailController,
                      decoration: InputDecoration(
                        errorStyle: TextStyle(color: KitchenColors.cherry),
                        labelText: 'Benutzeremail',
                        labelStyle: TextStyle(color: KitchenColors.inkBright),
                        hintText: 'Email',
                        suffixIcon: Icon(
                          Icons.person,
                          color: KitchenColors.inkBright,
                        ),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email benötigt';
                        }
                        return null;
                      }),
                ),
                Container(
                  width: 300,
                  child: TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Passwort benötigt';
                      }
                      return null;
                    },
                    controller: _passwordController,
                    obscureText: !_showPassword,
                    decoration: InputDecoration(
                        errorStyle: TextStyle(color: KitchenColors.cherry),
                        labelText: 'Passwort',
                        labelStyle: TextStyle(color: KitchenColors.inkBright),
                        hintText: 'Passwort',
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _showPassword = !_showPassword;
                            });
                          },
                          icon: const Icon(Icons.remove_red_eye),
                          color: KitchenColors.inkBright,
                        )),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          auth.signInWithEmailAndPassword(
                              email: _emailController.text,
                              password: _passwordController.text);
                        },
                        child: Text(
                          'Einloggen',
                          style: TextStyle(
                            color: KitchenColors.corp,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 1.5,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: KitchenColors.inkDark)),
                    const SizedBox(
                      width: 30,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'Registrieren',
                          style: TextStyle(
                            color: KitchenColors.corp,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                            letterSpacing: 1.5,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: KitchenColors.inkDark)),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
