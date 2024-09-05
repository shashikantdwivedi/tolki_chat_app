import 'package:flutter/material.dart';

import '../../../core/config/config.dart';

class AccountSettingsScreen extends StatefulWidget {
  const AccountSettingsScreen({super.key});

  @override
  State<AccountSettingsScreen> createState() => _AccountSettingsScreenState();
}

class _AccountSettingsScreenState extends State<AccountSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title:
              Text('Account', style: Theme.of(context).textTheme.headlineLarge),
        ),
        body: Column(
          children: [
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: XColors.base.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(12)),
                child: Image.asset(
                  'assets/icons/account_privacy.png',
                  width: 24,
                  height: 24,
                ),
              ),
              title:
                  Text('Privacy', style: Theme.of(context).textTheme.bodyLarge),
            ),
            const SizedBox(
              height: 25,
            ),
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: XColors.base.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(12)),
                child: Image.asset(
                  'assets/icons/account_security.png',
                  width: 24,
                  height: 24,
                ),
              ),
              title: Text('Security',
                  style: Theme.of(context).textTheme.bodyLarge),
            ),
            const SizedBox(
              height: 25,
            ),
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: XColors.base.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(12)),
                child: Image.asset(
                  'assets/icons/account_change_number.png',
                  width: 24,
                  height: 24,
                ),
              ),
              title: Text('Change Number',
                  style: Theme.of(context).textTheme.bodyLarge),
            ),
          ],
        ),
      ),
    );
  }
}
