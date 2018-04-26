package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.model.StoreOwner;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginStoreOwnerController {

    @RequestMapping("/storeowner-login")
    public String login_StoreOwner(Model model){
        StoreOwner storeOwner = new StoreOwner();
        storeOwner.setStoreOwnerName("StoreOwnerName");
        model.addAttribute("storeOwner" , storeOwner);

        return "storeowner-login";
    }
}
