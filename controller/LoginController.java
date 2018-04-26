package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

    @RequestMapping("/login")
    public String login(Model model){
        User user = new User();
        user.setUserName("username");
        model.addAttribute("user" , user);

        return "login";
    }
}
