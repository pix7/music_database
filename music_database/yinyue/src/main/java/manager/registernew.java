package manager;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

@WebServlet("/registernew")  

public class registernew extends HttpServlet{
	public registernew() {
		super();
	}
	
	public void destroy() {
		super.destroy();
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) 	
		throws ServletException,IOException{
		
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			String name=request.getParameter("name");
			String phone=request.getParameter("phone");
			music dm=new music();
			Connection con=null;
			int rs=0;
			String guanli=null;
			int userid=0;
			con=dm.getConnection();
			String sql="insert into user(user_name,phone) values(\'"+name+"\',\'"+phone+"\')";
			//String sql="select *from user where user_name='dfs' and phone ='123'";
			if(con!=null) {
				rs=dm.executeUpdate(sql);
			}
			try {
				if(rs!=0) {
					response.sendRedirect("./login.jsp");
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			
			dm.close();
		}
	
	public void init()throws ServletException{
		super.init();
	}
}
