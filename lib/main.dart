import 'package:flutter/material.dart';
import 'package:myapp/widgets/inicio.dart';
import 'package:myapp/widgets/restaurantes.dart';
import 'package:myapp/widgets/littlecaesars.dart';

void main() {
  runApp(const AppRappi());
}

class AppRappi extends StatelessWidget {
  const AppRappi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rappi Carlos',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Colors.white,
      ),
      // Definimos las rutas de la aplicación
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/restaurantes': (context) => const RestaurantesScreen(),
        '/littlecaesars': (context) => const LittleCaesarsScreen(),
      },
    );
  }
}

// --- MIXIN PARA DEGRADADOS (Para no repetir código de diseño) ---
Widget decoracionGradient(List<Color> colores) {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: colores,
      ),
    ),
  );
}