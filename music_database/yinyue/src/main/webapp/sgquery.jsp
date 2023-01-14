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
    <title>怀音-歌手查询</title>
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
	<form action="singerquery.jsp" method="post">
	
		
		歌手名： <input type="text" name="sgname">
		<br/>

		<br/>
				<br/>
		<input type="submit" value="查询歌手"/>
		<br/>
		<br/>

		<br/>
			<td>
		<a href=javascript:history.back(-1)>返回</a>
	</td>
	</form>
	
</center>
</body>
</html>