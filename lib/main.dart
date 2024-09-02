import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'core/config/config.dart';
import 'core/providers/connectivity.dart';
import 'core/routing/routing.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ConnectivityProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      Provider.of<ConnectivityProvider>(context, listen: false)
          .syncConnectivityStatus();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tolki Chat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: TextTheme(
            headlineLarge: GoogleFonts.dmSans(
                fontSize: 24, color: XColors.text, fontWeight: FontWeight.w600),
            headlineMedium: GoogleFonts.dmSans(
                fontSize: 20,
                color: XColors.text,
                fontWeight: FontWeight.bold),
            bodyLarge: GoogleFonts.dmSans(fontSize: 16, color: XColors.text),
            bodyMedium: GoogleFonts.dmSans(fontSize: 14, color: XColors.text),
            bodySmall: GoogleFonts.dmSans(fontSize: 12, color: XColors.text),
          )),
      initialRoute: Routes.profileSetup,
      onGenerateRoute: Routing.allRoutes,
      navigatorObservers: [FlutterSmartDialog.observer],
      builder: FlutterSmartDialog.init(),
    );
  }
}
