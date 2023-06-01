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
                <div class="sidebar-brand-text mx-3">JSL League<sup>�Ҽ� ����</sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="index.html">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>���� & ������ ������</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <!-- ���������� �������� üũ �� �ѷ���� �Ѵ�. -->
            <!-- �����̶�� �Ҽ� ���� ����(��� Ȯ�� - ���� ����, ��� �߰� ��), ���� ����(���� ��Ȳ, ���� ���� ��û ��)   -->
            <!-- �����ڶ�� ��� ���� ����(��� ���� ����Ʈ �� �󼼺��� - ���� ��Ȳ, �ֱ� �̺�Ʈ(���, ���� ���� ���� ��), ���� ����(���� �� ����)   -->




            <!-- Nav Item - Pages Collapse Menu -->
			<c:if test="${sessionScope.loginType == 'admin'}">
            <div class="sidebar-heading">
                AdminMenu
            </div>
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>��� ����</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="buttons.html">���� 1</a>
                        <a class="collapse-item" href="cards.html">���� 2</a>
                    </div>
                </div>
            </li>
			<li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>�ֱ� �̺�Ʈ</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="utilities-color.html">�ֱ� ���</a>
                        <a class="collapse-item" href="utilities-border.html">���� ����</a>
                        <a class="collapse-item" href="utilities-animation.html">���� ����</a>
                        <a class="collapse-item" href="utilities-other.html">���� ����</a>
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
                    <span>���� ���</span>
                </a>
                
            </li>
			<li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>���� ����</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="utilities-color.html">���� ��Ȳ</a>
                        <a class="collapse-item" href="utilities-border.html">���� ���� ��û</a>
                    </div>
                </div>
            </li>
			</c:if>
            <!-- Nav Item - Utilities Collapse Menu -->
            




            <!-- Divider -->
            <!-- ������ ����� �� �� -->
            <!-- �� ����, ���� ��Ȳ, ���� ��� -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Contents
            </div>
            <!-- Nav Item - Charts -->
            <li class="nav-item">
                <a class="nav-link" href="charts.html">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>����</span></a>
            </li>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
                    aria-expanded="true" aria-controls="collapsePages">
                    <i class="fas fa-fw fa-folder"></i>
                    <span>���� ���� ��Ȳ</span>
                </a>
                <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <h6 class="collapse-header">JSL Pro Level</h6>
                        <!-- ��ü ���� ���� �������� -->
                        <a class="collapse-item" href="login.html">1�� ����</a>
                        <a class="collapse-item" href="register.html">2�� ����</a>
                        <a class="collapse-item" href="forgot-password.html">3�� ����</a>
                        <div class="collapse-divider"></div>
                        <h6 class="collapse-header">JSL Challenger League</h6>
                        <a class="collapse-item" href="404.html">4�� ����</a>
                        <a class="collapse-item" href="blank.html">���� ����</a>
                    </div>
                </div>
            </li>


            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="tables.html">
                    <i class="fas fa-fw fa-table"></i>
                    <span>���� ���� ���</span></a>
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