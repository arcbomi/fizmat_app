// ignore_for_file: prefer_const_constructors

import 'package:fizmat_app/widgets/fizLoginContainer.dart';
import 'package:flutter/material.dart';

class FizLoginForm extends StatelessWidget {
  const FizLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return FizLoginContainer(
      child: Column(
        children: [
          Text('hello'),
        ],
      ),
    );
  }
}


//通过谷歌登录账户
class FizLoginButton extends StatefulWidget {
  const FizLoginButton({super.key});

  @override
  State<FizLoginButton> createState() => _FizLoginButtonState();
}

class _FizLoginButtonState extends State<FizLoginButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
                  icon: Icon(Icons.login,),
                  label: Text(
                    'Sign in with Google',
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1d2031),
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  onPressed: () {},
                );
  }
  
}


//是否同意用户协议
class FizAgreeTerms extends StatefulWidget {
  const FizAgreeTerms({super.key});

  @override
  State<FizAgreeTerms> createState() => _FizAgreeTermsState();
}

class _FizAgreeTermsState extends State<FizAgreeTerms> {

  bool _agreedToTerms = false;
  
  void _toggleAgreement(bool? value) {
    setState(() {
      _agreedToTerms = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _agreedToTerms,
                  onChanged: _toggleAgreement,
                ),
                Flexible(
                  child: Text(
                    'Agree to fizmat-app\'s unfair terms.',
                  ),
                ),
              ],
            );
  }
}





