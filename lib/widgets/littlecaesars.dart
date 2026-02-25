import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class Pizza {
  final String image;
  final String title;
  final String price;

  const Pizza({
    required this.image,
    required this.title,
    required this.price,
  });
}

class LittleCaesarsScreen extends StatefulWidget {
  const LittleCaesarsScreen({super.key});

  @override
  State<LittleCaesarsScreen> createState() => _LittleCaesarsScreenState();
}

class _LittleCaesarsScreenState extends State<LittleCaesarsScreen> {
  String _categoriaSeleccionada = 'PIZZAS';
  bool _isFavorito = false;

  final List<Pizza> _pizzas = [
    const Pizza(
      image: 'https://raw.githubusercontent.com/ARROYOCARLOS0478/imagenes/refs/heads/main/queso.png',
      title: 'Queso',
      price: '\$129.00',
    ),
    const Pizza(
      image: 'https://raw.githubusercontent.com/ARROYOCARLOS0478/imagenes/refs/heads/main/pepperoni.png',
      title: 'Pepperoni',
      price: '\$119.00',
    ),
    const Pizza(
      image: 'https://raw.githubusercontent.com/ARROYOCARLOS0478/imagenes/refs/heads/main/queso-pp.png',
      title: 'Doble!',
      price: '\$139.00',
    ),
    const Pizza(
      image: 'https://raw.githubusercontent.com/ARROYOCARLOS0478/imagenes/refs/heads/main/mexicana.png',
      title: 'Mexicana!',
      price: '\$149.00',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 211, 163),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeaderImage(),
            _buildRestaurantTitle(),
            _buildStatsContainer(),
            const SizedBox(height: 20),
            _buildCategoryTabs(),
            const SizedBox(height: 10),
            _buildProductSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderImage() {
    return Stack(
      children: [
        Container(
          height: 200,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage('https://raw.githubusercontent.com/ARROYOCARLOS0478/imagenes/refs/heads/main/little-ca.PNG'),
            ),
          ),
        ),
        Positioned(
          top: 40,
          left: 15,
          child: _buildInteractiveIcon(
            icon: Icons.close,
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        Positioned(
          top: 40,
          right: 15,
          child: _buildInteractiveIcon(
            icon: _isFavorito ? Icons.favorite : Icons.favorite_border,
            color: _isFavorito ? Colors.red : Colors.white,
            onTap: () {
              setState(() {
                _isFavorito = !_isFavorito;
              });
            },
          ),
        ),
      ],
    );
  }

  Widget _buildInteractiveIcon({required IconData icon, required VoidCallback onTap, Color color = Colors.white}) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(50),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            icon,
            color: color,
            size: 28,
            shadows: const [
              Shadow(offset: Offset(-1, -1), color: Colors.black),
              Shadow(offset: Offset(1, -1), color: Colors.black),
              Shadow(offset: Offset(1, 1), color: Colors.black),
              Shadow(offset: Offset(-1, 1), color: Colors.black),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRestaurantTitle() {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Text(
        "Little Caesars",
        style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildStatsContainer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildStatColumn(titulo: "Entrega", valor: "24 min"),
          _buildVerticalDivider(),
          _buildStatColumn(titulo: "Envío", valor: "Gratis", isGreen: true),
          _buildVerticalDivider(),
          _buildStatColumn(titulo: "Calificación", valor: "4.8", showStar: true),
        ],
      ),
    );
  }

  Widget _buildStatColumn({
    required String titulo,
    required String valor,
    bool isGreen = false,
    bool showStar = false,
  }) {
    return Column(
      children: [
        Text(
          titulo,
          style: const TextStyle(color: Colors.grey, fontSize: 13),
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Text(
              valor,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: isGreen ? Colors.green : Colors.black,
              ),
            ),
            if (showStar) ...[
              const SizedBox(width: 4),
              const Icon(Icons.star, size: 16, color: Colors.orange),
            ]
          ],
        ),
      ],
    );
  }

  Widget _buildVerticalDivider() {
    return Container(height: 30, width: 1, color: Colors.grey[300]);
  }

  Widget _buildCategoryTabs() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
      ),
      child: Row(
        children: [
          _buildTabItem("PIZZAS"),
          const SizedBox(width: 25),
          _buildTabItem("COMBOS"),
        ],
      ),
    );
  }

  Widget _buildTabItem(String title) {
    final bool isSelected = _categoriaSeleccionada == title;
    return InkWell(
      onTap: () {
        setState(() {
          _categoriaSeleccionada = title;
        });
      },
      borderRadius: BorderRadius.circular(4),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
        decoration: BoxDecoration(
          border: isSelected ? const Border(bottom: BorderSide(color: Colors.orange, width: 3)) : null,
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            color: isSelected ? Colors.black : Colors.grey,
          ),
        ),
      ),
    );
  }

  Widget _buildProductSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, bottom: 10),
          child: Text(
            _categoriaSeleccionada,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.85,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemCount: _pizzas.length,
          itemBuilder: (context, index) {
            return _buildProductCard(_pizzas[index]);
          },
        ),
      ],
    );
  }

  Widget _buildProductCard(Pizza pizza) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              developer.log("Card ${pizza.title} tocada");
            },
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(pizza.image),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(pizza.price, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                          const SizedBox(height: 4),
                          Text(
                            "${pizza.title} grande con orilla rellena de queso.",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 8,
                  right: 8,
                  child: InkWell(
                    onTap: () {
                      developer.log("Añadir al carrito");
                    },
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.all(4),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(Icons.add_circle, color: Colors.green, size: 30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
