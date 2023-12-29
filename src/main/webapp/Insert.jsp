<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.model.User" %>
<%@ page import="com.model.UserDB" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Thêm thông tin</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
            max-width: 450px; 
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
	<%
	User u = new User();
	%>
	<div class="container">
    <div class="form-container">
        <h2 class="text-center mb-4">Thêm thông tin sinh viên</h2>
        <form action="/thutiendoan/InsertUserServlet" method="get">
            <div class="form-group">
                    <label>Mã sinh viên:</label> 
                    <input type="text" class="form-control" name="MSV"  required>
                </div>
                <div class="form-group">
                    <label>Họ tên:</label> 
                    <input type="text" class="form-control"  name="HoTen"  required>
                </div>
                <div class="form-group">
                    <label>Trạng thái:</label><br>
                    <label><input type="checkbox" name="Trangthai[]" value="term1" > Kỳ 1 </label>
                    <label><input type="checkbox" name="Trangthai[]" value="term2" > Kỳ 2 </label>
                    <label><input type="checkbox" name="Trangthai[]" value="term3" > Kỳ 3 </label>
                    <label><input type="checkbox" name="Trangthai[]" value="term4" > Kỳ 4 </label><br>
                    <label><input type="checkbox" name="Trangthai[]" value="term5" > Kỳ 5 </label>
                    <label><input type="checkbox" name="Trangthai[]" value="term6" > Kỳ 6 </label>
                    <label><input type="checkbox" name="Trangthai[]" value="term7" > Kỳ 7 </label>
                    <label><input type="checkbox" name="Trangthai[]" value="term8" > Kỳ 8 </label>
                </div>
                <input type="hidden" name="MSV" value="<%= u %>">
                <button type="submit" class="btn btn-info btn-block mt-3">Thêm thông tin</button>
			</form>
            <button class="btn btn-info btn-block mt-3" onclick="location.href='Display.jsp'">Danh sách sinh viên</button>
        
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
