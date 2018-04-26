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
public class AddCollaboratorPostController {
    @Autowired
    private CollaboratorDao collaboratorDao;

    @RequestMapping(value = "/signup-collaborator" , method = RequestMethod.POST)
    public String signupPost_Storeowner(Collaborator collaborator , BindingResult result, Model model){

        if (result.hasErrors()) {
            return "signup-collaborator";
        }

        List<Collaborator> collaborators = collaboratorDao.getAllCollaborators();
        for (int i=0; i< collaborators.size(); i++) {
            if (collaborator.getCollaboratorEmail().equals(collaborators.get(i).getCollaboratorEmail())) {
                model.addAttribute("SOemailMsg", "Email already existed");

                return "signup-collaborator";
            }
            if (collaborator.getCollaboratorName().equals(collaborators.get(i).getCollaboratorName())) {
                model.addAttribute("SOnameMsg", "Name already existed");

                return "signup-collaborator";
            }
        }
        collaboratorDao.addCollaborator(collaborator);
        return "redirect:/collaborator";
    }
}
