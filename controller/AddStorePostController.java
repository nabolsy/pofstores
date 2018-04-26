package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.dao.StoreDao;
import na.com.pieceoffuck.model.Store;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class AddStorePostController {
    @Autowired
    private StoreDao storeDao;

    @RequestMapping(value = "/signup-storeowner-addStore" , method = RequestMethod.POST)
    public String addStorePostForStoreOwner(Store store , BindingResult result, Model model){
        if (result.hasErrors()) {
            return "signup-storeowner-addStore";
        }

        List<Store> stores = storeDao.getAllStores();
        for (int i=0; i< stores.size(); i++) {
            if (store.getStoreName().equals(stores.get(i).getStoreName())) {
                model.addAttribute("SNAMEMsg", "Name of store already existed");

                return "signup-storeowner-addStore";
            }
        }

        storeDao.addStore(store);
        return "redirect:/storeowner";
    }
}
