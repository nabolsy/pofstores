package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.dao.ProductDao;
import na.com.pieceoffuck.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class ProductListController {
    @Autowired
    ProductDao productDao;

    @RequestMapping("/welcome/productList")
    public String getProducts(Model model){
        List<Product> productList = productDao.getAllProduct();
        model.addAttribute("products", productList);
        return "productList";
    }
}
