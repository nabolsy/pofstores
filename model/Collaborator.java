package na.com.pieceoffuck.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Collaborator {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int collaboratorId;
    private String collaboratorName;
    private String collaboratorEmail;
    private int collaboratorPassword;

    public int getCollaboratorId() {
        return collaboratorId;
    }

    public void setCollaboratorId(int collaboratorId) {
        this.collaboratorId = collaboratorId;
    }

    public String getCollaboratorName() {
        return collaboratorName;
    }

    public void setCollaboratorName(String collaboratorName) {
        this.collaboratorName = collaboratorName;
    }

    public String getCollaboratorEmail() {
        return collaboratorEmail;
    }

    public void setCollaboratorEmail(String collaboratorEmail) {
        this.collaboratorEmail = collaboratorEmail;
    }

    public int getCollaboratorPassword() {
        return collaboratorPassword;
    }

    public void setCollaboratorPassword(int collaboratorPassword) {
        this.collaboratorPassword = collaboratorPassword;
    }
}
