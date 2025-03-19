<%-- 
    Document   : login
    Created on : Feb 25, 2025, 11:52:53 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" href="https://unpkg.com/bootstrap@5.3.3/dist/css/bootstrap.min.css">
        <style>
            body {
                background-color: #0d47a1; /* Dark Blue */
                min-height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .bg-light{
                background-color: #0d47a1;
            }
            .container{
                background-color: #0d47a1;
            }
            .card {
                background-color: #f8f9fa; /* Light Gray */
                border-radius: 12px;
                box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            }
            .btn-primary {
                background-color: #1565c0; /* Deep Blue */
                border: none;
            }
            .btn-primary:hover {
                background-color: #0d47a1; /* Darker Blue */
            }
            
        </style>
    </head>
    <body>
        <!-- Login 13 - Bootstrap Brain Component -->
        <section class="bg-light">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-12 col-sm-10 col-md-8 col-lg-6 col-xl-5 col-xxl-4">
                        <div class="card p-4">
                            <div class="card-body">
                                <div class="text-center mb-3">
                                    <a href="#!">
                                        <img src="imgg/H_brightened.jpg" alt="BootstrapBrain Logo" width="175" height="175">

                                    </a>
                                </div>
                                <h2 class="fs-6 fw-normal text-center text-secondary mb-4">Sign in to your account</h2>
                                <form action="login" method="post">
                                    <div class="row gy-2 overflow-hidden">
                                        <div class="col-12">
                                            <div class="form-floating mb-3">
                                                <input type="text" class="form-control" name="user" id="user" value="${user}"required>
                                                <label for="user" class="form-label">User</label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-floating mb-3">
                                                <input type="password" class="form-control" name="password" id="password" value="${pass}" required>
                                                <label for="password" class="form-label">Password</label>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="d-flex gap-2 justify-content-between">
                                                <div class="form-check">
                                                    <input class="form-check-input" type="checkbox" value="remember" name="rememberMe" id="rememberMe" ${remember != null?"checked":""}>
                                                    <label class="form-check-label text-secondary" for="rememberMe">
                                                        Keep me logged in
                                                    </label>
                                                </div>
                                                <a href="#!" class="link-primary text-decoration-none">Forgot password?</a>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="d-grid my-3">
                                                <input class="btn btn-primary btn-lg" type="submit" value="Log in"/>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <p class="m-0 text-secondary text-center">Don't have an account? <a href="register" class="link-primary text-decoration-none">Sign up</a></p>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <c:if test="${requestScope.ErrorLogin != null}">
                <p style="color: red; text-align: center">${ErrorLogin}</p>
            </c:if>
        </section>
    </body>
</html>