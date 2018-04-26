package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.dao.ProductDao;
import na.com.pieceoffuck.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EditProductPostController {

    @Autowired
    ProductDao productDao;

    @RequestMapping(value = "/admin/productInventory/editProduct", method = RequestMethod.POST)
    public String editProductPostForAdmin(int id) {
        Product product = productDao.getProductById(id);
        productDao.editProduct(product);
        return "redirect:/admin/productInventory";
    }
}
