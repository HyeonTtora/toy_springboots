<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>World of L4 - Jeju</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
</head>

    <!-- HEADER : NAV-->
      <header
        class="container-fluid bg-dark d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 fixed-top">
        <a href="/home" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-white text-decoration-none fs-4">
            <img src="https://github.com/HyeonTtora/hotelsurvey/blob/master/src/main/resources/META-INF/resources/img/logo.png?raw=true" alt="" style="height: 30px;">
            <span class="ms-2">World of L4 Hotel Jeju System</span>
        </a>
        <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
            <li><a href="/home" class="nav-link px-2 link-secondary">Home</a></li>
            <li><a href="/surveyUsers/list"  class="nav-link px-2 link-light">User List</a></li>
        </ul>
        <div class="col-md-3 text-end">
        </div>
    </header>

<body class="pt-5">
<%-- list --%>
    <hr>
<div class="container">

<table class="table table-striped table-hover table-bordered mt-5">
	<thead>
		<tr class="text-center table-dark ">
			
			<th>USER_ID</th>
			<th>EMAIL</th>
			<th>PASSWORD</th>
			<th>FRIST_NAME</th>
			<th>LAST_NAME</th>
			<th>TITLE_OF_HONOR</th>
			<th>BIRTHDAY</th>
			<th>COUNTRY</th>
			<th>STATE</th>
			<th>CITY</th>
			<th>ADDRESS</th>
			<th>Delete</th>
					</tr>
	</thead>
	<tbody>
		<c:forEach items="${resultMap}" var="resultData" varStatus="loop">
			<tr>
                <%-- edit --%>
					<form action = "/surveyUsers/edit/${resultData.USER_ID}" method = "get">
				<td><button class="btn btn-link viewPopup" 
						>${resultData.USER_ID}</button>
					</form>

				</td>
				<td>${resultData.EMAIL}</td>
				<td>${resultData.PASSWORD}</td>
				<td>${resultData.FRIST_NAME}</td>
				<td>${resultData.LAST_NAME}</td>
				<td>${resultData.TITLE_OF_HONOR}</td>
				<td>${resultData.BIRTHDAY}</td>
				<td>${resultData.COUNTRY}</td>
				<td>${resultData.STATE}</td>
				<td>${resultData.CITY}</td>
				<td>${resultData.ADDRESS}</td>
				
                <%-- delete --%>
							<form action = "/surveyUsers/delete/${resultData.USER_ID}" method = "post">
				<td><button class="btn btn-outline-dark" 
						>${resultData.USER_ID} Delete </button>
					</form>
			</tr>
		</c:forEach>


	</tbody>
</table>
		<hr>
		<div class="d-flex justify-content-center">
		<form action = "/surveyUsers/form" method = "get">
		<button class="btn btn-dark">Add User</button>
		</form>
		</div>
</div>
</body>
          <!-- Footer-->
    <%@ include file = "footer.jsp" %>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>