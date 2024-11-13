<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Thank You for Shopping</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="assets/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">  

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="assets/lib/animate/animate.min.css" rel="stylesheet">
    <link href="assets/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="assets/css/style.css" rel="stylesheet">
</head>
<body style="font-family: 'Roboto', sans-serif; background-color: #f8f9fa; margin: 0; padding: 0;">
    <%@include file="component/header-shop.jsp" %>
    
    <h1 style="color: #28a745; font-size: 2.5rem; font-weight: 700; text-align: center; margin-top: 50px; animation: fadeInDown 1s;">
        Thank You for Shopping with Us!
    </h1>
    <p style="text-align: center; font-size: 1.2rem; color: #6c757d; margin-top: 20px; animation: fadeInUp 1s;">
        Your order has been placed successfully.
    </p>
    <a href="shop" style="display: block; width: 200px; margin: 30px auto; text-align: center; background-color: #28a745; color: #fff; padding: 10px 0; border-radius: 5px; font-weight: 500; text-decoration: none; transition: background 0.3s;">
        Continue Shopping
    </a>
    
    <%@include file="component/footer-shop.jsp" %>
</body>
</html>
