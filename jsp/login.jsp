<!DOCTYPE html>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript">
	function validatePassword()
	{
		var pas=document.getElementById('password').value;
		if(pas==null || pas=="")
		{
			alert("Password field cannot be Empty");
			return false;
		}
		else if(pas.length()<8)
		{
			alert("Password should be ateast 8 characters long");
		}
		else
		{
			return true;
		}
	}
</script>
</head>
<body>
	<form action="Login" method="POST">
	<h4>User ID<br>
	<input type="text" name="userid" id="userid">
	</h4>
	<h4>PASSWORD<br>
	<input type="PASSWORD" name="password" id="password">
	</h4>
	<input type="submit" value="Submit" onclick="validatePassword()">
	<input type="reset" value="Cancel">
	</form>
	
</body>
</html>