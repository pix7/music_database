package manager;
import java.sql.*;
public class music{
	
    // MySQL 8.0 ���ϰ汾 - JDBC �����������ݿ� URL
    public String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";  
    public String DB_URL = "jdbc:mysql://124.71.228.59:3306/user090db?useUnicode=true&characterEncoding=utf8";
 
    // ���ݿ���û��������룬��Ҫ�����Լ�������
    public String USER = "DB_USER090";
    public String PASS = "DB_USER090@123";
    public Connection conn = null;
    public Statement stmt = null;
    public ResultSet rs=null;
    
    public music() {
    	try {
            // ע�� JDBC ����
            Class.forName(JDBC_DRIVER);
    	}catch(ClassNotFoundException e){
    		e.printStackTrace();
    		System.out.println("��������ʧ�ܣ�"+e);
    	}
    }
    
    public Connection getConnection() {
    	try {
            // ������
            System.out.println("�������ݿ�...");
            conn = DriverManager.getConnection(DB_URL,USER,PASS);
    	}catch(SQLException e) {
    		e.printStackTrace();
    		System.out.println("���ݿ�����ʧ�ܣ�");
    	}
    	return conn;
    }
    
    public ResultSet executeQuery(String sql) {
    	try {
            // ִ�в�ѯ
            System.out.println(" ʵ����Statement����...");
            stmt = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_UPDATABLE);
            //sql = "SELECT user_id,user_name FROM user";
            rs = stmt.executeQuery(sql);
            System.out.println("��ѯ�ɹ�");
    	}catch(SQLException e) {
    		e.printStackTrace();
    	}
    	if(rs==null) {
    		System.out.println("��ѯʧ��");
    	}
    	return rs;
    }
    
    public int executeUpdate(String sql) {
    	int result=0;
    	try {
            System.out.println(" ʵ����Statement����...");
            stmt = conn.createStatement();
            result=stmt.executeUpdate(sql);
    	}catch(SQLException e) {
    		e.printStackTrace();
    		System.out.print("ִ��ʧ��");
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
//����һ������Աģʽ��һ����ͨ�û�ģʽ
//��ͨ�û�ģʽֻ�ܲ�ѯ
//����Աģʽ�������Ӹ�����������¼
 }
