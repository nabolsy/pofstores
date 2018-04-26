package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.model.Brand;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AddBrandController {

    @RequestMapping("/admin/brandInventory/addBrand")
    public String addBrand(Model model){
        Brand brand = new Brand();
        brand.setBrandCategory("mobiles");
        brand.setBrandCondition("new");
        brand.setBrandStatus("active");
        model.addAttribute("brand" , brand);
        return "addBrand";
    }
}
