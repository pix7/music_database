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

@WebServlet("/creplist")  

public class creplist extends HttpServlet{
	public creplist() {
		super();
	}
	
	public void destroy() {
		super.destroy();
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) 	
		throws ServletException,IOException{
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			String npname=request.getParameter("npname");
			//String uid=request.getParameter("uid");
			int uid=(int)request.getSession(true).getAttribute("userid");
			String ptype=request.getParameter("ptype");
			String pintro=request.getParameter("pintro");
			music dm=new music();
			Connection con=null;
			int rs=0;
			boolean result=false;
			con=dm.getConnection();
			String sql="insert into plist(plist_name,user_id,plist_type,plist_intro) values (\'"+npname+"\',"+uid+",\'"+ptype+"\'"+",\'"+pintro+"\')";
			System.out.println(sql);
			//String sql="select *from user where user_name='dfs' and phone ='123'";
			if(con!=null) {
				System.out.println('3');
				rs=dm.executeUpdate(sql);
				System.out.println(rs);
				result=true;
			}

			if(result) {
				System.out.println("创建成功");
				response.sendRedirect("./myplist.jsp");
			}		
			dm.close();
		}	
	public void init()throws ServletException{
		super.init();
	}
}
