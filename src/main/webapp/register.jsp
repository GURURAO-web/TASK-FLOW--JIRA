
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Register User</title>

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

    .register-card {
        max-width: 450px;
        border: none;
        border-radius: 20px;
        background: #ffffff;

        box-shadow:
            0 20px 50px rgba(0, 0, 0, 0.12);
    }

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

    .title {
        color: #1f2937;
    }

    .subtitle {
        color: #6b7280;
    }

    .form-control,
    .form-select {
        border-radius: 10px;
        padding: 12px 14px;

        border: 1px solid #d6d3d1;
    }

    .form-control:focus,
    .form-select:focus {
        border-color: #f97316;

        box-shadow:
            0 0 0 0.2rem rgba(249, 115, 22, 0.15);
    }

    .register-btn {
        background: #f97316;

        border: none;
        border-radius: 10px;

        padding: 12px;

        font-weight: 600;
        color: #ffffff;

        transition: 0.2s;
    }

    .register-btn:hover {
        background: #ea580c;

        transform: translateY(-1px);

        box-shadow:
            0 8px 20px rgba(249, 115, 22, 0.30);
    }

    .login-link {
        color: #f97316;
    }

    .login-link:hover {
        color: #ea580c;
    }

</style>

</head>

<body>

<div class="container-fluid min-vh-100 d-flex align-items-center justify-content-center py-4">

    <div class="card register-card w-100">

        <div class="card-body p-4 p-md-5">

            <!-- Header -->
            <div class="text-center mb-4">

                <div class="brand-icon">
                    TF
                </div>

                <h2 class="fw-bold title mb-1">
                    Register User
                </h2>

                <p class="subtitle mb-0">
                    Create your account to get started
                </p>

            </div>


            <!-- Registration Form -->
            <form action="register" method="post">

                <!-- Name -->
                <div class="mb-3">

                    <label class="form-label fw-semibold">
                        Name
                    </label>

                    <input type="text"
                           name="name"
                           class="form-control"
                           placeholder="Enter your name"
                           required>

                </div>


                <!-- Email -->
                <div class="mb-3">

                    <label class="form-label fw-semibold">
                        Email
                    </label>

                    <input type="email"
                           name="email"
                           class="form-control"
                           placeholder="Enter your email"
                           required>

                </div>


                <!-- Password -->
                <div class="mb-3">

                    <label class="form-label fw-semibold">
                        Password
                    </label>

                    <input type="password"
                           name="password"
                           class="form-control"
                           placeholder="Enter your password"
                           required>

                </div>


                <!-- Role -->
                <div class="mb-4">

                    <label class="form-label fw-semibold">
                        Role
                    </label>

                    <select name="role"
                            class="form-select"
                            required>

                        <option value="">
                            -- Select Role --
                        </option>

                        <option value="Dev">
                            Developer
                        </option>

                        <option value="QA">
                            QA
                        </option>

                        <option value="Scrum Master">
                            Scrum Master
                        </option>

                    </select>

                </div>


                <!-- Register Button -->
                <button type="submit"
                        class="btn register-btn w-100">

                    Register

                </button>

            </form>


            <!-- Login -->
            <div class="text-center mt-4">

                <span class="text-secondary">
                    Already have an account?
                </span>

                <a href="login.jsp"
                   class="text-decoration-none fw-semibold login-link">

                    Login

                </a>

            </div>

        </div>

    </div>

</div>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>

</html>
