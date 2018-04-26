package na.com.pieceoffuck.dao;

import na.com.pieceoffuck.model.StoreOwner;

import java.util.List;

public interface StoreOwnerDao {
    void addStoreOwner(StoreOwner storeOwner);
    StoreOwner getStoreOwnerById(int id);
    List<StoreOwner> getAllStoreOwners();
    void deleteStoreOwner(int id);
}
