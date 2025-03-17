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

            
                <section id="changePassword" class="mt-4">
                    <h2>Change Password</h2>
                    <form action="changePassword" method="post">
                        <div class="mb-3">
                            <label class="form-label">Current Password</label>
                            <input type="password" name="oldPassword" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">New Password</label>
                            <input type="password" name="newPassword" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Confirm New Password</label>
                            <input type="password" name="confirmPassword" class="form-control">
                        </div>
                        <button type="submit" class="btn btn-warning">Update</button>
                    </form>
                </section>
            </div>
        <c:if test="${errMess != null}">
            <p style="color: red">${errMess}</p>
        </c:if>

        <script src="https://unpkg.com/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>

</html>
