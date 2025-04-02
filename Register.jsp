<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register Page</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: azure;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        #register {
            background-color: grey;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.2);
            width: 300px;
        }

        table {
            width: 100%;
        }

        td {
            padding: 8px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin: 5px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        .submit {
            background-color: green;
            color: white;
            padding: 10px;
            cursor: pointer;
            border: none;
            width: 100%;
            border-radius: 5px;
        }

        .submit:hover {
            background-color: darkgreen;
        }
    </style>

    <script>
        function validateForm() {
            var pass = document.forms["registerForm"]["Upass"].value;
            var cpass = document.forms["registerForm"]["Ucpass"].value;
            if (pass !== cpass) {
                alert("Passwords do not match!");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <div id="register">
        <form name="registerForm" action="Register" method="post" onsubmit="return validateForm()">
            <table>
                <tr>
                    <td>UserName</td>
                    <td><input type="text" name="Uname" placeholder="Name" required></td>
                </tr>

                <tr>
                    <td>Email</td>
                    <td><input type="email" name="Uemail" placeholder="Email" required></td>
                </tr>

                <tr>
                    <td>Password</td>
                    <td><input type="password" name="Upass" placeholder="Password" required></td>
                </tr>

                <tr>
                    <td>Confirm Password</td>
                    <td><input type="password" name="Ucpass" placeholder="Confirm Password" required></td>
                </tr>

                <tr>
                    <td colspan="2"><input class="submit" type="submit" value="Register"></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
