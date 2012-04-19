<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

    <% if(request.getSession().getAttribute("UserInfo")!=null)
       { response.sendRedirect("/home.jsp");
       }

    %>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

	<title>Login Page</title>

	
	<link rel="stylesheet" type="text/css" href="styles/style.css" />
</head>

<body>

	<form id="login-form" action="login" method="post">
		<fieldset>

			<legend>Log in</legend>

			<label for="login">Email</label>
			<input type="text" id="login" name="loginid"/>
			<div class="clear"></div>

			<label for="password">Password</label>
			<input type="password" id="password" name="pass"/>
			<div class="clear"></div>

			<label for="remember_me" style="padding: 0;">Remember me?</label>
			<input type="checkbox" id="remember_me" style="position: relative; top: 3px; margin: 0; " name="remember_me"/>
			<div class="clear"></div>
                        <br/>
<% if(request.getParameter("message")!=null){
        %> <%=request.getParameter("message") %><%

        }
        %>
			<br />

			<input type="submit" style="margin: -20px 0 0 287px;" class="button" name="commit" value="Log in"/>
		</fieldset>
	</form>

</body>

</html>