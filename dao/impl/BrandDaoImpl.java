package na.com.pieceoffuck.dao.impl;

import na.com.pieceoffuck.dao.BrandDao;
import na.com.pieceoffuck.model.Brand;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class BrandDaoImpl implements BrandDao {

    @Autowired
    private SessionFactory sessionFactory;

    public void addBrand(Brand brand){
        Session session = sessionFactory.getCurrentSession();
        session.save(brand);
        session.flush();
    }

    public Brand getBrandById(String name) {
        Session session = sessionFactory.getCurrentSession();
        Brand brand = (Brand) session.get(Brand.class , name);
        return brand;
    }

    public List<Brand> getAllBrands(){
        Session session = sessionFactory.getCurrentSession();
        Query query = session.createQuery("from Brand");
        List<Brand> brands = query.list();
        session.flush();
        return brands;
    }

    public void deleteBrand(String name){
        Session session = sessionFactory.getCurrentSession();
        session.delete(getBrandById(name));
        session.flush();
    }
}

