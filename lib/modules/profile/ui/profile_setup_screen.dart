import 'package:flutter/material.dart';

import '../../../core/config/config.dart';

class ProfileSetupScreen extends StatefulWidget {
  const ProfileSetupScreen({Key? key}) : super(key: key);

  @override
  _ProfileSetupScreenState createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends State<ProfileSetupScreen> {
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
            const SizedBox(),
            Column(
              children: [
                Text(
                  'Profile Setup',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'Please enter your name and an optional profile picture',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: const Color(0xFF223159).withOpacity(0.6)),
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: const Color(0xFFD9D9D9),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                          bottom: 10,
                          right: 0,
                          child: Container(
                        height: 33,
                        width: 33,
                        decoration: BoxDecoration(
                          color: XColors.primary,
                          borderRadius: BorderRadius.circular(60),
                        ),
                        child: Icon(
                          Icons.edit,
                          color: XColors.base,
                          size: 22,
                        ),
                      ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextField(
                  style: Theme.of(context).textTheme.bodyMedium,
                  decoration: InputDecoration(
                    labelText: 'Antonio Elizabeth Graham Bell',
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    suffixIcon: Icon(Icons.emoji_emotions_outlined, color: XColors.primary,),
                    labelStyle: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: const Color(0xFF223159).withOpacity(0.9)),
                  ),
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
