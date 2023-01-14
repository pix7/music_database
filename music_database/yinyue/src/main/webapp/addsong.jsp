<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="manager.music" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>怀音-添加歌曲</title>
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
	width:280px;
	}
	div{
	width:700px;
	}
</style>
</head>
<body>
		<img src="images/怀音音乐数据库2.png"  id="title"/>

<center>
        <div id="lg">
  	<table id="hy">
	<td><img src="images/login.png" id="login"/></td>

	<td>    <img src="images/添加歌曲.png" id="log"/></td>
</table>
<br/>

<form action="addsong" method="post">
	<div ><span >歌曲名字：</span><input type="text" name="sname" value="" required maxlength="20" /></div>
	<br/>
    <div ><span >地区：</span><input type="text" name="region" value="" required maxlength="20" /></div>
 	<br/>
    <div ><span >歌曲风格：</span><input type="text" name="stype" value="" required maxlength="100" /></div>
    <br/>
    <div ><span >发行时间：</span><input type="text" name="releasetime" value="" required maxlength="50" /></div>
	<br/>
	<div ><span >专辑id：</span><input type="text" name="aid" value="" required maxlength="50" /></div>
	<br/>
	<div ><span style="display:inline-block;width:280px;">专辑名称（专辑存在时不填）：</span><input type="text" name="aname" value="" required maxlength="50" /></div>
	<br/>
	<div ><span >专辑介绍：</span><input type="text" name="aintro" value="" required maxlength="50" /></div>
	<br/>
	<div ><span >歌手id：</span><input type="text" name="singerid" value="" required maxlength="50" /></div>
	<br/>
	<div ><span >歌手名称(歌手存在时不填)：</span><input type="text" name="singername" value="" required maxlength="50" /></div>
	<br/>
	<div ><span >歌手简介：</span><input type="text" name="singerintro" value="" required maxlength="50" /></div>
	<br/>
		


		<input type="submit" value="添加歌曲"/>
		<br/>
		<br/>
		<a href="whole.jsp">歌曲库</a>

</center>
</body>
</html>