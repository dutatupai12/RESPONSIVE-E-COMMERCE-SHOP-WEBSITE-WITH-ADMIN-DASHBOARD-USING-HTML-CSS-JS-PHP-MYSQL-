<?php 
	include 'components/connect.php';

	if (isset($_COOKIE['user_id'])) {
		$user_id = $_COOKIE['user_id'];
	}else{
		$user_id = '';
	}

	if (isset($_POST['submit'])) {
        
        $email = $_POST['email'];
        $email = filter_var($email, FILTER_SANITIZE_STRING);

        $pass = sha1($_POST['pass']);
        $pass = filter_var($pass, FILTER_SANITIZE_STRING);

        $select_user = $conn->prepare("SELECT * FROM `users` WHERE email = ? AND password = ?");
        $select_user->execute([$email, $pass]);
        $row = $select_user->fetch(PDO::FETCH_ASSOC);

        if ($select_user->rowCount() > 0) {
            setcookie('user_id', $row['id'], time() + 60*60*24*30, '/');
            header('location:home.php');
        }else{
            $warning_msg[] = 'incorrect email or password';
        }
    }


?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Blue Sky Summer - user login page</title>

	<link rel="stylesheet" type="text/css" href="css/user_style.css">
    <!-- font awesome cdn link -->
    <!-- box icon cdn link -->
    <link href='https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.2/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
	<?php include 'components/user_header.php'; ?>
	<div class="banner">
		<div class="detail">
			<h1>login</h1>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br> tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</p>
			<span> <a href="home.php">home</a><i class="bx bx-right-arrow-alt"></i>login</span>
		</div>
	</div>
	<div class="form-container">
        <form action="" method="post" enctype="multipart/form-data" class="login">
            <h3>login now</h3>

            <div class="input-field">
                <p>your email <span>*</span></p>
                <input type="email" name="email" placeholder="enter your email" maxlength="50" required class="box"> 
            </div>

            <div class="input-field">
                <p>your password <span>*</span></p>
                <input type="password" name="pass" placeholder="enter your password" maxlength="50" required class="box"> 
            </div>
            
            <p class="link">do not have an account? <a href="register.php">register now</a> </p>
            <input type="submit" name="submit" value="login now" class="btn">
        </form>
    </div>
    
	<?php include 'components/footer.php'; ?>
    <!-- sweetalert cdn link -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

    <!-- sweetalert cdn link -->
    <script src="js/user_script.js"></script>

    <?php include 'components/alert.php'; ?>
</body>
</html>