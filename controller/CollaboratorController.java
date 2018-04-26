package na.com.pieceoffuck.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CollaboratorController {
    @RequestMapping("/collaborator")
    public String collaborator(){
        return "collaborator";
    }
}
