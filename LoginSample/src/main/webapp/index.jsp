<html>
<body>
<h2>Login screen</h2>

<form action="index.jsp" method="post">
	Username: <input type="text" placeholder="Username" name="username" /> 
	Password: <input type="password" placeholder="Password" name="password" />
	<input type="submit" value="Submit">
</form>

<%

    String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	String loginMessage = null;
	
	
	if(username!= null && password != null) {
    	if(username.equals("admin") && password.equals("123456")) {
    		loginMessage = "Login successfully";
    	} else {
    		loginMessage = "Incorrect username/password";
    	}
    
	}
	
%>
	
<% if(loginMessage!=null) { %>

	<h2>Message : <%= loginMessage %></h2>
	
<%  } %>

</body>
</html>