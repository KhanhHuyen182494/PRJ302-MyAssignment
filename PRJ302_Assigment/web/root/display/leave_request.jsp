<%-- 
    Document   : leave_request.jsp
    Created on : Feb 26, 2025, 11:07:46 AM
    Author     : admin
--%>
0
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Leave Request System</title>
    <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Leave System</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#createRequest">Tạo Đơn</a></li>
                    <li class="nav-item"><a class="nav-link" href="#history">Lịch Sử</a></li>
                    <li class="nav-item"><a class="nav-link" href="#profile">Profile</a></li>
                    <li class="nav-item"><a class="nav-link" href="#changePassword">Đổi Mật Khẩu</a></li>
                    <li class="nav-item"><a class="nav-link text-danger" href="#logout">Đăng Xuất</a></li>
                </ul>
            </div>
        </div>
    </nav>
    
    <div class="container mt-4">
        <section id="createRequest">
            <h2>Tạo Đơn Nghỉ Phép</h2>
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
        
        <section id="history" class="mt-4">
            <h2>Lịch Sử Đơn</h2>
            <table class="table table-bordered">
                <thead>
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
        
        <section id="profile" class="mt-4">
            <h2>Thông Tin Cá Nhân</h2>
            <p><strong>Tên:</strong> Nguyễn Văn A</p>
            <p><strong>Email:</strong> example@example.com</p>
        </section>
        
        <section id="changePassword" class="mt-4">
            <h2>Đổi Mật Khẩu</h2>
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
    
    <script src="https://unpkg.com/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
