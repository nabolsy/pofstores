package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.dao.StoreOwnerDao;
import na.com.pieceoffuck.model.StoreOwner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;
@Controller
public class StoreOwnersController {

    @Autowired
    private StoreOwnerDao storeOwnerDao;

    @RequestMapping("/admin/storeOwners")
    public String storeOwnerInventory(Model model){
        List<StoreOwner> storeOwners = storeOwnerDao.getAllStoreOwners();
        model.addAttribute("storeOwners" , storeOwners);
        return "storeOwners";
    }
}
