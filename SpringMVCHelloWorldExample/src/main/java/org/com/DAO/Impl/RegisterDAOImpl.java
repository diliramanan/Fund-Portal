package org.com.DAO.Impl;

import java.sql.*;

import javax.annotation.Resource;
import javax.sql.DataSource;
import org.com.DAO.RegisterDAO;
import org.com.model.Register;
import org.springframework.beans.factory.annotation.Autowired;

public class RegisterDAOImpl implements RegisterDAO{

	@Autowired
	
	private DataSource FundPortaldataSource;
	
	/*public DataSource getFundPortaldataSource() {
		return FundPortaldataSource;
	}*/


	public DataSource getFundPortaldataSource() {
		return FundPortaldataSource;
	}


	public void setFundPortaldataSource(DataSource fundPortaldataSource) {
		FundPortaldataSource = fundPortaldataSource;
	}


	@Override
	public void insert(Register register) {
		// TODO Auto-generated method stub
		String query="insert into register values(?,?,?,?,?,?,?,?)";
		Connection con;
		PreparedStatement ps;
		try
		{
			con=FundPortaldataSource.getConnection();
			ps=con.prepareStatement(query);
			ps.setString(1, register.getFirstName());
			ps.setString(2, register.getLastName());
			ps.setString(3, register.getEmail());
			ps.setLong(4, register.getPhone());
			ps.setString(5, register.getProjID());
			ps.setString(6, register.getProjName());
			ps.setString(7, register.getUserID());
			ps.setString(8, register.getPassword());
			
			int count=ps.executeUpdate();
			if(count!=0)
			{
				System.out.println("data inserted" +register.getUserID());
			
			}
			else
			{
				System.out.println("not inserted"+register.getUserID());
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
			}*/
		}
	

	@Override
	public void delete(Register register) {
		// TODO Auto-generated method stub
		
	}

}
