package manager;
import java.sql.*;
public class music{
	
    // MySQL 8.0 以上版本 - JDBC 驱动名及数据库 URL
    public String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";  
    public String DB_URL = "jdbc:mysql://124.71.228.59:3306/user090db?useUnicode=true&characterEncoding=utf8";
 
    // 数据库的用户名与密码，需要根据自己的设置
    public String USER = "DB_USER090";
    public String PASS = "DB_USER090@123";
    public Connection conn = null;
    public Statement stmt = null;
    public ResultSet rs=null;
    
    public music() {
    	try {
            // 注册 JDBC 驱动
            Class.forName(JDBC_DRIVER);
    	}catch(ClassNotFoundException e){
    		e.printStackTrace();
    		System.out.println("驱动加载失败！"+e);
    	}
    }
    
    public Connection getConnection() {
    	try {
            // 打开链接
            System.out.println("连接数据库...");
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
    	}catch(SQLException e) {
    		e.printStackTrace();
    		System.out.println("数据库连接失败！");
    	}
    	return conn;
    }
    
    public ResultSet executeQuery(String sql) {
    	try {
            // 执行查询
            System.out.println(" 实例化Statement对象...");
            stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
            //sql = "SELECT user_id,user_name FROM user";
            rs = stmt.executeQuery(sql);
            System.out.println("查询成功");
    	}catch(SQLException e) {
    		e.printStackTrace();
    	}
    	if(rs==null) {
    		System.out.println("查询失败");
    	}
    	return rs;
    }
    
    public int executeUpdate(String sql) {
    	int result=0;
    	try {
            System.out.println(" 实例化Statement对象...");
            stmt = conn.createStatement();
            result=stmt.executeUpdate(sql);
    	}catch(SQLException e) {
    		e.printStackTrace();
    		System.out.print("执行失败");
    		result=0;
    	}
    	return result;
    }
    
    public void close() {
    	if(rs!=null) {
    		 try {
    			 rs.close();
    		 }catch(SQLException e) {
    			 e.printStackTrace();
    		 }
    	}
    	if(stmt!=null) {
    		try {
    			stmt.close();
    		}catch(SQLException e) {
    			e.printStackTrace();
    		}
    	}
    	if(conn!=null) {
    		try {
    			conn.close();
    		}catch(SQLException e) {
    			e.printStackTrace();
    		}
    	}
    }
//设置一个管理员模式，一个普通用户模式
//普通用户模式只能查询
//管理员模式可以增加歌曲和其他记录
 }
