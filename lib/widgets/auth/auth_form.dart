import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Form(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty || !value.contains('@')) {
                        return ' Please enter a valid email address.';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email Address',
                    ),
                  ), //Email field
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty || value.length < 4) {
                        return 'Username length must be at least 4 characters';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Username',
                    ),
                  ), //Username
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty || value.length < 7) {
                        return 'Password should be atleast 7 characters long';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    obscureText: true,
                  ), //Password
                  SizedBox(height: 12),
                  RaisedButton(
                    child: Text('Login'),
                    onPressed: () {},
                  ),
                  FlatButton(
                      textColor: Theme.of(context).primaryColor,
                      child: Text('Create New Account'),
                      onPressed: () {}),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
