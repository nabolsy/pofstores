package na.com.pieceoffuck.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StoreOwnerController {

    @RequestMapping("/storeowner")
    public String storeOwnerPage(){
        return "storeowner";
    }
}
