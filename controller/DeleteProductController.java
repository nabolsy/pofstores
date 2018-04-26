package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.dao.ProductDao;
import na.com.pieceoffuck.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.io.IOException;

@Controller
public class DeleteProductController {
    @Autowired
    ProductDao productDao;

    @RequestMapping(value = "/admin/productInventory" , method = RequestMethod.POST)
    public String deleteOneProduct(int productId)throws IOException {
        Product product = productDao.getProductById(productId);
        productDao.deleteProduct(product , productId);
        return "redirect:/admin/productInventory";
    }
}
