package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.model.StoreOwner;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AddStoreOwnerController {

    @RequestMapping("/signup-storeowner")
    public String signup_storeowner(Model model){
        StoreOwner storeowner = new StoreOwner();
        storeowner.setStoreOwnerName("StoreOwnerName");
        storeowner.setStoreOwnerEmail("@gmail.com");
        model.addAttribute("storeowner" , storeowner);
        return "signup-storeowner";
    }
}
