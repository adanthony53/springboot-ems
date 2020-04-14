<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Register</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="css/style.css" />
	</head>
	<body>
		<div id="wrap">
			<div id="top_content">
					<div id="header">
						<div id="rightheader">
							<p>
								2020/04/01
								<br />
							</p>
						</div>
						<div id="topheader">
							<h1 id="title">
								<a href="#">EMS</a>
							</h1>
						</div>
						<div id="navigation">
						</div>
					</div>
				<div id="content">
					<p id="whereami">
					</p>
					<h1>
						Register
					</h1>
					<form action="${pageContext.request.contextPath}/user/register" method="post">
						<table cellpadding="0" cellspacing="0" border="0" class="form_table">
							<tr>
								<td valign="middle" align="right">
									Username:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="username" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									Real Name:
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="realname" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									Password:
								</td>
								<td valign="middle" align="left">
									<input type="password" class="inputgri" name="password" />
								</td>
							</tr>
							<tr>
								<td valign="middle" align="right">
									Gender:
								</td>
								<td valign="middle" align="left">
									Male
									<input type="radio" class="inputgri" name="gender" value="m" />
									Female
									<input type="radio" class="inputgri" name="gender" value="f"/>
									Others
									<input type="radio" class="inputgri" name="gender" value="t"/>
								</td>
							</tr>
							
							<tr>
								<td valign="middle" align="right">
									Validation code:
									<img id="num" src="${pageContext.request.contextPath}/user/getImage" />
									<a href="javascript:;" onclick="document.getElementById('num').src = '${pageContext.request.contextPath}/user/getImage?'+(new Date()).getTime()">refresh</a>
								</td>
								<td valign="middle" align="left">
									<input type="text" class="inputgri" name="code" />
								</td>
							</tr>
						</table>
						<p>
							<input type="submit" class="button" value="Submit &raquo;" />
						</p>
					</form>
				</div>
			</div>
			<div id="footer">
				<div id="footer_bg">
					Copyright ©
				</div>
			</div>
		</div>
	</body>
</html>
