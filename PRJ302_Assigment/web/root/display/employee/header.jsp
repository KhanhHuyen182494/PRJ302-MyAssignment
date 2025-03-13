<%-- 
    Document   : header
    Created on : Mar 1, 2025, 12:11:23 AM
    Author     : admin
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
        <a class="navbar-brand" href="createRequest">Leave System - Hello ${sessionScope.user.name}</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <c:if test="${sessionScope.user.roleId == 2}">
                    <li class="nav-item"><a class="nav-link" href="processRequest">Process request</a></li>
                    </c:if>
                <li class="nav-item"><a class="nav-link" href="historyRequest">History request</a></li>
                <li class="nav-item"><a class="nav-link" href="profile">Profile</a></li>
                <li class="nav-item"><a class="nav-link" href="changePassword">Change Password</a></li>
                <li class="nav-item"><a class="nav-link text-danger" href="logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>

