import 'package:flutter/material.dart';


class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  bool _passwordVisible = false;
  final TextEditingController _userPasswordController = TextEditingController();
@override
  void initState() {
    super.initState();
_passwordVisible = false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(children: [
            TextFormField(
   keyboardType: TextInputType.text,
   controller: _userPasswordController,
   obscureText: !_passwordVisible,//This will obscure text dynamically
   decoration: InputDecoration(
       labelText: 'Password',
       hintText: 'Enter your password',
       // Here is key idea
       suffixIcon: IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
               _passwordVisible
               ? Icons.visibility
               : Icons.visibility_off,
               color: Theme.of(context).primaryColorDark,
               ),
            onPressed: () {
               // Update the state i.e. toogle the state of passwordVisible variable
               setState(() {
                   _passwordVisible = !_passwordVisible;
               });
             },
            ),
          ),
        ),
          ],),
        ),
      ),
    );
  }
}
