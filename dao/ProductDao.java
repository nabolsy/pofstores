package na.com.pieceoffuck.dao;

import na.com.pieceoffuck.model.Product;

import java.util.List;

public interface ProductDao {
    void addProduct(Product product);

    Product getProductById(int id);

    List<Product> getAllProduct();

    void editProduct(Product product);

    void deleteProduct(Product product ,int id);

    Long countProducts();
}
