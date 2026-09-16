<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.model.Tasks" %>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>TaskFlow - My Tasks</title>

<!-- Bootstrap 5 -->

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>

    body {
        min-height: 100vh;

        background:
            radial-gradient(circle at top left,
                #ffedd5 0%,
                transparent 35%),

            radial-gradient(circle at bottom right,
                #fed7aa 0%,
                transparent 35%),

            #f8f5f0;
    }

    /* ================= HEADER ================= */

    .navbar-custom {
        background: #ffffff;

        box-shadow:
            0 3px 15px rgba(0, 0, 0, 0.10);
    }

    .brand-icon {
        width: 45px;
        height: 45px;

        border-radius: 12px;

        background: #f97316;
        color: #ffffff;

        display: flex;
        align-items: center;
        justify-content: center;

        font-size: 20px;
        font-weight: bold;

        box-shadow:
            0 6px 15px rgba(249, 115, 22, 0.22);
    }

    .brand-name {
        color: #1f2937;
        font-size: 22px;
        font-weight: 700;
    }

    .logout-btn {
        border: 1px solid #f97316;
        border-radius: 10px;

        color: #f97316;

        font-weight: 600;

        padding: 9px 20px;

        transition: 0.2s;
    }

    .logout-btn:hover {
        background: #f97316;
        color: #ffffff;

        box-shadow:
            0 6px 16px rgba(249, 115, 22, 0.20);
    }

    /* ================= MAIN ================= */

    .main-container {
        max-width: 1200px;
    }

    .page-title {
        color: #1f2937;
    }

    .page-subtitle {
        color: #6b7280;
    }

    /* ================= CREATE BUTTON ================= */

    .create-btn {
        background: #f97316;

        border: none;
        border-radius: 10px;

        padding: 11px 20px;

        color: #ffffff;

        font-weight: 600;
        text-decoration: none;

        display: inline-flex;
        align-items: center;
        gap: 7px;

        transition: 0.2s;
    }

    .create-btn:hover {
        background: #ea580c;

        color: #ffffff;

        transform: translateY(-1px);

        box-shadow:
            0 8px 20px rgba(249, 115, 22, 0.30);
    }

    .plus {
        font-size: 20px;
        line-height: 1;
    }

    /* ================= TASK CARD ================= */

    .task-card {
        border: none;

        border-radius: 18px;

        background: #ffffff;

        box-shadow:
            0 12px 30px rgba(0, 0, 0, 0.08);

        overflow: hidden;
    }

    .task-card-header {
        background: #ffffff;

        border-bottom: 1px solid #eee;

        padding: 20px 24px;
    }

    .task-list-title {
        color: #1f2937;
        font-size: 20px;
        font-weight: 700;
    }

    /* ================= TABLE ================= */

    .table {
        margin-bottom: 0;
    }

    .table thead th {
        background: #292524;
        color: #ffffff;

        padding: 14px 12px;

        font-size: 13px;
        font-weight: 600;

        border: none;
        white-space: nowrap;
    }

    .table tbody td {
        padding: 14px 12px;

        color: #4b5563;

        font-size: 14px;

        vertical-align: middle;

        border-bottom: 1px solid #eee;
    }

    .table tbody tr:nth-child(even) {
        background: #fafaf9;
    }

    .table tbody tr:hover {
        background: #fff7ed;
    }

    /* ================= ACTION BUTTONS ================= */

    .update-btn {
        display: inline-block;

        padding: 6px 12px;

        border: 1px solid #f97316;

        border-radius: 7px;

        color: #f97316;

        text-decoration: none;

        font-size: 13px;
        font-weight: 600;

        margin-right: 5px;

        transition: 0.2s;
    }

    .update-btn:hover {
        background: #f97316;
        color: #ffffff;
    }

    .delete-btn {
        display: inline-block;

        padding: 6px 12px;

        border: 1px solid #dc2626;

        border-radius: 7px;

        color: #dc2626;

        text-decoration: none;

        font-size: 13px;
        font-weight: 600;

        transition: 0.2s;
    }

    .delete-btn:hover {
        background: #dc2626;
        color: #ffffff;
    }

    /* ================= RESPONSIVE ================= */

    @media (max-width: 768px) {

        .brand-name {
            font-size: 19px;
        }

        .main-container {
            padding-left: 15px;
            padding-right: 15px;
        }

        .page-header {
            flex-direction: column;
            align-items: flex-start !important;
            gap: 18px;
        }

        .create-btn {
            width: 100%;
            justify-content: center;
        }

        .task-card-header {
            padding: 18px;
        }

    }

</style>

</head>

<body>

<!-- ================= HEADER ================= -->

<nav class="navbar navbar-custom">


<div class="container-fluid px-4 py-3">

    <!-- LOGO -->

    <div class="d-flex align-items-center gap-3">

        <div class="brand-icon">
            TF
        </div>

        <span class="brand-name">
            TaskFlow
        </span>

    </div>


    <!-- LOGOUT -->

    <a href="logout"
       class="btn logout-btn">

        Logout

    </a>

</div>

</nav>

<!-- ================= MAIN ================= -->

<main class="container main-container py-5">

<!-- ================= TOP SECTION ================= -->

<div class="d-flex align-items-center justify-content-between page-header mb-4">


    <div>

        <h2 class="page-title fw-bold mb-1">
            My Tasks
        </h2>

        <p class="page-subtitle mb-0">
            Manage and track your team's tasks
        </p>

    </div>


    <!-- CREATE TASK -->

    <a href="taskform.jsp"
       class="create-btn">

        <span class="plus">
            +
        </span>

        Create New Task

    </a>

</div>



<!-- ================= TASK LIST ================= -->

<div class="card task-card">


    <!-- CARD HEADER -->

    <div class="task-card-header">

        <h3 class="task-list-title mb-0">
            Task List
        </h3>

    </div>



    <!-- TABLE -->

    <div class="table-responsive">

        <table class="table">


            <thead>

                <tr>

                    <th>Task ID</th>

                    <th>Task Name</th>

                    <th>Task Description</th>

                    <th>Story Points</th>

                    <th>Assigned To</th>

                    <th>Action</th>

                </tr>

            </thead>



            <tbody>

            <%

                List<Tasks> alltasks =
                    (List<Tasks>) request.getAttribute("allTasks");

                for (Tasks task : alltasks) {

            %>


                <tr>

                    <td>
                        <%= task.getTaskId() %>
                    </td>


                    <td class="fw-semibold">
                        <%= task.getTaskName() %>
                    </td>


                    <td>
                        <%= task.getTaskDescription() %>
                    </td>


                    <td>
                        <%= task.getStoryPoints() %>
                    </td>


                    <td>
                        <%= task.getAssignedTo() %>
                    </td>


                    <!-- ACTION -->

                    <td>

                        <!-- UPDATE -->

                        <a href="updateTask?id=<%= task.getTaskId() %>"
                           class="update-btn">

                            Update

                        </a>


                        <!-- DELETE -->

                        <a href="deleteTask?id=<%= task.getTaskId() %>"
                           class="delete-btn"
                           onclick="return confirm('Are you sure you want to delete this task?');">

                            Delete

                        </a>

                    </td>

                </tr>


            <%

                }

            %>

            </tbody>

        </table>

    </div>

</div>


</main>

<!-- Bootstrap JS -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>

</html>
