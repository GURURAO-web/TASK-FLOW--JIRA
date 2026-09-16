<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>TaskFlow - Create Task</title>

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

    /* ================= FORM CARD ================= */

    .task-card {
        max-width: 550px;

        border: none;
        border-radius: 20px;

        background: #ffffff;

        box-shadow:
            0 20px 50px rgba(0, 0, 0, 0.12);
    }

    /* ================= BRAND ICON ================= */

    .brand-icon {
        width: 60px;
        height: 60px;

        border-radius: 15px;

        background: #f97316;
        color: #ffffff;

        display: flex;
        align-items: center;
        justify-content: center;

        font-size: 26px;
        font-weight: bold;

        margin: 0 auto 15px;

        box-shadow:
            0 8px 18px rgba(249, 115, 22, 0.25);
    }

    /* ================= TITLE ================= */

    .title {
        color: #1f2937;
    }

    .subtitle {
        color: #6b7280;
    }

    /* ================= FORM ================= */

    .form-label {
        color: #374151;
    }

    .form-control {
        border-radius: 10px;

        padding: 12px 14px;

        border: 1px solid #d6d3d1;
    }

    .form-control:focus {
        border-color: #f97316;

        box-shadow:
            0 0 0 0.2rem rgba(249, 115, 22, 0.15);
    }

    textarea.form-control {
        min-height: 110px;
        resize: vertical;
    }

    /* ================= BUTTONS ================= */

    .create-btn {
        background: #f97316;

        border: none;
        border-radius: 10px;

        padding: 12px;

        font-weight: 600;
        color: #ffffff;

        transition: 0.2s;
    }

    .create-btn:hover {
        background: #ea580c;

        color: #ffffff;

        transform: translateY(-1px);

        box-shadow:
            0 8px 20px rgba(249, 115, 22, 0.30);
    }

    .back-btn {
        display: block;

        padding: 11px;

        text-align: center;

        text-decoration: none;

        border: 1px solid #d6d3d1;

        border-radius: 10px;

        color: #4b5563;

        font-weight: 600;

        transition: 0.2s;
    }

    .back-btn:hover {
        background: #f5f5f4;

        color: #1f2937;

        border-color: #a8a29e;
    }

</style>

</head>

<body>

<!-- ================= MAIN ================= -->

<div class="container-fluid min-vh-100 d-flex align-items-center justify-content-center py-4">

<!-- ================= CARD ================= -->

<div class="card task-card w-100">


    <div class="card-body p-4 p-md-5">


        <!-- ================= HEADER ================= -->

        <div class="text-center mb-4">


            <div class="brand-icon">
                TF
            </div>


            <h2 class="fw-bold title mb-1">
                Create New Task
            </h2>


            <p class="subtitle mb-0">
                Add a new task to your task tracking board
            </p>


        </div>



        <!-- ================= FORM ================= -->

        <form action="createTask" method="post">


            <!-- Task Name -->

            <div class="mb-3">

                <label class="form-label fw-semibold">
                    Task Name
                </label>

                <input
                    type="text"
                    name="taskName"
                    class="form-control"
                    placeholder="Enter task name"
                    required>

            </div>



            <!-- Task Description -->

            <div class="mb-3">

                <label class="form-label fw-semibold">
                    Task Description
                </label>

                <textarea
                    name="taskDescription"
                    class="form-control"
                    placeholder="Describe the task..."
                    required></textarea>

            </div>



            <!-- Story Points -->

            <div class="mb-3">

                <label class="form-label fw-semibold">
                    Story Points
                </label>

                <input
                    type="number"
                    name="storyPoints"
                    class="form-control"
                    placeholder="Enter story points"
                    min="0"
                    required>

            </div>



            <!-- Assigned To -->

            <div class="mb-4">

                <label class="form-label fw-semibold">
                    Assigned To
                </label>

                <input
                    type="text"
                    name="assignedTo"
                    class="form-control"
                    placeholder="Enter developer name"
                    required>

            </div>



            <!-- ================= BUTTONS ================= -->

            <div class="d-flex gap-2">


                <!-- Back -->

                <a href="task.jsp"
                   class="back-btn flex-fill">

                    Back

                </a>


                <!-- Create -->

                <button
                    type="submit"
                    class="btn create-btn flex-fill">

                    Create Task

                </button>


            </div>


        </form>


    </div>

</div>


</div>

<!-- Bootstrap JS -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>

</html>
