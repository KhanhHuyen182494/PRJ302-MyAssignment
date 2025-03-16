<%-- 
    Document   : processRequest
    Created on : Mar 16, 2025, 8:37:36 PM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


                <section id="history" class="mt-4">

                <c:if test="${EmptyListProcess != null}">
                    <p>${EmptyListProcess}</p>
                </c:if>

            </section>
            <c:if test="${EmptyHistory == null}">
                <div class="container mt-4">
                    <section id="history" class="section-container">
                        <h2 class="text-success">Phê Duyệt Đơn</h2>
                        <table class="table table-bordered">
                            <thead class="table-dark">
                                <tr>
                                    <th>Form Id</th>
                                    <th>Details</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${listFormProcess}" var="i">
                                    <tr>
                                <input type="hidden" id="formId">
                                <td>${i.formId}</td>
                                <td>
                                    <c:if test="${i.status == 1}">
                                        <button class="btn btn-info btn-sm" data-bs-toggle="modal"
                                                data-bs-target="#detailModal"
                                                onclick="showDetail('${i.dateStart}', '${i.dateEnd}', '${i.issue}', 'Đã duyệt', '${i.formId}')">View</button>

                                    </c:if>
                                    <c:if test="${i.status == -1}">
                                        <button class="btn btn-info btn-sm" data-bs-toggle="modal"
                                                data-bs-target="#detailModal"
                                                onclick="showDetail('${i.dateStart}', '${i.dateEnd}', '${i.issue}', 'Từ chối', '${i.formId}')">View</button>

                                    </c:if>
                                    <c:if test="${i.status == 0}">
                                        <button class="btn btn-info btn-sm" data-bs-toggle="modal"
                                                data-bs-target="#detailModal"
                                                onclick="showDetail('${i.dateStart}', '${i.dateEnd}', '${i.issue}', 'đang xử lý', '${i.formId}')">View</button>
                                    </c:if>  

                                </td>
                                </tr>
                            </c:forEach>

                            </tbody>
                        </table>
                    </section>
                </div>
            </c:if> 

            <!-- Modal -->
            <div class="modal fade" id="detailModal" tabindex="-1" aria-labelledby="detailModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="detailModalLabel">Chi Tiết Đơn Nghỉ</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <p><strong>Ngày Bắt Đầu:</strong> <span id="startDate"></span></p>
                            <p><strong>Ngày Kết Thúc:</strong> <span id="endDate"></span></p>
                            <p><strong>Lý Do:</strong> <span id="reason"></span></p>
                            <p><strong>Trạng Thái:</strong> <span id="status"></span></p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Đóng</button>
                            <button type="button" class="btn btn-danger" id="rejectBtn" style="display: none;" onclick="handleReject()">Reject</button>
                            <button type="button" class="btn btn-success" id="acceptBtn" style="display: none;" onclick="handleAccept()">Accept</button>
                        </div>
                    </div>
                </div>
            </div>


        </div>
        <script>
            function showDetail(start, end, reason, status, formId) {
                document.getElementById("startDate").innerText = start;
                document.getElementById("endDate").innerText = end;
                document.getElementById("reason").innerText = reason;
                document.getElementById("formId").value = formId;
                let statusElement = document.getElementById("status");
                let rejectBtn = document.getElementById("rejectBtn");
                let acceptBtn = document.getElementById("acceptBtn");

                statusElement.innerText = status;

                if (status == "Từ chối") {
                    statusElement.style.color = "red";
                    rejectBtn.style.display = "none";
                    acceptBtn.style.display = "none";
                } else if (status == "đang xử lý") {
                    statusElement.style.color = "#fbd301";
                    rejectBtn.style.display = "inline-block";
                    acceptBtn.style.display = "inline-block";
                } else {
                    statusElement.style.color = "green";
                    rejectBtn.style.display = "none";
                    acceptBtn.style.display = "none";
                }

            }

            function handleReject() {

                let formId = document.getElementById("formId").value; // Lấy formId từ modal
                console.log(formId);
                

                $.ajax({
                    url: '/PRJ302_Assigment/processRequest',
                    type: 'POST',
                    data: {//truyen id va status
                        formId: formId,
                        status: -1
                    },

                    success: function (response) {
                        //do something
                        location.reload();
                    }

                });
            }

            function handleAccept() {
                let formId = document.getElementById("formId").value; // Lấy formId từ modal

                $.ajax({
                    url: '/PRJ302_Assigment/processRequest',
                    type: 'POST',
                    data: {//truyen id va status
                        formId: formId,
                        status: 1
                    },

                    success: function (response) {
                        //do something
                        location.reload();
                    }

                });
            }

        </script>
        <script src="https://unpkg.com/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.2/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>

</html>
