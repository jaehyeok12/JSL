<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="UTF-8">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>JSL - 팀 관리</title>

    <!-- Custom fonts for this template -->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">


       <jsp:include page="bar/sideBar.jsp"></jsp:include>

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->

				<jsp:include page="bar/topBar.jsp"></jsp:include>

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <h1 class="h3 mb-2 text-gray-800">팀 관리</h1>

					<!-- 리그 선택 -->
					<select id="selectLeague" class="custom-select custom-select-sm form-control form-control-sm" style="width: 15%;" onchange="changeLeagueSelect(this.value)">	
					</select>
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h6 class="m-0 font-weight-bold text-primary">JSL Team List</h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                     	<tr>
                                            <th>구단명</th>
                                            <th>소속 리그</th>
                                            <th>연고지</th>
                                            <th>창단 일자</th>
                                            <th>담당 관리자</th>
                                            <th>활성 여부</th>
                                        </tr>
                                    </thead>
                                    <tbody id="teamManageTbody">
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>


    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/datatables-demo.js"></script>

</body>
<script>
var showPage = 1;
var total = 5;
var league;

var leagueValue = 0;//리그 종류(0 - 전체선택)
leagueSelect();

function leagueSelect(){
	
	$.ajax({
		type : 'post',
		url : 'teamManage/leagueSelect.ajax',
		data : {},
		dataType : 'json',
		success : function(data){
			drawSelect(data.list);
			total = data.total;
			teamManageCall();

		},
		error : function(e){
			console.log(e)
		}
	});
}

function drawSelect(list){
	$("#selectLeague").empty();
	
	var selectContent = "<option value='0' selected>All</ooption>";
	for(var i=0;i<list.length;i++){
		selectContent += "<option value='"+list[i].leagueLV+"'>"+list[i].leagueName+"</option>"
	}

	$('#selectLeague').append(selectContent);
	
}

function teamManageCall(){
	$('#teamManageTbody').empty();
	$.ajax({
		type : 'post',
		url : 'teamManage/teamListcall.ajax',
		data : {'leagueValue':leagueValue},
		dataType : 'json',
		success : function(data){
			drawTable(data.list);
			
		},
		error : function(e){
			console.log(e)
		}
	});
}
function drawTable(list){
	var content = '';
	console.log(list);
	$('#teamManageTbody').empty();
	
	for(var i = 0; i<list.length; i++){
		content += '<tr>';
		
		
		content += '<td>'+list[i].teamName+'</td>';
		content += '<td>'+list[i].leagueName+'</td>';
		content += '<td>'+list[i].hometown+'</td>';
		content += '<td>'+list[i].createDate+'</td>';
		content += '<td>'+list[i].adminName+'</td>';
		if(list[i].act==1){
			content += '<td>활성</td>';
			
		}else{
			content += '<td>비활성</td>';
		}
		content += '</tr>';
	}
	console.log(content);
	
	$('#teamManageTbody').append(content);

}
function changeLeagueSelect(leagueNo){
	leagueValue=leagueNo;
	teamManageCall();
}

</script>
</html>