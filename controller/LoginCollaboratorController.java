package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.model.Collaborator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginCollaboratorController {

    @RequestMapping("/collaborator-login")
    public String login_Collabrator(Model model){
        Collaborator collaborator = new Collaborator();
        model.addAttribute("collaborator" , collaborator);
        return "collaborator-login";
    }

}
