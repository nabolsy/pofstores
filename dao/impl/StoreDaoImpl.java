package na.com.pieceoffuck.dao.impl;

import na.com.pieceoffuck.dao.StoreDao;
import na.com.pieceoffuck.model.Store;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class StoreDaoImpl implements StoreDao {
    @Autowired
    private SessionFactory sessionFactory;

    public void addStore(Store store){
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(store);
        session.flush();
    }

    public Store getStoreById(String id) {
        Session session = sessionFactory.getCurrentSession();
        Store store = (Store) session.get(Store.class , id);
        return store;
    }

    public List<Store> getAllStores(){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Store");
        List<Store> stores = query.list();
        session.flush();
        return stores;
    }

    public void deleteStore(String id){
        Session session = sessionFactory.getCurrentSession();
        session.delete(getStoreById(id));
        session.flush();
    }
}
