<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LOGIN</title>
    <link rel="stylesheet" type="text/css" href="assets/style.css">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #e9ecef;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .menuutama {
            background: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 90%;
            max-width: 400px;
        }

        .tulisan_menu {
            font-size: 26px;
            margin-bottom: 20px;
            color: #007bff;
            font-weight: bold;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
            color: #333;
        }

        .form_isian {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 15px;
            font-size: 16px;
        }

        .tombol_submit {
            background-color: #007bff;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s;
            width: 100%;
        }

        .tombol_submit:hover {
            background-color: #0056b3;
        }

        .link {
            display: inline-block;
            margin-top: 15px;
            color: #007bff;
            text-decoration: none;
            transition: color 0.3s;
        }

        .link:hover {
            color: #0056b3;
        }

        .alert {
            background-color: #ffcccc;
            color: #d8000c;
            padding: 10px;
            margin-bottom: 15px;
            border-radius: 5px;
            display: none; /* Hidden by default */
        }

        @media (max-width: 600px) {
            .tulisan_menu {
                font-size: 22px;
            }

            .form_isian {
                font-size: 14px;
            }

            .tombol_submit {
                font-size: 14px;
            }
        }
    </style>
</head>

<?php
if (isset($_GET['pesan'])) {
    if ($_GET['pesan'] == "gagal") {
        echo "<script>document.addEventListener('DOMContentLoaded', function() {
            var alertDiv = document.createElement('div');
            alertDiv.className = 'alert';
            alertDiv.innerHTML = 'NIM dan Password tidak sesuai!';
            document.body.prepend(alertDiv);
            alertDiv.style.display = 'block';
        });</script>";
    }
}
?>

<body>
    <div class="menuutama">
        <p class="tulisan_menu">LOGIN</p>

        <form action="ceklogin.php" method="POST" name="menu">
            <label for="username">USERNAME</label>
            <input type="text" name="username" id="username" class="form_isian" required>

            <label for="password">PASSWORD</label>
            <input type="password" name="password" id="password" class="form_isian" required>

            <label for="role">ROLE</label>
            <select id="role" name="role" class="form_isian" required>
                <option value="" disabled selected>Pilih Role</option>
                <option value="admin">Admin</option>
                <option value="mahasiswa">Mahasiswa</option>
                <option value="staf">Staf</option>
            </select>

            <input type="submit" class="tombol_submit" value="SUBMIT">

            <a class="link" href="index.php">Kembali</a>
        </form>
    </div>
</body>

</html>