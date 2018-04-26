package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.dao.UserDao;
import na.com.pieceoffuck.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class UsersController {
    @Autowired
    private UserDao userDao;

    @RequestMapping("/admin/users")
    public String brandInventory(Model model){
        List<User> users = userDao.getAllUsers();
        model.addAttribute("users" , users);
        return "users";
    }
}
