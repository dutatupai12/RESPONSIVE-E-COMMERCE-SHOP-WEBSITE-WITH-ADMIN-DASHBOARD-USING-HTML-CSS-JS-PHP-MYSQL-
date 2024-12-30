<?php 
    include '../components/connect.php';

    if (isset($_COOKIE['seller_id'])) {
        $seller_id = $_COOKIE['seller_id'];
    }else{
        $seller_id = '';
        header('location:loging.php');
    }

    $select_products = $conn->prepare("SELECT * FROM `products` WHERE seller_id = ?");
    $select_products->execute([$seller_id]);
    $total_products = $select_products->rowCount();

    $select_orders = $conn->prepare("SELECT * FROM `orders` WHERE seller_id = ?");
    $select_orders->execute([$seller_id]);
    $total_orders = $select_orders->rowCount();



?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Blue Sky Summer - seller profile Page</title>
    <link rel="stylesheet" type="text/css" href="../css/admin_style.css">
    <!-- font awesome cdn link -->
    <!-- box icon cdn link -->
    <link href='https://cdnjs.cloudflare.com/ajax/libs/boxicons/2.1.2/css/boxicons.min.css' rel='stylesheet'>

</head>
<body>

    <div class="main-container">
        <?php include '../components/admin_header.php'; ?>
        <section class="seller-profile">
            <div class="heading">
                <h1>profile details</h1>
                <img src="../image/separator-img.png">
            </div>
            <div class="details">
                <div class="seller">
                    <img src="../uploaded_files/<?= $fetch_profile['image']; ?>">
                    <h3 class="name"><?= $fetch_profile['name']; ?></h3>
                    <span>seller</span>
                    <a href="update.php" class="btn">update profile</a>
                </div>
                <div class="flex">
                    <div class="box">
                        <span><?= $total_products; ?></span>
                        <p>totl products</p>
                        <a href="view_product.php" class="btn">view products</a>
                    </div>
                    <div class="box">
                        <span><?= $total_orders; ?></span>
                        <p>totl orders placed</p>
                        <a href="admin_order.php" class="btn">view orders</a>
                    </div>
                </div>
            </div>
        </section>
    </div>







    <!-- sweetalert cdn link -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

    <!-- sweetalert cdn link -->
    <script src="../js/admin_script.js"></script>

    <?php include '../components/alert.php'; ?>

</body>
</html>