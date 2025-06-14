import 'package:banking_dashboard/gen/fonts.gen.dart';

import 'imports.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banking Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: FontFamily.montserrat,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeDashboard(),
    );
  }
}
