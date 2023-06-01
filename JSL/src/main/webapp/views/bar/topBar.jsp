<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<nav
	class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

	<!-- Sidebar Toggle (Topbar) -->
	<button id="sidebarToggleTop"
		class="btn btn-link d-md-none rounded-circle mr-3">
		<i class="fa fa-bars"></i>
	</button>
	<ul class="navbar-nav ml-auto">

		<li class="nav-item dropdown no-arrow d-sm-none"><a
			class="nav-link dropdown-toggle" href="#" id="searchDropdown"
			role="button" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
		</a> Dropdown - Messages
			<div
				class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
				aria-labelledby="searchDropdown">
				<form class="form-inline mr-auto w-100 navbar-search">
					<div class="input-group">
						<input type="text" class="form-control bg-light border-0 small"
							placeholder="Search for..." aria-label="Search"
							aria-describedby="basic-addon2">
						<div class="input-group-append">
							<button class="btn btn-primary" type="button">
								<i class="fas fa-search fa-sm"></i>
							</button>
						</div>
					</div>
				</form>
			</div></li>

		<li class="nav-item dropdown no-arrow mx-1"><a
			class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
			role="button" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false"> <i class="fas fa-envelope fa-fw"></i> <!-- Counter - Messages 미확인한 알람이 1 이상이면 보여주고 0이면 안보여주고 -->
				<span class="badge badge-danger badge-counter">3</span>
		</a>
			<div
				class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
				aria-labelledby="messagesDropdown">
				<h6 class="dropdown-header">JSL Alarm</h6>
				<a class="dropdown-item d-flex align-items-center" href="#">
					<div class="dropdown-list-image mr-3">
						<!-- 대표 이미지 들어감 -->
						<img class="rounded-circle" src="img/undraw_profile_1.svg"
							alt="...">
						<div class="status-indicator bg-success"></div>
					</div>
					<div class="font-weight-bold">
						<div class="text-truncate">Harry Kane 선수의 Arsenal로의 이적 승인 신청</div>
						<div class="small text-gray-500">Arsenal</div>
					</div>
				</a> <a class="dropdown-item d-flex align-items-center" href="#">
					<div class="dropdown-list-image mr-3">
						<img class="rounded-circle" src="img/undraw_profile_2.svg"
							alt="...">
						<div class="status-indicator"></div>
					</div>
					<div>
						<div class="text-truncate">Arsenal의 자본 추가 투입 신청</div>
						<div class="small text-gray-500">Arsenal</div>
					</div>
				</a> <a class="dropdown-item d-flex align-items-center" href="#">
					<div class="dropdown-list-image mr-3">
						<img class="rounded-circle" src="img/undraw_profile_3.svg"
							alt="...">
						<div class="status-indicator bg-warning"></div>
					</div>
					<div>
						<div class="text-truncate">Luka Modric 선수의 Real Madrid 3년 계약
							연장 신청</div>
						<div class="small text-gray-500">Real Madrid</div>
					</div>
				</a>

			</div></li>

		<div class="topbar-divider d-none d-sm-block"></div>

		<li class="nav-item dropdown no-arrow"><a
			class="nav-link dropdown-toggle" href="#" id="userDropdown"
			role="button" data-toggle="dropdown" aria-haspopup="true"
			aria-expanded="false"> <c:if
					test="${sessionScope.loginType == 'admin'}">
					<span class="mr-2 d-none d-lg-inline text-gray-600 small">
						${sessionScope.adminInfo.adminName }</span>
					<img class="img-profile rounded-circle"
						src="img/undraw_profile.svg">
				</c:if> <c:if test="${sessionScope.loginType == 'team'}">
					<span class="mr-2 d-none d-lg-inline text-gray-600 small">
						${sessionScope.teamInfo.teamName }</span>
					<img class="img-profile rounded-circle"
						src="img/undraw_profile.svg">
					
				</c:if>
		</a>
			<div
				class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
				aria-labelledby="userDropdown">
				<a class="dropdown-item" href="#"> <i
					class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
				</a> <a class="dropdown-item" href="#"> <i
					class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> Settings
				</a>

				<div class="dropdown-divider"></div>
				<a class="dropdown-item" href="#" data-toggle="modal"
					data-target="#logoutModal"> <i
					class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
					Logout
				</a>
			</div></li>

	</ul>

</nav>

<script>
console.log("${sessionScope.adminInfo}");
	/* var id = "${sessionScope.id}";
	 var isGet = false;
	 var isAdmin = false;

	 function getUser(){
	 $.ajax({
	 type : 'get',
	 url : 'info.ajax',
	 data : {'id' : id},
	 dataType : 'json',
	 success : function(data){
	 isGet=true;
	
	 },
	 error : function(e){
	 console.log(e);
	 }
	 })
	 } */
</script>
