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
    <script src="https://unpkg.com/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>
    <style>
        body { 
    background-color: #e0f7fa; 
    font-family: 'Arial', sans-serif;
}

.navbar {
    background-color: #00796b !important;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
}

.navbar-brand, .nav-link {
    color: white !important;
}

.nav-link:hover {
    background-color: rgba(255, 255, 255, 0.2);
    border-radius: 5px;
}

.card {
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
    background-color: white;
    border-left: 5px solid #009688;
}

h2 {
    color: #009688;
}

.btn-primary {
    background-color: #009688;
    border-color: #009688;
}

.btn-primary:hover {
    background-color: #00796b;
}

.btn-warning {
    background-color: #ffb74d;
    border-color: #ffb74d;
}

.btn-warning:hover {
    background-color: #fb8c00;
}

.table thead {
    background-color: #00796b;
    color: white;
}

        body { background-color: #f8f9fa; }
        .navbar { box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1); }
        .nav-link:hover { background-color: rgba(255, 255, 255, 0.1); border-radius: 5px; }
        .card { box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1); }
        table th, table td { text-align: center; vertical-align: middle; }
    </style>
</head>
<body>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#"><i class="fas fa-calendar-check"></i> Leave System</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#createRequest"><i class="fas fa-plus-circle"></i> Tạo Đơn</a></li>
                    <li class="nav-item"><a class="nav-link" href="#history"><i class="fas fa-history"></i> Lịch Sử</a></li>
                    <li class="nav-item"><a class="nav-link" href="#profile"><i class="fas fa-user"></i> Profile</a></li>
                    <li class="nav-item"><a class="nav-link" href="#changePassword"><i class="fas fa-key"></i> Đổi Mật Khẩu</a></li>
                    <li class="nav-item"><a class="nav-link text-danger" href="#logout"><i class="fas fa-sign-out-alt"></i> Đăng Xuất</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-4">

        <!-- Tạo Đơn Nghỉ Phép -->
        <section id="createRequest">
            <div class="card p-4">
                <h2 class="mb-3"><i class="fas fa-edit"></i> Tạo Đơn Nghỉ Phép</h2>
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
                    <button type="submit" class="btn btn-primary"><i class="fas fa-paper-plane"></i> Gửi Đơn</button>
                </form>
            </div>
        </section>

        <!-- Lịch Sử Đơn -->
        <section id="history" class="mt-4">
            <div class="card p-4">
                <h2 class="mb-3"><i class="fas fa-clock"></i> Lịch Sử Đơn</h2>
                <table class="table table-bordered table-hover">
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
                            <td class="text-success"><i class="fas fa-check-circle"></i> Đã duyệt</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </section>

        <!-- Thông Tin Cá Nhân -->
        <section id="profile" class="mt-4">
            <div class="card p-4">
                <h2 class="mb-3"><i class="fas fa-user-circle"></i> Thông Tin Cá Nhân</h2>
                <p><strong>Tên:</strong> Nguyễn Văn A</p>
                <p><strong>Email:</strong> example@example.com</p>
            </div>
        </section>

        <!-- Đổi Mật Khẩu -->
        <section id="changePassword" class="mt-4">
            <div class="card p-4">
                <h2 class="mb-3"><i class="fas fa-key"></i> Đổi Mật Khẩu</h2>
                <form>
                    <div class="mb-3">
                        <label class="form-label">Mật Khẩu Hiện Tại</label>
                        <input type="password" class="form-control">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Mật Khẩu Mới</label>
                        <input type="password" class="form-control">
                    </div>
                    <button type="submit" class="btn btn-warning"><i class="fas fa-sync-alt"></i> Cập Nhật</button>
                </form>
            </div>
        </section>

    </div>

</body>
</html>
