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
    <title>怀音-歌手查询结果</title>
    <link href="css/jquery-ui.css" rel="stylesheet" />
    <link href="css/jquery.ui.theme.css" rel="stylesheet" />
    <link href="css/calendar.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="css/login.css" />
    <script src="js/moment.min.js"></script>
    <script src="js/jquery-1.9.1.min.js"></script>
    <script src="js/jquery-ui-1.10.2.min.js"></script>

  </head>
<body>

		<img src="images/怀音音乐数据库2.png"  id="title"/>

<center>
	<br/>
	<br/>
        <div id="lg">
  	<table id="hy">
	<td><img src="images/login.png" id="login"/></td>

	<td>    <img src="images/歌手查询.png" id="log"/></td>
</table>


    </div>
		<br/>
		<br/>
<% 
			request.setCharacterEncoding("UTF-8");
 			response.setCharacterEncoding("UTF-8");
			String sgname=request.getParameter("sgname");
			//out.println(musicname);
			music dm=new music();
			Connection con=null;
			ResultSet rs=null;
			con=dm.getConnection();
			String sql="select * from singer where singer_name like "+"\'%"+sgname+"%\'";
			System.out.println(sql);
			//String sql="select *from user where user_name='dfs' and phone ='123'";
			if(con!=null) {
				rs=dm.executeQuery(sql);
			}
			try{
			  if(rs!=null&&rs.next()){
				//out.println("1");
			   	out.println("<table width=70% border=1 cellspacing=0>");
			    out.println("<tr>");
			    out.println("<th>歌手id</th>");
			    out.println("<th>歌手名称</th>");
			    out.println("<th>歌手简介</th>");
			    out.println("</tr>");
			    //out.println(rs);
			    rs.beforeFirst();
			    while(rs.next()){
			    	out.println("<tr>");
			    	out.println("<td>"+rs.getInt("singer_id")+"</td>");
			    	out.println("<td>"+rs.getString("singer_name")+"</td>");
			    	out.println("<td>"+rs.getString("singer_intro")+"</td>");
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
		<br/>
	<td>
		<a href=javascript:history.back(-1)>返回</a>
	</td>
</center>
</body>
</html>