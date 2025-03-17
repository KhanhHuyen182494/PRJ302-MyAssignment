<%-- 
    Document   : processRequest
    Created on : Mar 17, 2025, 5:03:48 PM
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
        <h1>Pending Requests for Approval</h1>

    <c:if test="${empty formsForDirector}">
        <p>No requests pending for approval.</p>
    </c:if>

    <c:forEach var="form" items="${formsForDirector}">
        <div>
            <p><strong>Start Date:</strong> ${form.dateStart}</p>
            <p><strong>End Date:</strong> ${form.dateEnd}</p>
            <p><strong>Issue:</strong> ${form.issue}</p>
            <p><strong>Status:</strong> ${form.status == 0 ? 'Pending' : form.status == 1 ? 'Approved' : 'Rejected'}</p>

            <form action="approveRequest" method="POST">
                <input type="hidden" name="formId" value="${form.formId}">
                <button type="submit" name="status" value="1">Approve</button>
                <button type="submit" name="status" value="2">Reject</button>
            </form>
        </div>
        <hr>
    </c:forEach>

</body>
</html>
