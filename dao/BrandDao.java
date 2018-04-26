package na.com.pieceoffuck.dao;

import na.com.pieceoffuck.model.Brand;

import java.util.List;

public interface BrandDao {
    void addBrand(Brand brand);
    Brand getBrandById(String name);
    List<Brand> getAllBrands();
    void deleteBrand(String name);
}
