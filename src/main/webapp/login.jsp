
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Login User</title>

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

    .login-card {
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

    .login-btn {
        background: #f97316;

        border: none;
        border-radius: 10px;

        padding: 12px;

        font-weight: 600;
        color: #ffffff;

        transition: 0.2s;
    }

    .login-btn:hover {
        background: #ea580c;

        transform: translateY(-1px);

        box-shadow:
            0 8px 20px rgba(249, 115, 22, 0.30);
    }

    .register-btn {
        display: block;

        width: 100%;

        padding: 11px;

        text-align: center;

        text-decoration: none;

        border: 1px solid #f97316;

        border-radius: 10px;

        color: #f97316;

        font-weight: 600;

        transition: 0.2s;
    }

    .register-btn:hover {
        background: #f97316;

        color: #ffffff;

        box-shadow:
            0 6px 16px rgba(249, 115, 22, 0.20);
    }

</style>

</head>


<body>

<div class="container-fluid min-vh-100 d-flex align-items-center justify-content-center py-4">

    <div class="card login-card w-100">

        <div class="card-body p-4 p-md-5">

            <!-- Header -->

            <div class="text-center mb-4">

                <div class="brand-icon">
                    TF
                </div>

                <h2 class="fw-bold title mb-1">
                    Welcome Back!
                </h2>

                <p class="subtitle mb-0">
                    Login to continue to your account
                </p>

            </div>


            <!-- Login Form -->

            <form action="login" method="post">

                <!-- Email -->

                <div class="mb-3">

                    <label class="form-label fw-semibold">
                        Email
                    </label>

                    <input
                        type="email"
                        name="email"
                        class="form-control"
                        placeholder="Enter your email"
                        required>

                </div>


                <!-- Password -->

                <div class="mb-4">

                    <label class="form-label fw-semibold">
                        Password
                    </label>

                    <input
                        type="password"
                        name="password"
                        class="form-control"
                        placeholder="Enter your password"
                        required>

                </div>


                <!-- Login Button -->

                <button
                    type="submit"
                    class="btn login-btn w-100">

                    Login

                </button>

            </form>


            <!-- Register Section -->

            <div class="text-center mt-4">

                <span class="text-secondary">
                    Don't have an account?
                </span>

            </div>


            <a
                href="register.jsp"
                class="register-btn mt-2">

                Create New Account

            </a>

        </div>

    </div>

</div>


<!-- Bootstrap JS -->

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js">
</script>

</body>

</html>