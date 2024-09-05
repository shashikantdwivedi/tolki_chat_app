import 'package:flutter/material.dart';
import 'package:tolki_chat_app/core/config/config.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                children: [
                  Text(
                    'Profile',
                    style: Theme.of(context).textTheme.headlineLarge,
                  )
                ],
              ),
            )),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                    hintText: 'Search settings',
                    hintStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: const Color(0xFF999999),
                        ),
                    prefixIcon: Image.asset(
                      'assets/icons/search.png',
                      scale: 2,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none),
                    filled: true,
                    fillColor: const Color(0xFFE6E6E6).withOpacity(0.3)),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: XColors.primary,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                            child: Stack(
                          children: [
                            Container(
                              width: 48,
                              height: 48,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFD9D9D9)),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                width: 18,
                                height: 18,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white),
                                child: Center(
                                  child: Icon(Icons.edit,
                                      size: 14, color: XColors.primary),
                                ),
                              ),
                            )
                          ],
                        )),
                        const SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Antony Santoso',
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge
                                    ?.copyWith(color: Colors.white)),
                            const SizedBox(height: 4),
                            Text('Hey There ! I’m at Gym',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(color: Colors.white)),
                          ],
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(16)),
                      child: const Icon(Icons.qr_code, color: Colors.white),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text('Account Settings',
                  style: Theme.of(context).textTheme.headlineMedium),
              const SizedBox(
                height: 16,
              ),
              Column(
                children: [
                  ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: XColors.base.withOpacity(0.8),
                          shape: BoxShape.circle),
                      child: Image.asset(
                          'assets/icons/profile_settings_profile.png', width: 24, height: 24,),
                    ),
                    title: Text('Account',
                        style: Theme.of(context).textTheme.headlineMedium),
                    subtitle: Text('Privacy, security, change number',
                        style: Theme.of(context).textTheme.bodySmall),
                  ),
                  ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: XColors.base.withOpacity(0.8),
                          shape: BoxShape.circle),
                      child: Image.asset(
                          'assets/icons/profile_settings_notification.png', width: 24, height: 24,),
                    ),
                    title: Text('Notifications',
                        style: Theme.of(context).textTheme.headlineMedium),
                    subtitle: Text('Message, group, ringtones',
                        style: Theme.of(context).textTheme.bodySmall),
                  ),
                  ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: XColors.base.withOpacity(0.8),
                          shape: BoxShape.circle),
                      child: Image.asset(
                          'assets/icons/profile_settings_chart.png', width: 24, height: 24,),
                    ),
                    title: Text('Data & Storage',
                        style: Theme.of(context).textTheme.headlineMedium),
                    subtitle: Text('Network usage, media download',
                        style: Theme.of(context).textTheme.bodySmall),
                  ),
                  ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: XColors.base.withOpacity(0.8),
                          shape: BoxShape.circle),
                      child: Image.asset(
                          'assets/icons/profile_settings_chat.png', width: 24, height: 24,),
                    ),
                    title: Text('Chats',
                        style: Theme.of(context).textTheme.headlineMedium),
                    subtitle: Text('Theme, wallpaper',
                        style: Theme.of(context).textTheme.bodySmall),
                  ),
                  ListTile(
                    leading: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: XColors.base.withOpacity(0.8),
                          shape: BoxShape.circle),
                      child: Image.asset(
                          'assets/icons/profile_settings_friends.png', width: 24, height: 24,),
                    ),
                    title: Text('Invite Friends',
                        style: Theme.of(context).textTheme.headlineMedium),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
