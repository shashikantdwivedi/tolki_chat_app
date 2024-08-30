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
            headlineLarge: GoogleFonts.roboto(
                fontSize: 48, color: Colors.black, fontWeight: FontWeight.bold),
            headlineMedium: GoogleFonts.roboto(
                fontSize: 32,
                color: const Color(0xFF2A2A2A),
                fontWeight: FontWeight.bold),
            headlineSmall: GoogleFonts.roboto(
                fontSize: 24,
                color: const Color(0xFF2A2A2A),
                fontWeight: FontWeight.bold),
            bodyLarge: GoogleFonts.roboto(fontSize: 18, color: Colors.black),
            bodyMedium: GoogleFonts.roboto(fontSize: 16, color: Colors.black),
            bodySmall: GoogleFonts.roboto(fontSize: 14, color: Colors.black),
          )),
      initialRoute: Routes.splash,
      onGenerateRoute: Routing.allRoutes,
      navigatorObservers: [FlutterSmartDialog.observer],
      builder: FlutterSmartDialog.init(),
    );
  }
}
