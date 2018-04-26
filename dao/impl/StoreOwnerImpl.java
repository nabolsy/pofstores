package na.com.pieceoffuck.dao.impl;

import na.com.pieceoffuck.dao.StoreOwnerDao;
import na.com.pieceoffuck.model.StoreOwner;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class StoreOwnerImpl implements StoreOwnerDao {


    @Autowired
    private SessionFactory sessionFactory;

    public void addStoreOwner(StoreOwner storeOwner) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(storeOwner);
        session.flush();
    }

    public StoreOwner getStoreOwnerById(int id) {
        Session session = sessionFactory.getCurrentSession();
        StoreOwner storeOwner = (StoreOwner) session.get(StoreOwner.class , id);
        return storeOwner;
    }

    public List<StoreOwner> getAllStoreOwners() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from StoreOwner");
        List<StoreOwner> storeOwners = query.list();
        session.flush();
        return storeOwners;
    }

    public void deleteStoreOwner(int id) {
        Session session = sessionFactory.getCurrentSession();
        StoreOwner storeOwner = (StoreOwner) session.get(StoreOwner.class , id);
        session.delete(storeOwner);
        session.flush();
    }
}
