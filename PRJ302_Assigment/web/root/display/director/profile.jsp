<%-- 
    Document   : profile
    Created on : Mar 17, 2025, 5:15:48 PM
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
    <h1>Edit Profile</h1>
    
    <form action="profileDirector" method="POST">
        <div>
            <label for="Name">Name:</label>
            <input type="text" name="Name" value="${userI.name}" required>
        </div>
        <div>
            <label for="Phone">Phone:</label>
            <input type="text" name="Phone" value="${userI.phone}" required>
        </div>
        <div>
            <label for="Adress">Address:</label>
            <input type="text" name="Adress" value="${userI.address}" required>
        </div>
        <div>
            <label for="Email">Email:</label>
            <input type="email" name="Email" value="${userI.email}" required>
        </div>
        <div>
            <label for="divisionId">Division:</label>
            <select name="divisionId">
                <c:forEach var="division" items="${listDivision}">
                    <option value="${division.divisionId}" 
                            <c:if test="${division.divisionId == userI.divisionId}">selected</c:if>>
                        ${division.divisionName}
                    </option>
                </c:forEach>
            </select>
        </div>
        <button type="submit">Save Changes</button>
    </form>

    <a href="home">Back to Home</a>
</body>
</html>
