<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.model.User" %>
<%@ page import="com.model.UserDB" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Quản lý Sinh viên</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-size: cover;
        }

        .container {
            margin-top: 50px;
        }

        .table {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .table th, .table td {
            border: none;
            text-align: center;
        }

        .table th {
            background-color: #7C93C3;
            color: #fff;
            vertical-align: top;
        }

        .table-striped tbody tr:nth-of-type(odd) {
            background-color: rgba(158, 184, 217, 0.3);
        }

        .table-hover tbody tr:hover {
            background-color: rgba(158, 184, 217, 0.5);
        }

        .btn-primary {
            background-color: #7C93C3;
            border-color: #7C93C3;
        }

        .btn-primary:hover {
            background-color: #435585;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center mb-4">Lớp 21CNTTC</h1>
        <h4 class="mb-4">Bí thư: Nguyễn Thị Như Kiều</h4>
    </div>

    <div class="container mt-5">
        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <th rowspan="2">STT</th>
                    <th rowspan="2">Mã Sinh Viên</th>
                    <th rowspan="2">Họ và Tên</th>
                    <th rowspan="2">Tổng tiền</th>
                    <th colspan="8">Trạng thái nộp</th>
                    <th rowspan="2"></th>
                    <th rowspan="2"></th>
                </tr>
                <tr>
                    <th>Kì 1</th>
                    <th>Kì 2</th>
                    <th>Kì 3</th>
                    <th>Kì 4</th>
                    <th>Kì 5</th>
                    <th>Kì 6</th>
                    <th>Kì 7</th>
                    <th>Kì 8</th>
                </tr>
            </thead>
            <tbody>
                <% 
                	int Tongtien = 0;
                    List<User> userList = UserDB.getAllStudents();
                    for (int i = 0; i < userList.size(); i++) {
                        User user = userList.get(i);
                        Tongtien = Tongtien + user.getTrangthai();
                %>
                <tr>
                    <td><%=i + 1%></td>
                    <td><%=user.getMSV()%></td>
                    <td><%=user.getHoTen()%></td>
                    <td><%=user.getTrangthai()*80000 %></td>
                    <% int trangThai = user.getTrangthai(); %>
                    <% for (int j = 1; j <= 8; j++) { %>
                        <td>
                            <%= j <= trangThai ? "<span class='tick'>✔</span>" : "" %>
                        </td>
                    <% } %>

                    <td>
                        <form action="Edit.jsp" method="get">
                            <input type="hidden" name="MSV" value="<%=user.getMSV()%>">
                            <button class="btn btn-outline-dark" type="submit">Chỉnh sửa</button>
                        </form>
                    </td>

                    <td>
                        <form action="/thutiendoan/DeleteUser" method="get">
                            <input type="hidden" name="MSV" value="<%=user.getMSV()%>">
                            <button class="btn btn-outline-dark" type="submit">Xóa</button>
                        </form>
                    </td>
                </tr>
                <% } %>
            </tbody>
        </table>
        
        <div class="container mt-2">
			<h2 class="mb-4">Tổng tiền: <%=Tongtien*80000 %></h2>
		</div>
		
        <div style="text-align: right; margin-right: 15px;">
            <button class="btn btn-primary mt-2" 
            	onclick="location.href='Insert.jsp'">Thêm thông tin</button>
        </div>

		<!-- 		<div style="text-align: left; margin-left: 15px;">
			<a href="Money.jsp" class="btn btn-primary mb-4">Tổng tiền</a>
		</div> -->


	</div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
