<%-- 
    Document   : changePassword
    Created on : Mar 1, 2025, 12:11:11 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Leave Request System</title>
        <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    </head>

    <body>
       
        <jsp:include page="/root/display/employee/header.jsp"></jsp:include>
        <div class="container mt-4">

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
