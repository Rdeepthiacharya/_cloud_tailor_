<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@page import ="dbconnection.Dbconnection"%>
<style type="text/css">
    body {
        background-image: url(shopimage.jpg);
        background-repeat: repeat-x;
    }
</style>
<%
    try {
        String email=(String)session.getAttribute("emailid");
        Connection con = Dbconnection.getConnection();
        String t1 = request.getParameter("id").trim();
        Statement stmt = con.createStatement();

        String s1 = "", s2 = "", s3 = "", s4 = "", s5 = "";
        ResultSet rs;

        String sql ="select * from product where pid=" + "'" + t1+ "'";

        rs = stmt.executeQuery("select * from product where pid=" + "'" + t1+ "'");

        if (rs.next()) {
            s1 = rs.getString("pid");
            s2 = rs.getString("pdesc");
            s3 = rs.getString("rate");
            s4 = rs.getString("pic");
            s5 = rs.getString("gst");
            
        }
        rs.close();

        PreparedStatement pstmt = con.prepareStatement("insert into carttemp(pid, pdesc, rate, pic, gst, emailid, statu, productid) values(?,?,?,?,?,?,?,?)");
        pstmt.setString(1, s1);
        pstmt.setString(2, s2);
        pstmt.setString(3, s3);
        pstmt.setString(4, s4);
        pstmt.setString(5, s5);
        pstmt.setString(6, email);
        pstmt.setString(7, "Not Paid");
        pstmt.setString(8, t1);        
        session.setAttribute("productid", t1);		

        pstmt.executeUpdate();

        pstmt.close();
        con.close();
        out.println("<script> alert('Added successfully');window.location='Showmycart.jsp'; </script>");
        out.println("<br><br><br><h1><a href=index.jsp>Return to Cart</a></h1>");

    } catch (Exception e) {
        out.println("Exception occured" + e);
    }
%>