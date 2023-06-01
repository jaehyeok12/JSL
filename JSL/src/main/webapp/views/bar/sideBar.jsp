<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <!-- <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div> -->
                <div class="sidebar-brand-text mx-3">JSL League<sup>소속 리그</sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="index.html">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>구단 & 관계자 상세정보</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <!-- 관계자인지 구단인지 체크 후 뿌려줘야 한다. -->
            <!-- 구단이라면 소속 선수 관리(명단 확인 - 상태 변경, 기록 추가 등), 재정 관리(재정 현황, 재정 변동 신청 등)   -->
            <!-- 관계자라면 담당 구단 관리(담당 구단 리스트 별 상세보기 - 재정 현황, 최근 이벤트(계약, 성수 상태 변경 등), 리그 관리(수정 및 관리)   -->




            <!-- Nav Item - Pages Collapse Menu -->
			<c:if test="${sessionScope.loginType == 'admin'}">
            <div class="sidebar-heading">
                AdminMenu
            </div>
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>담당 구단</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="buttons.html">구단 1</a>
                        <a class="collapse-item" href="cards.html">구단 2</a>
                    </div>
                </div>
            </li>
			<li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>최근 이벤트</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="utilities-color.html">최근 계약</a>
                        <a class="collapse-item" href="utilities-border.html">선수 관리</a>
                        <a class="collapse-item" href="utilities-animation.html">구단 관리</a>
                        <a class="collapse-item" href="utilities-other.html">리그 관리</a>
                    </div>
                </div>
            </li>
				
			</c:if>
			
			<c:if test="${sessionScope.loginType == 'team'}">
			            <div class="sidebar-heading">
                TeamMenu
            </div>
            <li class="nav-item">
                <a class="nav-link collapsed" href="#">
                    <span>선수 명단</span>
                </a>
                
            </li>
			<li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>재정 관리</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="utilities-color.html">재정 현황</a>
                        <a class="collapse-item" href="utilities-border.html">재정 변동 신청</a>
                    </div>
                </div>
            </li>
			</c:if>
            <!-- Nav Item - Utilities Collapse Menu -->
            




            <!-- Divider -->
            <!-- 공통의 기능이 들어갈 곳 -->
            <!-- 각 일정, 리그 현황, 선수 명단 -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Contents
            </div>
            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="charts.html">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>일정</span></a>
            </li>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>리그 진행 현황</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">JSL Pro Level</h6>
                        <!-- 전체 리그 내역 가져오기 -->
                        <a class="collapse-item" href="login.html">1부 리그</a>
                        <a class="collapse-item" href="register.html">2부 리그</a>
                        <a class="collapse-item" href="forgot-password.html">3부 리그</a>
                        <div class="collapse-divider"></div>
                        <h6 class="collapse-header">JSL Challenger League</h6>
                        <a class="collapse-item" href="404.html">4부 리그</a>
                        <a class="collapse-item" href="blank.html">지역 리그</a>
                    </div>
                </div>
            </li>


            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="tables.html">
                    <i class="fas fa-fw fa-table"></i>
                    <span>공식 선수 명단</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

            <!-- Sidebar Message -->

        </ul>
        <!-- End of Sidebar -->
        
        
        <script>
        
        
        </script>