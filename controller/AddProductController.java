package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.model.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AddProductController {
    @RequestMapping("/admin/productInventory/addProduct")
    public String addProduct(Model model){
        Product product = new Product();
        product.setProductCategory("mobiles");
        product.setProductCondition("new");
        product.setProductStatus("active");
        model.addAttribute("product" , product);
        return "addProduct";
    }
}
