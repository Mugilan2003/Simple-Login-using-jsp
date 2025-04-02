<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
display:flex;
justify-content:center;
align-items:center;
height:100vh;
}

</style>
</head>
<body>
<form action="Login" method="post">
<table>
<tr>
<td><label>Username :</label></td>
<td><input type="email" name="email" required></td>
</tr>

<tr>
<td><label>Password :</label></td>
<td><input type="password" name="password" required></td>
</tr>

<tr>
<td></td>
<td><button type="submit">Login</button></td>
</tr>

</table>	
    
</form>
</body>
</html>