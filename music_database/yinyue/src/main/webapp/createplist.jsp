<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="manager.music" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>怀音-创建歌单</title>

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
        <div id="lg">
  	<table id="hy">
	<td><img src="images/login.png" id="login"/></td>

	<td>    <img src="images/创建歌单.png" id="log"/></td>
</table>


    </div>
<center>

			
		<br/>
		<form action="creplist" method="post">
		歌单名字:<input type="text" name="npname">
		歌单类型:<input type="text" name="ptype">
		歌单简介:<input type="text" name="pintro">
		<br/>
		<br/>
		<input type="submit" value="创建"/>
			
				<br/>
						<br/>
		<a href=javascript:history.back(-1)>返回</a>
	</td>
</center>
</body>
</html>