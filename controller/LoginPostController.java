package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.dao.UserDao;
import na.com.pieceoffuck.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
@Controller
public class LoginPostController {

    @Autowired
    private UserDao userDao;

    @RequestMapping(value = "/login" , method = RequestMethod.POST)
    public String loginPost(User user , BindingResult result , Model model){

        if (result.hasErrors()) {
            return "login";
        }
        List<User> users = userDao.getAllUsers();
        for (int i=0; i< users.size(); i++) {
            if (user.getUserName().equals(users.get(i).getUserName())) {
                return "redirect:/welcome";
            }else{
                model.addAttribute("notFoundMsg", "Username or password invalid");
                return "login";
            }
        }
        return "redirect:/welcome";
    }
}
