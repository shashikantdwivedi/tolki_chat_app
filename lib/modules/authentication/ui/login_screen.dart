import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:tolki_chat_app/core/config/config.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: XColors.base,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                SvgPicture.asset('assets/icons/logo.svg', height: 34),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Hi! welcome to Tolki Chat',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Create your account',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: const Color(0xFF223159).withOpacity(0.6)),
                ),
                const SizedBox(
                  height: 50,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Enter your phone number',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: const Color(0xFF223159).withOpacity(0.9)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    IntlPhoneField(
                      style: Theme.of(context).textTheme.bodyMedium,
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        labelStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(color: XColors.text.withOpacity(0.6)),
                        border: InputBorder.none,
                      ),
                      initialCountryCode: 'IN',
                      onChanged: (phone) {},
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Securing your personal information is our priority.',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: const Color(0xFF223159).withOpacity(0.6)),
                    ),
                  ],
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          backgroundColor: XColors.primary,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          padding: const EdgeInsets.symmetric(vertical: 12)),
                      child: Text(
                        'Next',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.w600, color: XColors.base),
                      )),
                ),
                const SizedBox(
                  height: 33,
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
