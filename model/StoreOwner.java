package na.com.pieceoffuck.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class StoreOwner {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int storeOwnerId;
    private String storeOwnerName;
    private String storeOwnerEmail;
    private int storeOwnerPassword;

    public int getStoreOwnerId() {
        return storeOwnerId;
    }

    public void setStoreOwnerId(int storeOwnerId) {
        this.storeOwnerId = storeOwnerId;
    }

    public String getStoreOwnerName() {
        return storeOwnerName;
    }

    public void setStoreOwnerName(String storeOwnerName) {
        this.storeOwnerName = storeOwnerName;
    }

    public String getStoreOwnerEmail() {
        return storeOwnerEmail;
    }

    public void setStoreOwnerEmail(String storeOwnerEmail) {
        this.storeOwnerEmail = storeOwnerEmail;
    }

    public int getStoreOwnerPassword() {
        return storeOwnerPassword;
    }

    public void setStoreOwnerPassword(int storeOwnerPassword) {
        this.storeOwnerPassword = storeOwnerPassword;
    }
}
