package org.com.DAO.Impl;
import java.sql.*;
import javax.sql.DataSource;

import org.com.DAO.LoginDAO;

import org.com.model.Login;

public class LoginDAOImpl implements LoginDAO{
	
	DataSource dataSource;
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	@Override
	public void insert(Login login) {
		// TODO Auto-generated method stub
		String query="insert into login values(?,?)";
		Connection con;
		PreparedStatement ps=null;
		try
		{
			con=dataSource.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, login.getUserId());
			ps.setString(2, login.getPassword());
			
			int count=ps.executeUpdate();
			if(count!=0)
			{
				System.out.println("data inserted" +login.getUserId());
			
			}
			else
			{
				System.out.println("not inserted"+login.getUserId());
			}
			
		}
		catch(SQLException e)
		{
			e.printStackTrace();
		}
		/*finally
		{
			try
			{
				ps.close();
				con.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}*/
	}

	@Override
	public void delete(Login login) {
		// TODO Auto-generated method stub
		
	}

}
