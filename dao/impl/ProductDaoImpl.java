package na.com.pieceoffuck.dao.impl;

import na.com.pieceoffuck.dao.ProductDao;
import na.com.pieceoffuck.model.Product;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
    @Autowired
    private SessionFactory sessionFactory;

    public void addProduct(Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();
    }

    public Product getProductById(int id) {
        Session session = sessionFactory.getCurrentSession();
        Product product = (Product)session.get(Product.class , id);
        session.flush();
        return product;
    }

    public List<Product> getAllProduct() {
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Product");
        List<Product> products = query.list();
        session.flush();
        return products;
    }

    public void editProduct(Product product) {
        Session session = sessionFactory.getCurrentSession();
        session.update(product);
        session.flush();
    }

    public void deleteProduct(Product product , int id) {
        Session session = sessionFactory.getCurrentSession();
        session.delete(getProductById(id));
        session.delete(product);
        session.flush();
    }


    public Long countProducts() {
        return (Long) sessionFactory.openSession()
                .createCriteria(Product.class)
                .setProjection(Projections.rowCount())
                .uniqueResult();
    }
}
