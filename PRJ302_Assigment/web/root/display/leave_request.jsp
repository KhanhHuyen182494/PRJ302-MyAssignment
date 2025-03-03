<%-- 
    Document   : leave_request.jsp
    Created on : Feb 26, 2025, 11:07:46 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Leave Request System</title>
        <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
        <style>
            body {
                background: linear-gradient(to right, #ffecd2, #fcb69f);
            }
            .navbar {
                background-color: #343a40;
            }
            .section-container {
                background: white;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
                margin-bottom: 20px;
            }
            .btn-primary {
                background-color: #6a11cb;
                border: none;
            }
            .btn-warning {
                background-color: #ff8c00;
                border: none;
            }
        </style>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container">
                <a class="navbar-brand" href="#">Leave System</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item"><a class="nav-link" href="#createRequest">Create Request</a></li>
                        <li class="nav-item"><a class="nav-link" href="#history">History</a></li>
                        <li class="nav-item"><a class="nav-link" href="#profile">Profile</a></li>
                        <li class="nav-item"><a class="nav-link" href="#changePassword">Change Password</a></li>
                        <li class="nav-item"><a class="nav-link" href="#agenda"> Agenda</a></li>
                        <li class="nav-item"><a class="nav-link text-danger" href="#logout">Logout</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container mt-4">
            <section id="createRequest" class="section-container">
                <h2 class="text-primary">Tạo Đơn Nghỉ Phép</h2>
                <form>
                    <div class="mb-3">
                        <label class="form-label">Ngày Bắt Đầu</label>
                        <input type="date" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Ngày Kết Thúc</label>
                        <input type="date" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Lý Do</label>
                        <textarea class="form-control" rows="3"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Gửi Đơn</button>
                </form>
            </section>

            <section id="history" class="section-container">
                <h2 class="text-success">Lịch Sử Đơn</h2>
                <table class="table table-bordered">
                    <thead class="table-dark">
                        <tr>
                            <th>Ngày Bắt Đầu</th>
                            <th>Ngày Kết Thúc</th>
                            <th>Lý Do</th>
                            <th>Trạng Thái</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>2025-03-10</td>
                            <td>2025-03-12</td>
                            <td>Nghỉ ốm</td>
                            <td class="text-success">Đã duyệt</td>
                        </tr>
                    </tbody>
                </table>
            </section>

            <section id="profile" class="section-container">
                <h2 class="text-info">Thông Tin Cá Nhân</h2>
                <p><strong>Tên:</strong> Nguyễn Văn A</p>
                <p><strong>Email:</strong> example@example.com</p>
            </section>

            <section id="changePassword" class="section-container">
                <h2 class="text-danger">Đổi Mật Khẩu</h2>
                <form>
                    <div class="mb-3">
                        <label class="form-label">Mật Khẩu Hiện Tại</label>
                        <input type="password" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Mật Khẩu Mới</label>
                        <input type="password" class="form-control">
                    </div>
                    <button type="submit" class="btn btn-warning">Cập Nhật</button>
                </form>
            </section>
        </div>

        <div>
            <style>
                .agenda-table th, .agenda-table td {
                    text-align: center;
                    padding: 8px;
                    width: 80px;
                }
                .agenda-table th {
                    background-color: #4a4a4a;
                    color: white;
                }
                .agenda-table .bg-success {
                    background-color: #28a745 !important;
                }
                .agenda-table .bg-danger {
                    background-color: #dc3545 !important;
                }
            </style>

            <section id="agenda" class="section-container">
                <h2 class="text-primary">Agenda</h2>
                <table class="table table-bordered agenda-table">
                    <thead>
                        <tr>
                            <th>Nhân sự</th>
                            <th>1/1</th>
                            <th>2/1</th>
                            <th>3/1</th>
                            <th>4/1</th>
                            <th>5/1</th>
                            <th>6/1</th>
                            <th>7/1</th>
                            <th>8/1</th>
                            <th>9/1</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Mr A</td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-danger"></td>
                            <td class="bg-success"></td>
                            <td class="bg-danger"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                        </tr>
                        <tr>
                            <td>Mr B</td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-danger"></td>
                            <td class="bg-success"></td>
                            <td class="bg-danger"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                        </tr>
                        <tr>
                            <td>Mr C</td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-danger"></td>
                            <td class="bg-danger"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                        </tr>
                        <tr>
                            <td>Mr D</td>
                            <td class="bg-success"></td>
                            <td class="bg-danger"></td>
                            <td class="bg-danger"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                        </tr>
                    </tbody>
                </table>
            </section>
        </div>
        
        

        <script src="https://unpkg.com/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
