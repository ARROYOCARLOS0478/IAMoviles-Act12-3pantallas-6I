<img width="805" height="546" alt="image" src="https://github.com/user-attachments/assets/2e130816-7999-45c1-9099-652ec46a0428" />
<img width="801" height="536" alt="image" src="https://github.com/user-attachments/assets/3fa78719-2b73-45d7-8bef-d11c96f048ec" />
<img width="540" height="556" alt="image" src="https://github.com/user-attachments/assets/da01502c-1da0-4b05-8603-4c2fe22e1b80" />
<img width="239" height="398" alt="image" src="https://github.com/user-attachments/assets/6f2d4e63-5822-4f95-90bb-101f971560d7" />
<img width="237" height="403" alt="image" src="https://github.com/user-attachments/assets/998327bf-d339-4adf-9083-8a6721219add" />
<img width="236" height="402" alt="image" src="https://github.com/user-attachments/assets/6fb25207-32c4-4968-bec5-fee704301255" />


# myapp

A new Flutter project.

## Getting Started
## PROMPT
Actúa como un desarrollador experto en Flutter. Crea un StatefulWidget llamado HomePage que sea la pantalla principal de una app de delivery. Aplica estrictamente las siguientes especificaciones de diseño y estructura:

1. Colores y Fondo: > El color de fondo del Scaffold debe ser un verde bosque oscuro (Color(0xFF0F2C24)). Todos los textos generales deben ser blancos o grises claros (Colors.white o Colors.white70) para contrastar.

2. Cabecera (Ubicación):
En la parte superior (dentro de un SafeArea), incluye un texto pequeño que diga "Ciudad Juárez" y debajo un texto más grande en negritas que diga "CBTIS 128" con un icono de flecha hacia abajo (arrow_drop_down).

3. Barra de Búsqueda:
Debajo de la ubicación, pon un TextField dentro de un contenedor con fondo totalmente blanco, bordes redondeados (circular(30)) y una sombra suave (black26). El texto de pista debe ser "¿Qué quieres hoy?" con icono de lupa, ambos en color gris.

4. Tarjetas Principales (Restaurantes y Súper):
Una fila (Row) con dos tarjetas expandidas (Expanded) con fondo blanco, bordes redondeados (15) y sombra.

Tarjeta 1 (Restaurantes): La mitad superior tiene fondo rojo claro (Colors.red[50]) y esta imagen centrada: https://raw.githubusercontent.com/ARROYOCARLOS0478/imagenes/refs/heads/main/hamburguesa.png. La mitad inferior tiene el texto "Restaurantes" en rojo. Al presionarla, debe hacer un Navigator.pushNamed(context, '/restaurantes');.

Tarjeta 2 (Súper): La mitad superior tiene fondo verde claro (Colors.green[50]) y esta imagen centrada: https://raw.githubusercontent.com/ARROYOCARLOS0478/imagenes/refs/heads/main/super.png. La mitad inferior tiene el texto "Super" en verde.

5. Categorías Horizontales:
Un título que diga "Categorías" en blanco. Debajo, un ListView horizontal de 110px de altura. Cada ítem debe tener una imagen de 70x70 (con bordes redondeados, sombra y fondo blanco) y un texto blanco debajo. Usa estas categorías y URLs:

Farmacia: https://images.unsplash.com/photo-1587854692152-cbe660dbde88?w=200

Tiendas: https://raw.githubusercontent.com/ARROYOCARLOS0478/imagenes/refs/heads/main/tiendas.png

Exprés: https://images.unsplash.com/photo-1551024506-0bccd828d307?w=200

Supermercado: https://images.unsplash.com/photo-1578916171728-46686eac8d58?w=200

Licor: https://images.unsplash.com/photo-1569529465841-dfecdab7503b?w=200

6. Barra de Navegación Inferior (BottomNavigationBar):
Fondo totalmente blanco con una sombra sutil en la parte superior para separarla del fondo verde. Debe tener 4 ítems: Inicio (icono home), Ofertas (local_offer), Favoritos (favorite) y Cuenta (person). El ítem seleccionado debe ser naranja (Color(0xFFFF7A00)) y los inactivos color gris oscuro. Debe incluir la lógica básica con setState para cambiar de pestaña.
This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
