package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.dao.StoreOwnerDao;
import na.com.pieceoffuck.model.StoreOwner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class AddStoreOwnerPostController {

    @Autowired
    private StoreOwnerDao storeOwnerDao;

    @RequestMapping(value = "/signup-storeowner" , method = RequestMethod.POST)
    public String signupPost_Storeowner(StoreOwner storeOwner , BindingResult result, Model model){

        if (result.hasErrors()) {
            return "signup-storeowner";
        }

        List<StoreOwner> storeOwners = storeOwnerDao.getAllStoreOwners();
        for (int i=0; i< storeOwners.size(); i++) {
            if (storeOwner.getStoreOwnerEmail().equals(storeOwners.get(i).getStoreOwnerEmail())) {
                model.addAttribute("SOemailMsg", "Email already existed");

                return "signup-storeowner";
            }
            if (storeOwner.getStoreOwnerName().equals(storeOwners.get(i).getStoreOwnerName())) {
                model.addAttribute("SOnameMsg", "Name already existed");

                return "signup-storeowner";
            }
        }
        storeOwnerDao.addStoreOwner(storeOwner);
        return "redirect:/signup-storeowner-addStore";
    }
}
