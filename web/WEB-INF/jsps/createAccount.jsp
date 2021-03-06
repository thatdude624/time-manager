<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>STMS - Create Account</title>
    <%@include file="common/headerIncludes.jsp"%>
    <style>
        .lightText {
            color: #959595;
        }

        h1, h2, h3, h4, h5, h6 {
            color: black;
        }

        .page-header {
            padding-top: 50px;
        }
    </style>
</head>
<body>

<%@include file="common/navbar.jsp" %>

<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Student Time Management System
                <small class="lightText">STMS</small>
            </h1>

            <div class="card card-default">
                <div class="card-header">
                    <h3 class="panel-title">
                        <span class="glyphicon glyphicon-log-in"></span>
                        Create Account
                    </h3>
                </div>
                <div class="card-body">
                    <%--sf:form works like HTML forms, but is needed for fancy Spring stuff to work. 'id' becomes 'path', moddelAttribute is method arggument name--%>
                    <sf:form method="post" action="${pageContext.request.contextPath}/doCreateAccount" modelAttribute="user">
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Username</span>
                            </div>
                            <sf:input type="text" class="form-control" placeholder="Enter Username" path="username"/>
                        </div>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Password</span>
                            </div>
                            <sf:input type="password" class="form-control" placeholder="Password" path="pass1"/>
                            <sf:input type="password" class="form-control" placeholder="Confirm Password" path="pass2"/>
                        </div>
                        <button type="submit" class="btn btn-default">Sign Up</button>
                    </sf:form>
                </div>
            </div>
        </div>
    </div>
</div>
<p style="margin-bottom:50px;"></p>

</body>
</html>
