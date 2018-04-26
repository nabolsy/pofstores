package na.com.pieceoffuck.dao.impl;

import na.com.pieceoffuck.dao.CollaboratorDao;
import na.com.pieceoffuck.model.Collaborator;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class CollaboratorDaoImpl implements CollaboratorDao {
    @Autowired
    private SessionFactory sessionFactory;


    public void addCollaborator(Collaborator collaborator) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(collaborator);
        session.flush();
    }

    public Collaborator getCollaboratorById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Collaborator collaborator = (Collaborator) session.get(Collaborator.class , id);
        return collaborator;
    }

    public List<Collaborator> getAllCollaborators() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Collaborator");
        List<Collaborator> collaborators = query.list();
        session.flush();
        return collaborators;
    }

    public void deleteCollaborator(int id) {
        Session session = sessionFactory.getCurrentSession();
        Collaborator storeOwner = (Collaborator) session.get(Collaborator.class , id);
        session.delete(storeOwner);
        session.flush();
    }
}
