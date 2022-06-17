package com.db.utils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import demo.Items;

public class ItemDAO {
	private static final String INSERT_ITEMS_SQL = "INSERT INTO items VALUES(?, ?, ?)";
	private static final String SELECT_ITEMS_BY_ID = "select id,item_name,price_rupee from items where id=?";
	private static final String SELECT_ALL_ITEM = "select * from items";
	private static final String DELETE_ITEMS_SQL = "delete from items where id= ?";
	private static final String UPDATE_ITEMS_SQL = "update item set item_name = ?,price_rupee= ? where id= ?";
	
	public void insertItem(Items item) throws SQLException{
		try(Connection connection = DbConnection.init(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ITEMS_SQL)){
			preparedStatement.setInt(1, item.getId());
			preparedStatement.setString(2, item.getName());
			preparedStatement.setInt(3, item.getPrice());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
		  printSQLException(e);
			
		}
		
	}
	
	public Items selection(int id) {
		Items item = null;
		try (Connection connection = DbConnection.init(); PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_ITEM);){
			preparedStatement.setInt(1, id);
			System.out.println(preparedStatement);
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				String name = rs.getString("item_name");
				int rupee = rs.getInt("price_rupee");
				item = new Items(id,name, rupee);
				
			}
		
		}catch (SQLException e) {
			printSQLException(e);
		}
		return item;
	
}
public List < Items> selectALLItems() {
	List <Items> items = new ArrayList<> ();
	try (Connection connection = DbConnection.init(); PreparedStatement prepareStatement = connection.prepareStatement(SELECT_ITEMS_BY_ID);){
		ResultSet rs = prepareStatement.executeQuery();
		
		 while(rs.next()) {
			 int id = rs.getInt("id");
			 String name = rs.getString("item_name");
			 int rupee = rs.getInt("price_rupee");
			 items.add(new Items(id, name, rupee));
		 }
	}catch(SQLException e) {
		printSQLException(e);
	}
	return items;
}
	public boolean deleteItem(int id) throws SQLException{
		boolean rowUpdated;
		try(Connection connection = DbConnection.init(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_ITEMS_SQL)){
			preparedStatement.setInt(1, item.getId());
			preparedStatement.setString(2, item.getName());
			preparedStatement.setInt(3, item.getPrice());
			preparedStatement.executeUpdate();
		
	}
		return rowUpdated;
		
}
	private void printSQLException(SQLException ex) {
		for(Throwable e: ex) {
			if(e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getMessage());
				System.err.println("Error code: " +((SQLException)e).getErrorCode());
				System.err.println("Message:" + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null);
				System.out.println("Cause: " + t);
				t= t.getCause();
			}
			}
		}
	}


























