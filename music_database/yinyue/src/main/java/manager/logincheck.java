package manager;
import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;

@WebServlet("/logincheck")  

public class logincheck extends HttpServlet{
	public logincheck() {
		super();
	}
	
	public void destroy() {
		super.destroy();
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) 	
		throws ServletException,IOException{
			response.setCharacterEncoding("UTF-8");
			request.setCharacterEncoding("UTF-8");
			String name=request.getParameter("name");
			String phone=request.getParameter("phone");
			music dm=new music();
			Connection con=null;
			ResultSet rs=null;
			String guanli=null;
			boolean result=false;
			int userid=0;
			con=dm.getConnection();
			String sql="select *from user where user_name="+"\""+name+"\""+"and phone="+"\""+phone+"\"";
			//String sql="select *from user where user_name='dfs' and phone ='123'";
			if(con!=null) {
				rs=dm.executeQuery(sql);
			}
			try {
				if(rs!=null) {
					result=rs.next();
					 guanli=rs.getString("user_type");
					 userid=rs.getInt("user_id");
				}
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			if(result) {
				System.out.println("��ȷ");
				System.out.println(guanli);
				
				// ʹ��request�����getSession()��ȡsession�����session�������򴴽�һ��
				HttpSession session = request.getSession();
				// �����ݴ洢��session��
				session.setAttribute("username", name);
				session.setAttribute("userid", userid);
				if(guanli.equals("u")) {
					response.sendRedirect("./main.jsp");
				}
				else {
					response.sendRedirect("./mainguanli.jsp");
				}
			}
			else {
				response.sendRedirect("./loginfail.jsp");
			}
			dm.close();
		}
	
	public void init()throws ServletException{
		super.init();
	}
}
