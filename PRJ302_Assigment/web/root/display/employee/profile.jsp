<%-- 
    Document   : profile
    Created on : Mar 1, 2025, 12:11:44 AM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

                <section id="profile" class="mt-4">
                    <h2>Personal Information</h2>
                    <form action="profile" method="post">

                        <label>UserID</label>
                        <input type="number" name="UserID" value="${userI.idUser}" readonly=""/><br/><br/>
                    <label>UserName</label>
                    <input type="text" name="UserName" value="${userI.userName}" required=""/><br/><br/>
                    <label>Name</label>
                    <input type="text" name="Name" value="${userI.name}"/><br/><br/>
                    <label>Phone</label>
                    <input type="tel" name="Phone" value="${userI.phone}"/><br/><br/>
                    <label>Address</label>
                    <input type="text" name="Adress" value="${userI.address}"/><br/><br/>
                    <label>Email</label>
                    <input type="email" name="Email" value="${userI.email}"/><br/><br/>

                    <c:if test="${sessionScope.user.roleId == 1}">
                        <select name="divisionId">
                            <c:forEach items="${listDivision}" var="item">
                                <option value="${item.divisionId}" ${userI.divisionId == item.divisionId?"selected":""}>${item.divisionName}</option>                         
                            </c:forEach>
                        </select><br/><br/>
                    </c:if>


                    <!--                    <label>Division Name</label>
                                        <input type="text" name="DivisionName" value="${userI.divisionName}"/>-->
                    <label>Name Managerment</label>
                    <input type="text" name="NameManagerment" value="${userI.managerName}" readonly/><br/><br/>
                    <input type="submit" value="Update profile"/>
                </form>

            </section>


        </div>

        <script src="https://unpkg.com/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>

</html>
