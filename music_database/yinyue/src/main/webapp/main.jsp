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
    <title>怀音-音乐数据库系统</title>

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
	<td><img src="images/login.png" width="80" height="80" id="login"/></td>

	<td>    <img src="images/歌曲排行.png" id="log"/></td>
</table> 
    </div>
		<br/>
				<br/>

<% 
			request.setCharacterEncoding("UTF-8");
 			response.setCharacterEncoding("UTF-8");
			//out.println(musicname);
			music dm=new music();
			Connection con=null;
			ResultSet rs=null;
			con=dm.getConnection();
			String sql="select * from vw_songrank order by collect_count desc limit 3";
			System.out.println(sql);
			//String sql="select *from user where user_name='dfs' and phone ='123'";
			if(con!=null) {
				rs=dm.executeQuery(sql);
			}
			try{
			  if(rs!=null&&rs.next()){
				//out.println("1");
			   	out.println("<table id='solist' width=70% border=1 cellspacing=0   >");
			    out.println("<tr>");
			    out.println("<th>歌曲名称</th>");
			    out.println("<th>歌手名称</th>");
			    out.println("<th>收藏量</th>");
			    out.println("</tr>");
			    //out.println(rs);
			    rs.beforeFirst();
			    while(rs.next()){
			    	out.println("<tr>");
			    	out.println("<td>"+rs.getString("song_name")+"</td>");
			    	out.println("<td>"+rs.getString("singer_name")+"</td>");
			    	out.println("<td>"+rs.getInt("collect_count")+"</td>");
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
		<a href="whole.jsp">音乐库</a>
	</td>
	<td>
		<a href="query.jsp">歌曲查询</a>
	</td>
	<td>
		<a href="pquery.jsp">歌单查询</a>
	</td>
	<td>
		<a href="sgquery.jsp">歌手查询</a>
	</td>
	<td>
		<a href="my.jsp">我的界面</a>
	</td>
		<td>
		<a href="login.jsp">退出登录</a>
	</td>
</center>
</body>
</html>

