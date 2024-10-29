<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div
    class="tab-pane fade"
    id="home"
    role="tabpanel"
    aria-labelledby="home-tab"
    >
    <div class="row">
        <div class="col-md-6">
            <label>Email:</label>
        </div>
        <div class="col-md-6">
            <p>${sessionScope.accountCur.accountEmail}</p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <label> Name:</label>
        </div>
        <div class="col-md-6">
            <p>${sessionScope.accountDetail.accountDetailName}</p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <label
                ><i class="fa-solid fa-calendar-days icon"></i> Date Of Creation</label>
        </div>
        <div class="col-md-6">
            <p><fmt:formatDate value="${sessionScope.accountDetail.accountDetailDoc}" pattern="dd/MM/yyyy" /><p>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <label><i class="fa-solid fa-lock icon"></i> PassWord</label>
        </div>
        <div class="col-md-6">
            <p>
                <a
                    data-toggle="modal"
                    data-target="#changePasswordModal"
                    href="javascript:void(0)"
                    >Change</a
                >
            </p>
        </div>
    </div>
</div>