package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.model.Store;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AddStoreController {

    @RequestMapping("/signup-storeowner-addStore")
    public String signup_storeowner_addStore(Model model){
        Store store = new Store();
        store.setStoreName("StoreOwnerName");
        store.setStoreLocation("Onsite/Online");
        store.setStoreType("...");
        model.addAttribute("store" , store);
        return "signup-storeowner-addStore";
    }
}
