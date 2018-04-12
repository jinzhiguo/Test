package jzg.dao;

import jzg.domain.User;

public interface UserDao {
	void insert(User u);
	User select(User user);
	User select(String name);
}
