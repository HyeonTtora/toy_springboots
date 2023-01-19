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
<hr><hr><hr>


<%-- edit & update --%>
<div class="container mt-5">

     <c:set var="form_action" value="update" />
 	 <c:if test="${empty resultMap}">
         <c:set var="form_action" value="insert" />
     </c:if>

	<form action="/surveyUsers/${form_action}" method="post">
     
<div class="form-group form-row">
	<div class="col">
		<label>USER_ID</label> <input class="form-control" type="text"
			name="USER_ID" value="${resultMap.USER_ID}"
			 ${form_action == "update" ? "readonly" : ""} />
	</div>
</div>
<div class="form-group form-row">
	<div class="col">
		<label>EMAIL</label> <input class="form-control" type="email"
			name="EMAIL" value="${resultMap.EMAIL}" placeholder="e-mail@gmail.com" />
	</div>
</div>
<div class="form-group form-row">
	<div class="col">
		<label>PASSWORD</label> <input class="form-control" type="password"
			name="PASSWORD" value="${resultMap.PASSWORD}" placeholder="password" />
	</div>
</div>
<div class="form-group form-row">
	<div class="col">
		<label>FRIST_NAME</label> <input class="form-control" type="text"
			name="FRIST_NAME" value="${resultMap.FRIST_NAME}" />
	</div>
</div>
<div class="form-group form-row">
	<div class="col">
		<label>LAST_NAME</label> <input class="form-control" type="text"
			name="LAST_NAME" value="${resultMap.LAST_NAME}" />
	</div>
</div>
<div class="form-group form-row">
	<div class="col">
		<label>TITLE_OF_HONOR</label> <input class="form-control" type="text"
			name="TITLE_OF_HONOR" value="${resultMap.TITLE_OF_HONOR}" />
	</div>
</div>
<div class="form-group form-row">
	<div class="col">
		<label>BIRTHDAY</label> <input class="form-control" type="text"
			name="BIRTHDAY" value="${resultMap.BIRTHDAY}" />
	</div>
</div>
<div class="form-group form-row">
	<div class="col">
		<label>COUNTRY</label> <input class="form-control" type="text"
			name="COUNTRY" value="${resultMap.COUNTRY}" />
	</div>
</div>
<div class="form-group form-row">
	<div class="col">
		<label>STATE</label> <input class="form-control" type="text"
			name="STATE" value="${resultMap.STATE}" />
	</div>
</div>
<div class="form-group form-row">
	<div class="col">
		<label>CITY</label> <input class="form-control" type="text"
			name="CITY" value="${resultMap.CITY}" />
	</div>
</div>
<div class="form-group form-row">
	<div class="col">
		<label>ADDRESS</label> <input class="form-control" type="text"
			name="ADDRESS" value="${resultMap.ADDRESS}" />
	</div>
</div>



<hr>
		<div class="d-flex justify-content-center ">


		<button class="btn btn-dark me-3"
			>
			${form_action}
		</button>

		<button class="btn btn-outline-dark"
			>
			Back List
		</button>
	</div>

</div>
		</form>


          <!-- Footer-->
    <%@ include file = "footer.jsp" %>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>