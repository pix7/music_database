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
    <title>怀音-我的信息</title>

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

	<td>    <img src="images/我的信息.png" id="log"/></td>
</table>
<br/>
<br/>


    </div>
<% 
 			response.setCharacterEncoding("UTF-8");
			request.setCharacterEncoding("UTF-8");
			String name=(String) session.getAttribute("username");
			request.getSession();
			session.setAttribute("name",name);
			music dm=new music();
			Connection con=null;
			ResultSet rs=null;
			con=dm.getConnection();
			System.out.println(name);
			String sql="select *from user where user_name="+"\'"+name+"\'";
			//String sql="select *from user where user_name='dfs' and phone ='123'";
			if(con!=null) {
				rs=dm.executeQuery(sql);
			}
			try{
			  if(rs!=null){
			    out.println("<table width=70% border=1 cellspacing=0>");
			    out.println("<tr>");
			    out.println("<th>用户id</th>");
			    out.println("<th>用户姓名</th>");
			    out.println("<th>个人简介</th>");
			    out.println("</tr>");
		//以前家里经常去的小诊所	    
			   // rs.beforeFirst();
			    while(rs.next()){
			    	out.println("<td>"+rs.getInt("user_id")+"</td>");
			    	out.println("<td>"+rs.getString("user_name")+"</td>");
			    	out.println("<td>"+rs.getString("intro")+"</td>");
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
		
		<form action="changeintro" method="post">
		<div ><span >修改个人简介:</span><input type="text" name="intro" value="" required maxlength="20" /></div>
	<br/>

	<br/>
		

	
		<input type="submit" value="确定修改"/>
		<br/>
		<br/>

		
			<td>
		<a href=javascript:history.back(-1)>返回</a>
	</td>
</center>
</body>
</html>