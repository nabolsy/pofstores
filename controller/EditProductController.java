package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.dao.ProductDao;
import na.com.pieceoffuck.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.io.IOException;

@Controller
public class EditProductController {
    @Autowired
    ProductDao productDao;

    @RequestMapping("/admin/productInventory/editProduct/{productId}")
    public String editProduct(@PathVariable int productId , Model model) throws IOException {
        Product product = productDao.getProductById(productId);
        product.setProductName(product.getProductName());
        product.setProductManufacturer(product.getProductManufacturer());
        product.setProductCategory(product.getProductCategory());
        product.setProductDescription(product.getProductDescription());
        product.setProductPrice(product.getProductPrice());
        product.setProductStatus(product.getProductStatus());
        product.setProductCondition(product.getProductCondition());
        product.setUnitInStock(product.getUnitInStock());
        model.addAttribute("product" , product);
        return "editProduct";
    }
}
