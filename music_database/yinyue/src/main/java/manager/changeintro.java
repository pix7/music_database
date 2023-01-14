package manager;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import manager.*;
import java.sql.*;

@WebServlet("/changeintro")  

public class changeintro extends HttpServlet{
	public changeintro() {
		super();
	}
	
	public void destroy() {
		super.destroy();
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) 	
		throws ServletException,IOException{
			response.setCharacterEncoding("UTF-8");
			request.setCharacterEncoding("UTF-8");
			String intro=request.getParameter("intro");
			//String uname=request.getParameter("uname");
			int uid=(int)request.getSession(true).getAttribute("userid");
			music dm=new music();
			Connection con=null;
			int rs=0;
			boolean result=false;
			con=dm.getConnection();
			String sql="update user set intro="+"\'"+intro+"\' where user_id="+"\""+uid+"\"";
			//String sql="select *from user where user_name='dfs' and phone ='123'";
			if(con!=null) {
				rs=dm.executeUpdate(sql);
				System.out.println(rs);
				result=true;
			}

			if(result) {
				System.out.println("ÐÞ¸Ä³É¹¦");
				response.sendRedirect("./myinfo.jsp");
			}

			dm.close();
		}
	
	public void init()throws ServletException{
		super.init();
	}
}
