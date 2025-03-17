<%-- 
    Document   : header
    Created on : Mar 17, 2025, 5:12:53 PM
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
                <!-- Hide Leave Request and History Request for the Director (roleId == 3) -->
                <c:if test="${sessionScope.user.roleId != 3}">
                    <li class="nav-item"><a class="nav-link" href="createRequest">Leave Request</a></li>
                    <li class="nav-item"><a class="nav-link" href="historyRequest">History Request</a></li>
                </c:if>
                
                <!-- Show Process Request for Management (roleId == 2) -->
                <c:if test="${sessionScope.user.roleId == 2}">
                    <li class="nav-item"><a class="nav-link" href="processRequest">Process Request</a></li>
                </c:if>

                <!-- Links accessible for all roles (Profile, Change Password, Logout) -->
                <li class="nav-item"><a class="nav-link" href="profile">Profile</a></li>
                <li class="nav-item"><a class="nav-link" href="changePassword">Change Password</a></li>
                <li class="nav-item"><a class="nav-link text-danger" href="logout">Logout</a></li>
            </ul>
        </div>
    </div>
</nav>


