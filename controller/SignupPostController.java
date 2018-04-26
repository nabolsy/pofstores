package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.dao.StoreDao;
import na.com.pieceoffuck.dao.StoreOwnerDao;
import na.com.pieceoffuck.dao.UserDao;
import na.com.pieceoffuck.model.Store;
import na.com.pieceoffuck.model.StoreOwner;
import na.com.pieceoffuck.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class SignupPostController {

    @Autowired
    private UserDao userDao;

    @RequestMapping(value = "/signup" , method = RequestMethod.POST)
    public String signupPost(User user , BindingResult result, Model model){

        if (result.hasErrors()) {
            return "signup";
        }

        List<User> users = userDao.getAllUsers();
        for (int i=0; i< users.size(); i++) {
            if (user.getEmail().equals(users.get(i).getEmail())) {
                model.addAttribute("emailMsg", "Email already existed");

                return "signup";
            }
            if (user.getUserName().equals(users.get(i).getUserName())) {
                model.addAttribute("usernameMsg", "Username already existed");

                return "signup";
            }
        }

        userDao.addUser(user);
        return "redirect:/greeting";
    }
}
