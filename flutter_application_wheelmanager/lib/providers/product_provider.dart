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

  void addProduct(Map<String, dynamic> nuevoProducto) {
    _products.add(nuevoProducto);
  }

  void editProduct(
      Map<String, dynamic> nuevoProducto, Map<String, dynamic> actualProducto) {
    for (var i = 0; i < _products.length; i++) {
      if (_products[i] == actualProducto) {
        _products[i] = nuevoProducto;
        break;
      }
    }
  }

  void deleteProduct(Map<String, dynamic> eliminarProducto) {
    _products.remove(eliminarProducto);
  }
}
