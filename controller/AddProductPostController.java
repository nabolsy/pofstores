package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.dao.ProductDao;
import na.com.pieceoffuck.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AddProductPostController {

    @Autowired
    private ProductDao productDao;

    @RequestMapping(value = "/admin/productInventory/addProduct" , method = RequestMethod.POST)
    public String addProductPostForAdmin(Product product){
        productDao.addProduct(product);
        return "redirect:/admin/productInventory";
    }
}
