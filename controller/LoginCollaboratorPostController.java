package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.dao.CollaboratorDao;
import na.com.pieceoffuck.model.Collaborator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Controller
public class LoginCollaboratorPostController {
    @Autowired
    private CollaboratorDao collaboratorDao;

    @RequestMapping(value = "/collaborator-login" , method = RequestMethod.POST)
    public String loginPostCollaborator(Collaborator collaborator, BindingResult result , Model model){
        if (result.hasErrors()) {
            return "storeowner-login";
        }
        List<Collaborator> users = collaboratorDao.getAllCollaborators();
        for (int i=0; i< users.size(); i++) {
            if ((collaborator.getCollaboratorPassword()) == (users.get(i).getCollaboratorPassword()) || collaborator.getCollaboratorName().equals(users.get(i).getCollaboratorName())) {
                return "redirect:/collaborator";
            }else{
                model.addAttribute("notFoundMsg", "Username or password invalid");
                return "collaborator-login";
            }
        }
        return "redirect:/collaborator";
    }
}
