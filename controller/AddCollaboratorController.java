package na.com.pieceoffuck.controller;

import na.com.pieceoffuck.model.Collaborator;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AddCollaboratorController {

    @RequestMapping("/signup-collaborator")
    public String signup_Collaborator(Model model){
        Collaborator collaborator = new Collaborator();
        collaborator.setCollaboratorName("CollaboratorName");
        collaborator.setCollaboratorEmail("@gmail.com");
        model.addAttribute("collaborator" , collaborator);
        return "signup-collaborator";
    }
}
