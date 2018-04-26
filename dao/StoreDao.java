package na.com.pieceoffuck.dao;

import na.com.pieceoffuck.model.Store;

import java.util.List;

public interface StoreDao {
    void addStore(Store store);
    Store getStoreById(String id);
    List<Store> getAllStores();
    void deleteStore(String id);
}
