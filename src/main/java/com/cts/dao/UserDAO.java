package com.cts.dao;


import java.util.List;
import com.cts.entity.User;
import com.cts.entity.UserRole;

public interface UserDAO {

	void  saveUser(User user);
  List<User>  listAllUsers();
 User getUser(String username);
 void deleteUser(String username);
 User findByUserName(String username);
void saveUserRole(UserRole theUserRole);

 
}
