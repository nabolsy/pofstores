package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.dao.ProductDao;
import na.com.pieceoffuck.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class ProductInventoryController {
    @Autowired
    private ProductDao productDao;

    @RequestMapping("/admin/productInventory")
    public String productInventory(Model model){
        List<Product> products = productDao.getAllProduct();
        model.addAttribute("products" , products);
        return "productInventory";
    }
}
