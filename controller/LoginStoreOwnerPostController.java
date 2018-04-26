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
public class LoginStoreOwnerPostController {

    @Autowired
    private StoreOwnerDao storeOwnerDao;

    @RequestMapping(value = "/storeowner-login" , method = RequestMethod.POST)
    public String loginPost(StoreOwner storeOwner , BindingResult result , Model model){

        if (result.hasErrors()) {
            return "storeowner-login";
        }
        List<StoreOwner> users = storeOwnerDao.getAllStoreOwners();
        for (int i=0; i< users.size(); i++) {
            if ((storeOwner.getStoreOwnerPassword()) == (users.get(i).getStoreOwnerPassword()) || storeOwner.getStoreOwnerName().equals(users.get(i).getStoreOwnerName())) {
                return "redirect:/storeowner";
            }else{
                model.addAttribute("notFoundMsg", "Username or password invalid");
                return "storeowner-login";
            }
        }
        return "redirect:/storeowner";
    }
}
