<%-- 
    Document   : agenda.jsp
    Created on : Mar 17, 2025, 10:27:16 PM
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
         <div>
            <style>
                .agenda-table th, .agenda-table td {
                    text-align: center;
                    padding: 8px;
                    width: 80px;
                }
                .agenda-table th {
                    background-color: #4a4a4a;
                    color: white;
                }
                .agenda-table .bg-success {
                    background-color: #28a745 !important;
                }
                .agenda-table .bg-danger {
                    background-color: #dc3545 !important;
                }
            </style>

            <section id="agenda" class="section-container">
                <h2 class="text-primary">Human Resources</h2>
                <table class="table table-bordered agenda-table">
                    <thead>
                        <tr>
                            <th>Nhân sự</th>
                            <th>1/1</th>
                            <th>2/1</th>
                            <th>3/1</th>
                            <th>4/1</th>
                            <th>5/1</th>
                            <th>6/1</th>
                            <th>7/1</th>
                            <th>8/1</th>
                            <th>9/1</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Mr A</td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-danger"></td>
                            <td class="bg-success"></td>
                            <td class="bg-danger"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                        </tr>
                        <tr>
                            <td>Mr B</td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-danger"></td>
                            <td class="bg-success"></td>
                            <td class="bg-danger"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                        </tr>
                        <tr>
                            <td>Mr C</td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-danger"></td>
                            <td class="bg-danger"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                        </tr>
                        <tr>
                            <td>Mr D</td>
                            <td class="bg-success"></td>
                            <td class="bg-danger"></td>
                            <td class="bg-danger"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                            <td class="bg-success"></td>
                        </tr>
                    </tbody>
                </table>
            </section>
        </div>

        <script>
            function showDetail(start, end, reason, status) {
                document.getElementById("startDate").innerText = start;
                document.getElementById("endDate").innerText = end;
                document.getElementById("reason").innerText = reason;
                document.getElementById("status").innerText = status;
            }
        </script>
    </body>
</html>
