import 'package:flutter/material.dart';
import 'widgets/expenses.dart';
import 'package:flutter/services.dart'; // we can use it to lock the screen orientation

var kColorScheme =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 96, 59, 181));

var kDarkColorScheme = ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 3, 54, 68));

void main() {
  // WidgetsFlutterBinding.ensureInitialized(); // for making sure that locking the orientation and than running the app works as intended

  // SystemChrome.setPreferredOrientations([
  //   DeviceOrientation.portraitUp,
  // ]).then((fn) {
  runApp(
//   (const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
      MaterialApp(
          darkTheme: ThemeData.dark().copyWith(
              useMaterial3: true,
              colorScheme: kDarkColorScheme,
              cardTheme: const CardTheme().copyWith(
                color: kDarkColorScheme.secondaryContainer,
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                    backgroundColor: kDarkColorScheme.primaryContainer,
                    foregroundColor: kDarkColorScheme.onPrimaryContainer),
              ),
              textTheme: ThemeData().textTheme.copyWith(
                      titleLarge: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kDarkColorScheme.onSecondaryContainer,
                    fontSize: 16,
                  ))),
          // theme: ThemeData(useMaterial3: true),
          // we can override selected aspects of theme with copywith

          theme: ThemeData().copyWith(
              useMaterial3: true,
              colorScheme: kColorScheme,
              appBarTheme: const AppBarTheme().copyWith(
                backgroundColor: kColorScheme.onPrimaryContainer,
                foregroundColor: kColorScheme.primaryContainer,
              ),
              cardTheme: const CardTheme().copyWith(
                color: kColorScheme.secondaryContainer,
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              ),
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kColorScheme.primaryContainer,
                ),
              ),
              textTheme: ThemeData().textTheme.copyWith(
                      titleLarge: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kColorScheme.onSecondaryContainer,
                    fontSize: 16,
                  ))),
          //scaffoldBackgroundColor: Color.fromARGB(225, 220, 189, 252)),
          debugShowCheckedModeBanner: false,
          //themeMode: ThemeMode.dark,
          home: const Expenses()));
  //);
}
