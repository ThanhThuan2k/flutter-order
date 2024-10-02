import 'package:flutter/material.dart';
import 'package:flutter_order/widgets/common/InputFields/simple_text_field.dart';
import 'package:getwidget/getwidget.dart';

// ignore: must_be_immutable
class LoginView extends StatelessWidget {
  const LoginView(
      {this.isEmailInvalid = true, this.isPasswordInvalid = false, super.key});

  final bool isEmailInvalid;
  final bool isPasswordInvalid;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('FOOD ORDER',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 27.0,
                    shadows: <Shadow>[
                      Shadow(
                          offset: Offset(1.0, 1.0),
                          blurRadius: 1.0,
                          color: Colors.black)
                    ])),
            const SizedBox(height: 50.0),
            const SizedBox(
                width: 350,
                child: SimpleTextField(
                  hintText: 'Example@email.com',
                  prefixIconData: Icons.person,
                )),
            isEmailInvalid
                ? const SizedBox(height: 2)
                : const SizedBox(height: 0),
            isEmailInvalid
                ? SizedBox(
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: const Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 13,
                          ),
                        ),
                        const Text(
                          'Incorrect email',
                          style: TextStyle(color: Colors.red, fontSize: 13),
                        )
                      ],
                    ))
                : const SizedBox(height: 0),
            const SizedBox(height: 20.0),
            const SizedBox(
                width: 350,
                child: SimpleTextField(
                  obscureText: true,
                  hintText: 'Password',
                  prefixIconData: Icons.lock,
                )),
            isPasswordInvalid
                ? const SizedBox(height: 2)
                : const SizedBox(height: 0),
            isPasswordInvalid
                ? SizedBox(
                    width: 350,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 5),
                          child: const Icon(
                            Icons.error,
                            color: Colors.red,
                            size: 13,
                          ),
                        ),
                        const Text(
                          'Incorrect password',
                          style: TextStyle(color: Colors.red, fontSize: 13),
                        )
                      ],
                    ))
                : const SizedBox(height: 0),
            const SizedBox(
                width: 350,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                        padding: EdgeInsets.all(0.8),
                        child: TextButton(
                          onPressed: null,
                          child: Text(
                            'Forgot Password ?',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 110, 255),
                                fontSize: 15,
                                decoration: TextDecoration.underline,
                                decorationColor:
                                    Color.fromARGB(255, 0, 110, 255)),
                          ),
                        ))
                  ],
                )),
            const SizedBox(height: 10),
            const SizedBox(
              width: 350,
              height: 50,
              child: GFButton(
                onPressed: null,
                text: 'LOGIN',
                textColor: Color(0xFFFFFFFF),
                color: Color.fromARGB(255, 0, 110, 255),
                textStyle: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                type: GFButtonType.solid,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
