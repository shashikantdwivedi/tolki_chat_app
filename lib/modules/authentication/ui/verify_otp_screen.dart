import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../core/config/config.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({Key? key}) : super(key: key);

  @override
  _VerifyOtpScreenState createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: XColors.base,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 86,
                ),
                Text(
                  'Verify Phone',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Code has been sent to +6281375112234',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: 32,
                ),
                OtpTextField(
                  fieldWidth: 75,
                  fieldHeight: 56,
                  textStyle: Theme.of(context)
                      .textTheme
                      .headlineLarge
                      ?.copyWith(color: XColors.text),
                  numberOfFields: 4,
                  cursorColor: XColors.primary,
                  borderColor: XColors.primary,
                  enabledBorderColor: XColors.primary,
                  borderRadius: BorderRadius.circular(16),
                  showFieldAsBox: true, // end onSubmit
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Didn’t get OTP Code ?',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  'Resend Code',
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(color: XColors.primary),
                ),
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
                        'Verify',
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
