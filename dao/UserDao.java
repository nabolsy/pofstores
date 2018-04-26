package na.com.pieceoffuck.dao;

import na.com.pieceoffuck.model.User;

import java.util.List;

public interface UserDao {
    void addUser(User product);
    User getUserById(int id);
    List<User> getAllUsers();
    void deleteUser(int id);
}
