<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Đăng nhập</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	background: url("background.jpg");
	background-size: cover;
	height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
}

.container {
	width: 350px;
}

.form-container {
	background-color: rgba(255, 255, 255);
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}
</style>
</head>
<body>

	<div class="container">
		<div class="form-container">
			<h2 class="text-center mb-4">Đăng nhập</h2>
			<form action="/thutiendoan/UserServlet" method="post">
				<div class="form-group">
					<label for="studentId">Mã sinh viên:</label> <input type="text"
						class="form-control" id="studentId" name="studentId" required>
				</div>
				<div class="form-group">
					<label for="password">Mật khẩu:</label> <input type="password"
						class="form-control" id="password" name="password" required>
				</div>
				<button type="submit" class="btn btn-info btn-block mt-4" >Đăng nhập</button>
			</form>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
