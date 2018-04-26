package na.com.pieceoffuck.dao;

import na.com.pieceoffuck.model.Collaborator;

import java.util.List;

public interface CollaboratorDao {
    void addCollaborator(Collaborator collaborator);
    Collaborator getCollaboratorById(int id);
    List<Collaborator> getAllCollaborators();
    void deleteCollaborator(int id);
}
