<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container-fluid">
        <div class="col-lg-6 text-center text-lg-right">
            <div class="d-inline-flex align-items-center">
                <div class="btn-group">
                    <button type="button" class="btn btn-sm btn-light dropdown-toggle" data-toggle="dropdown"><i class="fas fa-user p-2"></i>${sessionScope.accountDetail.accountDetailName}</button>
                    <div class="dropdown-menu dropdown-menu-right">
                        <c:if test="${sessionScope.accountCur == null}">
                            <a href="sign-in" class="dropdown-item" type="button">Sign in</a>
                            <a href="sign-up" class="dropdown-item" type="button">Sign up</a>
                        </c:if>
                        <c:if test="${sessionScope.accountCur != null}">
                            <a href="profile" class="dropdown-item" type="button">My profile</a>
                            <a href="log-out" class="dropdown-item" type="button">Log out</a>
                        </c:if>
                    </div>
                </div>
            </div>
            <div class="d-inline-flex align-items-center d-block d-lg-none">
                <a href="" class="btn px-0 ml-2">
                    <i class="fas fa-heart text-dark"></i>
                    <span class="badge text-dark border border-dark rounded-circle" style="padding-bottom: 2px;">0</span>
                </a>
                <a href="" class="btn px-0 ml-2">
                    <i class="fas fa-shopping-cart text-dark"></i>
                    <span class="badge text-dark border border-dark rounded-circle" style="padding-bottom: 2px;">0</span>
                </a>
            </div>
        </div>
    </div>
    <div class="row align-items-center bg-light py-3 px-xl-5 d-none d-lg-flex">
        <div class="col-lg-4">
            <a href="/PRJFlower" class="text-decoration-none">
                <span class="h1 text-uppercase text-dark bg-primary px-2 ml-n1">Flower Shop</span>
            </a>
        </div>
        <div class="col-lg-4 col-6 text-left">
            <form method="get" action="shop">
                <div class="input-group">
                    <input name="searchValue" type="text" value ="${requestScope.searchValue}" class="form-control" placeholder="Search for products">
                    <div class="input-group-append">
                        <button type="submit">
                            <span class="input-group-text bg-transparent text-primary">
                                <i  class="fa fa-search"></i>
                            </span>
                        </button>
                    </div>
                </div>
            </form>
        </div>
        <div class="col-lg-4 col-6 text-right">
            <p class="m-0">Customer Service</p>
            <h5 class="m-0">0376380724</h5>
        </div>
    </div>
</div>