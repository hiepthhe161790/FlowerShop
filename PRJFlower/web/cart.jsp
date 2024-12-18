<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>MultiShop - Online Shop Website Template</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap" rel="stylesheet">  

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

        <!-- Customized Bootstrap Stylesheet -->
        <link href="assets/css/style.css" rel="stylesheet">
    </head>

    <body>
        <!-- Topbar Start -->
        <%@include file="component/header-shop.jsp" %>
        <!-- Topbar End -->


        <!-- Navbar Start -->
        <%@include file="component/category-shop.jsp" %>
        <!-- Navbar End -->


        <!-- Breadcrumb Start -->
        <div class="container-fluid">
            <div class="row px-xl-5">
                <div class="col-12">
                    <nav class="breadcrumb bg-light mb-30">
                        <a class="breadcrumb-item text-dark" href="#">Home</a>
                        <a class="breadcrumb-item text-dark" href="#">Shop</a>
                        <span class="breadcrumb-item active">Shopping Cart</span>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Breadcrumb End -->


        <!-- Cart Start -->
        <div class="container-fluid">
            <div class="row px-xl-5">
                <div class="col-lg-8 table-responsive mb-5">
                    <form action="cart" method="post">
                        <table class="table table-light table-borderless table-hover text-center mb-0">
                            <thead class="thead-dark">
                                <tr>
                                    <th>Products</th>
                                    <th>Unit Price</th>
                                    <th>Quantity</th>
                                    <th>Color</th>
                                    <th>Remove</th>
                                </tr>
                            </thead>
                            <tbody class="align-middle">
                                <c:forEach items="${sessionScope.lstCart}" var="c">
                                    <tr>
                                        <td class="align-middle"> <a class="d-flex" style="text-decoration: none; color: black; line-height: 1.6;" href="product-detail?productId=${c.productId}">
                                                <img src="${c.orderDetailProductImg}" alt="" style="width: 50px;"><div style="margin-left: 7px; text-align: left !important;">${c.orderDetailProductName}</div></a></td>
                                        <td class="align-middle">${c.orderDetailPriceProduct}VND</td>
                                        <td class="align-middle">
                                            <div class="input-group quantity mx-auto" style="width: 50px;">
                                                <input type="number" name="orderDetailQuantity" class="form-control form-control-sm bg-secondary border-0" value="${c.orderDetailQuantity}">
                                            </div>
                                        </td>
                                        <td class="align-middle">${c.orderDetailColorValue}</td>
                                        <td class="align-middle">
                                            <a href="deleteCart?productId=${c.productId}&orderDetailColorValue=${c.orderDetailColorValue}"><button type="button" class="btn btn-sm btn-danger"> <i class="fa fa-times"></i></button></a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <c:if test="${sessionScope.lstCart.size() != 0}">
                            <button class="btn btn-block btn-primary font-weight-bold my-3 py-3">Update</button>
                        </c:if>
                        <c:if test="${sessionScope.lstCart.size() == 0}">
                            <h3>ủa, đã mua gì đâu má</h3>
                        </c:if>
                    </form>
                </div>
                <div class="col-lg-4">
                    <h5 class="section-title position-relative text-uppercase mb-3"><span class="bg-secondary pr-3">Cart Summary</span></h5>
                    <div class="bg-light p-30 mb-5">
                        <div class="pt-2">
                            <div class="d-flex justify-content-between mt-2">
                                <h5>Total</h5>
                                <h5 id="total-money">${requestScope.totalPrice} VND</h5>
                            </div>
                            <c:if test="${sessionScope.lstCart.size() != 0}">
                                <a href="checkout"><button class="btn btn-block btn-primary font-weight-bold my-3 py-3">Proceed To Checkout</button></a>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Cart End -->


        <!-- Footer Start -->

        <%@include file="component/footer-shop.jsp" %>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Contact Javascript File -->
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>
        <!-- Template Javascript -->
        <script src="assets/js/main.js"></script>
    </body>
</html>