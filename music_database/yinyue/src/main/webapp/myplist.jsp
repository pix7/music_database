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
    <title>怀音-我的歌单</title>

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

	<td>    <img src="images/已创建歌单.png" id="log"/></td>
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
			String sql="select a.plist_id,a.plist_name from plist a inner join user b on a.user_id=b.user_id where user_name="+"\'"+name+"\'";
			//String sql="select *from user where user_name='dfs' and phone ='123'";
			if(con!=null) {
				rs=dm.executeQuery(sql);
			}
			try{
			  if(rs!=null&&rs.next()){
			    out.println("<table width=50% border=1 cellspacing=0>");
			    out.println("<tr>");
			    out.println("<th>歌单编号</th>");
			    out.println("<th>歌单名称</th>");
			    out.println("</tr>");
		//以前家里经常去的小诊所	    
			    rs.beforeFirst();
			    while(rs.next()){
			    	out.println("<tr>");
			    	out.println("<td>"+rs.getInt("plist_id")+"</td>");
			    	out.println("<td>"+rs.getString("plist_name")+"</td>");
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
		<form action="plist.jsp" method="post">
		进入歌单id:<input type="text" name="pid">
		<br/>
		<br/>
		<input type="submit" value="查看"/>
		<br/>
		<br/>
		<br/>
			<td>
		<a href="createplist.jsp">新建歌单</a>
	</td>
	<td>
		<a href=javascript:history.back(-1)>返回</a>
	</td>
		
	</form>
		
</center>

</body>
</html>