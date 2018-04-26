package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.dao.BrandDao;
import na.com.pieceoffuck.model.Brand;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AddBrandPostController {
    @Autowired
    private BrandDao brandDao;

    @RequestMapping(value = "/admin/brandInventory/addBrand" , method = RequestMethod.POST)
    public String addBrandPost(Brand brand){
        brandDao.addBrand(brand);
        return "redirect:/admin/brandInventory";
    }
}
