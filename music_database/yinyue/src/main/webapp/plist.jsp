
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="manager.music" %>
<%@page import="java.sql.*" %>

<!DOCTYPE html >
<html >
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>怀音-歌单内容</title>

    <link href="css/jquery-ui.css" rel="stylesheet" />
    <link href="css/jquery.ui.theme.css" rel="stylesheet" />
    <link href="css/calendar.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/login.css" />
    
    <script src="js/moment.min.js"></script>
    <script src="js/jquery-1.9.1.min.js"></script>
    <script src="js/jquery-ui-1.10.2.min.js"></script>


<style>
	span
	{
	display:inline-block;
	width:150px;
	}
	div{
	width:700px;
	}
</style>
  </head>





<body>

		<img src="images/怀音音乐数据库2.png"  id="title"/>

<center>


				<br/>
						<br/>
        <div id="lg">
  	<table id="hy">
	<td><img src="images/login.png" id="login"/></td>

	<td>    <img src="images/歌单内容.png" id="log"/></td>
</table>
<br/>
<br/>


    </div>

<% 
 			response.setCharacterEncoding("UTF-8");
			request.setCharacterEncoding("UTF-8");
			String pid=request.getParameter("pid");
			if (pid==null){
				 pid=(String) session.getAttribute("plistid");
				request.getSession();
				session.setAttribute("plistid",pid);
			}
			System.out.println(pid);
			music dm=new music();
			Connection con=null;
			ResultSet rs=null;
			ResultSet rs1=null;
			con=dm.getConnection();
			String sql1="select plist_name from plist where plist_id="+pid;
			String sql="select b.song_id,b.song_name from include a inner join song b on a.song_id=b.song_id inner join plist c on a.plist_id=c.plist_id  where a.plist_id="+pid;
			System.out.println(sql);
			//String sql="select *from user where user_name='dfs' and phone ='123'";
			if(con!=null) {
				rs=dm.executeQuery(sql);
				rs1=dm.executeQuery(sql1);
			}
			try{
				if(rs1!=null){
					while(rs1.next()){
						out.println(""+rs1.getString("plist_name"));
						out.println("<br/>");
						out.println("<br/>");
					}
				}	
				
			  if(rs!=null){
			    out.println("<table width=50% border=1 cellspacing=0>");
			    out.println("<tr>");
			   
			    out.println("<th>歌曲id</th>");
			    out.println("<th>歌曲名称</th>");
			    out.println("</tr>");
		//以前家里经常去的小诊所	    
			   // rs.beforeFirst();
			    while(rs.next()){
			    	 out.println("<tr>");
			    	out.println("<td>"+rs.getInt("song_id")+"</td>");
			    	out.println("<td>"+rs.getString("song_name")+"</td>");
			    	out.println("</tr>");
			    }
			    out.println("</table>");
			  }
			  else{
			  	out.println("没有找到查询结果！");
			  }
			}
			catch(Exception e){
				e.printStackTrace();
			}
			%>
			<br/>
			<br/>
				<td>
		<a href=javascript:history.back(-1)>上一级</a>
	</td>
		
</center>
</body>
</html>