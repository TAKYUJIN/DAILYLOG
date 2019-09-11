
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%@ page import ="javax.sql.DataSource" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<body>
<caption>Member 테이블의 내용</caption>
<table width="100%" border="1">
    <thead>
        <tr>
            <th>이름</th>
            <th>아이디</th>
            <th>이메일</th>
        </tr>
    </thead>
    <tbody>
   <%--  <%System.out.println("d");
    
        PreparedStatement pstmt = null;
        Connection conn = null;
        ResultSet rs = null;
        
        System.out.println("e");
        try{
        	  System.out.println("s");
        	String driverName="com.mysql.jdbc.Driver";
            System.out.println("a");
             String jdbcDriver = "jdbc:oracle:thin:@localhost:1521/xe";
            String dbUser = "dailylog";
            String dbPwd = "dailylog"; 
            System.out.println("b");
        	//  Class.forName("driverName");
            System.out.println("c");
            conn = DriverManager.getConnection(jdbcDriver,dbUser, dbPwd);
            System.out.println("f");
            pstmt = conn.prepareStatement("SELECT * FROM VIDEO");
             
            rs = pstmt.executeQuery();
             
            while(rs.next()){
  
        
             rs.getString("file");
             System.out.println("rs"+rs);
             rs.getString("id");
             rs.getString("email");
            }
        }catch(SQLException se){
            se.printStackTrace();
        }finally{
            if(rs != null) rs.close();
            if(pstmt != null) pstmt.close();
            if(conn != null) conn.close();
        }
    %> 
    --%>
   
   <%
String DB_URL = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
String DB_USER = "dailylog";
String DB_PASSWORD= "dailylog";
 
 
ResultSet rs = null;
Connection conn;
PreparedStatement pstmt;

try {
  
 conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
 pstmt = conn.prepareStatement("SELECT * FROM VIDEO");
 rs = pstmt.executeQuery() ;
 conn.close();
 System.out.println("e");
  while (rs.next())
	{
		/* MemberDTO dto = new MemberDTO();
		dto.setMid(rs.getString("MID"));
		dto.setName(rs.getString("NAME"));
		dto.setTel(rs.getString("TEL"));

		result.add(dto); */
	}
} catch(Exception e) {
 out.println(e.getMessage());
}
%>



 	<%-- 	
 	<%! private DataSource dataSource;%>
 	<%
 	Connection conn = dataSource.getConnection();
	
	String sql = "SELECT * FROM ATTACHMENT ";
	 
	PreparedStatement pstmt = conn.prepareStatement(sql);

	ResultSet rs = pstmt.executeQuery() ;
	
 
	while (rs.next())
	{
		/* MemberDTO dto = new MemberDTO();
		dto.setMid(rs.getString("MID"));
		dto.setName(rs.getString("NAME"));
		dto.setTel(rs.getString("TEL"));

		result.add(dto); */
	}

	rs.close();
	pstmt.close();

  
 	
 	
 	
 	%>   --%>
    </tbody>
</table>
</body>
</html>
