package com.example.accessingdatamysql.dao;

import com.example.accessingdatamysql.entity.UserBean;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface UserMapper {

	// 根据名字查询
	public List<UserBean> selectUserByName(String name);
	// 锁住单条语句，若要锁住全表，不加条件就是
	public List<UserBean> forupdateUser(@Param("user") UserBean user);
	// 根据表名锁住全表
	public List<UserBean> forupdateTable(@Param(value = "tableName") String tableName);
	// 添加用户信息
	public int addUser(@Param("user") UserBean user);
	// 更新用户信息
	public int updateUser(@Param("user") UserBean user);




}
