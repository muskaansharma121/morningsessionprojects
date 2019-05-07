<%@page import="java.sql.ResultSet"%>
<%@page import="Chitkara.Dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%UserDao user=(UserDao)session.getAttribute("user"); %>
<html>
<head>
<title>Profile</title>
<jsp:include page="include/css.jsp"></jsp:include>
<style>
.content-wrapper{
margin-top:40px;
}
</style>
</head>
<jsp:useBean id="c1" class="Chitkara.operation.ProfileOperation"></jsp:useBean>
<body class="hold-transition sidebar-mini">
 <div class="wrapper">
  <!-- Navbar -->
  <jsp:include page="include/header.jsp"></jsp:include>
  <!-- /.navbar -->

 <!-- Main Sidebar Container -->
 <jsp:include page="include/sidebar.jsp"></jsp:include>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
        <div class="col-sm-6">
            <h1 class="m-0 text-dark"></h1>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
      	<div class="row">
          <div class="col-md-8">
             <form>
             <% ResultSet rs=c1.showProfile(user.getUid());
                
                 if(rs.next()){
             %>
                <label>Name</label>
             	<input type="text" value="<%=rs.getString("first_name")+" "+rs.getString("last_name")%>" readonly>
             	<label>UID</label>
             	<input type="text" value="<%=rs.getString("uid")%>" disabled>
             	<label>Father's Name</label>
             	<input type="text" value="<%=rs.getString("father_name")%>">
             	<label>Mother's Name</label>
             	<input type="text" value="<%=rs.getString("mother_name")%>">
             	<label>Email</label>
             	<input type="text" value="<%=rs.getString("email")%>">
             	<%} %>
             </form>
          </div>
                
      </div><!-- /.container-fluid -->
      </div>
    </section>    <!-- /.content -->
  </div>
   <jsp:include page="include/footer.jsp"></jsp:include>
</div> <!-- /.content-wrapper -->
<jsp:include page="include/js.jsp"></jsp:include>
</body>
</html>