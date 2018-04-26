package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SignupController {

    @RequestMapping("/signup")
    public String signup_User(Model model){
        User user = new User();
        user.setUserName("username");
        user.setEmail("@gmail.com");
        model.addAttribute("user" , user);
        return "signup";
    }



}
