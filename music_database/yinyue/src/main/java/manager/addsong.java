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

@WebServlet("/addsong")  

public class addsong extends HttpServlet{
	public addsong() {
		super();
	}
	
	public void destroy() {
		super.destroy();
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response) 	
		throws ServletException,IOException{
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
			String sname=request.getParameter("sname");
			String singerid=request.getParameter("singerid");
			String region=request.getParameter("region");
			String stype=request.getParameter("stype");
			String releasetime=request.getParameter("releasetime");
			String aid=request.getParameter("aid");
			String aname=request.getParameter("aname");
			String aintro=request.getParameter("aintro");
			String singername=request.getParameter("singername");
			String singerintro=request.getParameter("singerintro");
			music dm=new music();
			Connection con=null;
			int rs=0;
			boolean result=false;
			con=dm.getConnection();
			System.out.println("singer="+singername);
			System.out.println("album="+aname);
			String sql1="insert into singer(singer_id,singer_name,singer_intro) values ("+singerid+",\'"+singername+"\',\'"+singerintro+"\')";
			String sql2="insert into album(album_id,album_name,singer_id,album_releasedTime,album_intro) values ("+aid+",\'"+aname+"\',"+singerid+",\'"+releasetime+"\',\'"+aintro+"\')";
			String sql3="insert into song(song_name,singer_id,region,song_type,song_releaseTime,album_id) values (\'"+sname+"\',"+singerid+",\'"+region+"\',\'"+stype+"\',\'"+releasetime+"\',"+aid+")";
			//System.out.println(sql1);
			System.out.println(sql2);
			System.out.println(sql3);
			//String sql="select *from user where user_name='dfs' and phone ='123'";
			if(con!=null) {
				if(singername!="") {
					rs=dm.executeUpdate(sql1);
					System.out.println("sql1");}
				if(aname!="") {
					rs=dm.executeUpdate(sql2);
					System.out.println("sql2");}
				rs=dm.executeUpdate(sql3);
				System.out.println(rs);
				result=true;
			}

			if(result) {
				System.out.println("ÐÞ¸Ä³É¹¦");
				response.sendRedirect("./whole.jsp");
			}

			dm.close();
		}
	
	public void init()throws ServletException{
		super.init();
	}
}
