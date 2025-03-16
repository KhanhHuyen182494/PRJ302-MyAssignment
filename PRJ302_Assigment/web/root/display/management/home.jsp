<%-- 
    Document   : home
    Created on : Feb 26, 2025, 1:16:47 AM
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

        <jsp:include page="/root/display/employee/header.jsp"></jsp:include>
            <div class="container mt-4">
                <section id="createRequest">
                    <h2>Tạo Đơn Nghỉ Phép</h2>
                    <form action="createRequest" method="post">
                        <div class="mb-3">
                            <label class="form-label">Ngày Bắt Đầu</label>
                            <input type="date" class="form-control" name="dateStart" required="">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Ngày Kết Thúc</label>
                            <input type="date" class="form-control" name="dateEnd" required="">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Lý Do</label>
                            <textarea class="form-control" name="issue" rows="3" required=""></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Gửi Đơn</button>
                    </form>
                </section>
                <c:if test="${ErrDate != null}">
                <p style="color: red">${ErrDate}</p>
            </c:if>
            <c:if test="${CreateForm != null}">
                <p style="color: green">${CreateForm}</p>
            </c:if>
        </div>

        <script src="https://unpkg.com/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
