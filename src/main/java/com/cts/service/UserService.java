package com.cts.service;

import java.util.List;
import com.cts.entity.User;
import com.cts.entity.UserRole;



public interface UserService {
List<User> getAllUsers();
void saveUser(User user);
public User getUser(String username);
public void deleteUser(String username);
void saveRole(UserRole theUserRole);
}
