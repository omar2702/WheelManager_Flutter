class ProductProvider {
  List<Map<String, dynamic>> _products;

  static final ProductProvider _instancia = ProductProvider._privado();

  ProductProvider._privado() {
    _products = [];
  }

  factory ProductProvider() {
    return _instancia;
  }

  List<Map<String, dynamic>> get products {
    return _products;
  }

  void agregarProducto(Map<String, dynamic> nuevoProducto) {
    _products.add(nuevoProducto);
  }
}
