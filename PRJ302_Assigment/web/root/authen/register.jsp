<%-- 
    Document   : register
    Created on : Feb 28, 2025, 10:03:40 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
    </head>
    <body>
        <!-- Login 13 - Bootstrap Brain Component -->
        <section class="bg-light py-3 py-md-5">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-sm-10 col-md-8 col-lg-6 col-xl-5 col-xxl-4">
                        <div class="card border border-light-subtle rounded-3 shadow-sm">
                            <div class="card-body p-3 p-md-4 p-xl-5">
                                <div class="text-center mb-3">
                                    <a href="#!">
                                        <img src="https://th.bing.com/th/id/OIP.H7B2zQa6tyItU1JR6pPcngHaEE?rs=1&pid=ImgDetMain" alt="BootstrapBrain Logo" width="175" height="57">

                                    </a>
                                </div>
                                <h2 class="fs-6 fw-normal text-center text-secondary mb-4">Sign up to your account</h2>
                                <form action="register" method="post">
                                    <div class="row gy-2 overflow-hidden">
                                        <div class="col-12">
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control" name="user" id="user" required>
                                                <label for="user" class="form-label">User</label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-floating mb-3">
                                                <input type="password" class="form-control" name="password" id="password" required>
                                                <label for="password" class="form-label">Password</label>
                                            </div>
                                        </div>

                                        <div class="col-12">
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control" name="name" id="name" required>
                                                <label for="name" class="form-label">name</label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-floating mb-3">
                                                <input type="tel" class="form-control" name="phone" id="phone" required>
                                                <label for="phone" class="form-label">phone</label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control" name="address" id="address" required>
                                                <label for="address" class="form-label">address</label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-floating mb-3">
                                                <input type="email" class="form-control" name="email" id="email" required>
                                                <label for="email" class="form-label">email</label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-floating mb-3">
                                                <select name="division">
                                                    <c:forEach items="${listDivision}" var="item">
                                                        <option value="${item.divisionId}">${item.divisionName}</option>                         
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-floating mb-3">
                                                <input type="number" class="form-control" name="role_id" id="role_id" value="1" required hidden=""> 

                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="d-grid my-3">
                                                <input class="btn btn-primary btn-lg" type="submit" value="Sign up"/>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <p class="m-0 text-secondary text-center">You have a account?  <a href="login" class="link-primary text-decoration-none">Sign</a></p>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </section>
    </body>
</html>
