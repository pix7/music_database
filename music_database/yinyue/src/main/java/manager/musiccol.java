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

@WebServlet("/musiccol")  

public class musiccol extends HttpServlet{
	public musiccol() {
		super();
	}
	
	public void destroy() {
		super.destroy();
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) 	
		throws ServletException,IOException{
			response.setCharacterEncoding("UTF-8");
			request.setCharacterEncoding("UTF-8");
			String sid=request.getParameter("songid");
			String pid=request.getParameter("pid");
			String name=(String)request.getSession(true).getAttribute("username");
			System.out.println("waht"+name);
			music dm=new music();
			Connection con=null;
			int rs=0;
			boolean result=false;
			con=dm.getConnection();
			String sql="insert into include(plist_id,song_id) values ("+pid+","+sid+")";
			System.out.println(sql);
			//String sql="select *from user where user_name='dfs' and phone ='123'";
			if(con!=null) {
				rs=dm.executeUpdate(sql);
				System.out.println(rs);
				result=true;
			}

			if(result) {
				System.out.println("�޸ĳɹ�");
				// ʹ��request�����getSession()��ȡsession�����session�������򴴽�һ��
				HttpSession session = request.getSession();
				// �����ݴ洢��session��
				session.setAttribute("plistid", pid);
				pid=(String) session.getAttribute("plistid");
				System.out.println(pid);
				response.sendRedirect("./myplist.jsp");
			}

			dm.close();
		}
	
	public void init()throws ServletException{
		super.init();
	}
}
//�����ҳ����ת�����⣬����session����赥��id������Ŀǰû��ʵ�֣�ʣ�µ������ٸ���
