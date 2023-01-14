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
    <title>怀音-歌曲查询结果</title>
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

	<td>    <img src="images/歌曲查询.png" id="log"/></td>
</table>


    </div>

<% 
			request.setCharacterEncoding("UTF-8");
 			response.setCharacterEncoding("UTF-8");
			String musicname=request.getParameter("musicname");
			String n = (String) request.getParameter("dept_name");
			System.out.println(n);
			request.getSession();
			session.setAttribute("musicname",musicname);
			String select=request.getParameter("value");
			System.out.println("1"+select);
			//out.println(musicname);
			music dm=new music();
			Connection con=null;
			ResultSet rs=null;
			String sql=null;
			con=dm.getConnection();
			if(n.equals("100"))
				sql="select a.song_id,a.song_name,b.singer_name,a.song_type,a.region from song a left outer join singer b on a.singer_id=b.singer_id left outer join album c on a.album_id=c.album_id where a.song_name like "+"\'%"+musicname+"%\'";
			else if(n.equals("233"))
				sql="select a.song_id,a.song_name,b.singer_name,a.song_type,a.region from song a left outer join singer b on a.singer_id=b.singer_id left outer join album c on a.album_id=c.album_id where b.singer_name like "+"\'%"+musicname+"%\'";
			else if(n.equals("333"))
				sql="select a.song_id,a.song_name,b.singer_name,a.song_type,a.region from song a left outer join singer b on a.singer_id=b.singer_id left outer join album c on a.album_id=c.album_id where c.album_name like "+"\'%"+musicname+"%\'";
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
			    out.println("<th>歌曲id</th>");
			    out.println("<th>歌曲名称</th>");
			    out.println("<th>歌手名称</th>");
			    out.println("<th>歌曲类型</th>");
			    out.println("<th>地区</th>");
			    out.println("</tr>");
			    //out.println(rs);
			    rs.beforeFirst();
			    while(rs.next()){
			    	out.println("<tr>");
			    	out.println("<td>"+rs.getInt("song_id")+"</td>");
			    	out.println("<td>"+rs.getString("song_name")+"</td>");
			    	out.println("<td>"+rs.getString("singer_name")+"</td>");
			    	out.println("<td>"+rs.getString("song_type")+"</td>");
			    	out.println("<td>"+rs.getString("region")+"</td>");
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
		<% 
		int uid=(int)request.getSession(true).getAttribute("userid");
		sql="select plist_id,plist_name from plist where user_id= '"+uid+"'";
		int arr[]={0,0,0,0,0,0,0,0,0,0};
		String arrn[]={"","","","","","","","","",""};
		int len = 0;
		rs = null;
		if(con!=null) {
			rs=dm.executeQuery(sql);
		}
		try{
		  if(rs!=null&&rs.next()){
		    rs.beforeFirst();
		    while(rs.next()){
					int  p =rs.getInt("plist_id");
					String  pn =rs.getString("plist_name");
					if(len<11)arr[len] = p;arrn[len] = pn;
					len++;
		    }
		  }
		  else{
		  	out.println("没有找到查询结果！");
		  }
		}
		catch(Exception e){
			e.printStackTrace();
		}%>
		<form action="musiccol" method="post">
		收藏歌曲的id:<input type="text" name="songid">
		收藏到歌单:<select id="pid" name="pid">
						<%for(int i=0;i<len;i++){%>
							<option value=<%=arr[i]%>><%=arrn[i]%></option>
						<%}	%>
				</select>
		<br/>
		<br/>
		<input type="submit" value="收藏"/>
			<br/>
				<br/>
		<a href=javascript:history.back(-1)>返回</a>
	</td>
	</form>			
</center>
</body>
</html>