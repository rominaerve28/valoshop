class Armas {
  final int id;
  final String nombre;
  final double precio;
  final String imagen;
  final String descripcion;

  const Armas(
      {required this.id,
      required this.nombre,
      required this.precio,
      required this.imagen,
      required this.descripcion});
}

final escopetas = [
  new Armas(
      id: 1510,
      nombre: "Escopeta con Agarradera",
      precio: 10.00,
      imagen: "escopetaconagarradera.png",
      descripcion: "Escopeta"),
  new Armas(
      id: 5030,
      nombre: "Escopeta Dorada",
      precio: 10.00,
      imagen: "escopetaplomaconmira.jpeg",
      descripcion: "Escopeta")
];

final cuchillos = [
  new Armas(
      id: 5630,
      nombre: "Cuchillo Negro",
      precio: 10.00,
      imagen: "Cuchillonegro.png",
      descripcion: "Cuchillo"),
  new Armas(
      id: 3036,
      nombre: "Cuchillo ",
      precio: 10.00,
      imagen: "daga.jpeg",
      descripcion: "Cuchillo"),
];

final pistolas = [
  new Armas(
      id: 1010,
      nombre: "Pistola Dragon",
      precio: 10.00,
      imagen: "armadragon.png",
      descripcion: "Pistola"),
  new Armas(
      id: 1112,
      nombre: "Pistola Morada",
      precio: 10.00,
      imagen: "armamorada.png",
      descripcion: "Pistola"),
];
