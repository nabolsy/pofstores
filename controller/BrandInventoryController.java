package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.dao.BrandDao;
import na.com.pieceoffuck.model.Brand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class BrandInventoryController {
    @Autowired
    private BrandDao brandDao;

    @RequestMapping("/admin/brandInventory")
    public String brandInventory(Model model){
        List<Brand> brands = brandDao.getAllBrands();
        model.addAttribute("brands" , brands);
        return "brandInventory";
    }
}
