<%@page import="com.find1x.gpms.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="navbar navbar-inverse navbar-fixed-top">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index">毕业设计管理系统</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="/gpms/">首页</a></li>
			 
		
			</ul>
			<%
				if (session.getAttribute("username") != null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li><a> 欢迎您， <%=UserDAO.getUserName(session.getAttribute("username")
						.toString(), Integer.parseInt(session.getAttribute(
						"type").toString()))%></a></li>
				<li><a href='changePasswd'>修改密码</a></li>
				<li><a href="logout">退出</a></li>
			</ul>
			<%
				}
			%>
		</div>
	</div>
</nav>