<%@page import ="project.ConnectionProvider"%>
<%@page import ="java.sql.*"%>

<%
String course = request.getParameter("course");
String branch = request.getParameter("branch");
String rollNo = request.getParameter("rollNo");
String name = request.getParameter("name");
String fatherName = request.getParameter("fatherName");
String gender = request.getParameter("gender");

try {
    Connection con = ConnectionProvider.getCon();
    Statement st = con.createStatement();

    String query = "INSERT INTO student VALUES ('" + course + "','" + branch + "','" + rollNo + "','" + name + "','" + fatherName + "','" + gender + "')";

    st.executeUpdate(query);

    // Close the Statement and Connection
    st.close();
    con.close();

    response.sendRedirect("adminHome.jsp");
} catch (Exception e) {
    out.println(e);
}
%>
