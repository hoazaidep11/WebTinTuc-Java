<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>HQMT Tin Tức Thị Trường 24h</title>
<!-- Bootstrap core CSS -->
<link href="<c:url value="/assets/css/bootstrap.css"/>" rel="stylesheet" />
<!-- Fontawesome core CSS -->
<link href="<c:url value="/assets/css/font-awesome.min.css"/>"
	rel="stylesheet" />
<!--GOOGLE FONT -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<!--Slide Show Css -->
<link href="<c:url value="/assets/ItemSlider/css/main-style.css"/>"
	rel="stylesheet" />
<!-- custom CSS here -->
<link href="<c:url value="/assets/css/style.css"/>" rel="stylesheet" />
</head>
<body>


	<%@include file="/WEB-INF/views/layouts/user/header.jsp"%>
	<!-- header -->

	<div class="container">
		<div class="row">
			<div class="col-md-9">
				<div class="main box-border">
					<div id="mi-slider" class="mi-slider">
						<ul>

							<li><a href="https://www.mbbank.com.vn/"> <img
									src="assets/ItemSlider/images/1.png" alt="img01">
									<h4>MB Bank</h4>
							</a></li>
							<li><a href="https://www.sacombank.com.vn/"> <img
									src="assets/ItemSlider/images/2.png" alt="img02">
									<h4>SacomBank</h4>
							</a></li>
							<li><a href="https://portal.vietcombank.com.vn/Pages/Home.aspx"> <img
									src="assets/ItemSlider/images/3.png" alt="img03">
									<h4>VietcomBank</h4>
							</a></li>
							<li><a href="https://www.vietinbank.vn/web/home/vn/index.html"> <img
									src="assets/ItemSlider/images/4.png" alt="img04">
									<h4>VietinBank</h4>
							</a></li>
						</ul>
						<ul>
							<li><a href="https://momo.vn/"> <img
									src="assets/ItemSlider/images/2.1.png" alt="img05">
									<h4>MoMo</h4>
							</a></li>
							<li><a href="https://viettelmoney.vn/"> <img
									src="assets/ItemSlider/images/2.2.png" alt="img06">
									<h4>Viettel Pay</h4>
							</a></li>
							<li><a href="https://www.paypal.com/vn/home"> <img
									src="assets/ItemSlider/images/2.3.png" alt="img07">
									<h4>PayPal</h4>
							</a></li>
						</ul>
						<nav>
							<a href="#">BANKS</a> <a href="#">Ví điện tử</a>
						</nav>
					</div>

				</div>
				<br />
			</div>
			<!-- /.col -->

			<div class="col-md-3 text-center">
				<div class=" col-md-12 col-sm-6 col-xs-6">
					<div class="offer-text">Lãi Xuất 7,20%/năm</div>
					<div class="thumbnail product-box">
						<img src="assets/ItemSlider/images/3.png" alt="" />
						<div class="caption">
							<h3>
								<a href="https://coccoc.com/search?query=m%E1%BB%A9c%20l%C3%A3i%20xu%E1%BA%A5t%20ng%C3%A2n%20h%C3%A0ng%20vietcombank&shared=1&share=finance">VietcomBank </a>
							</h3>
							<p>
								<a href="https://coccoc.com/search?query=m%E1%BB%A9c%20l%C3%A3i%20xu%E1%BA%A5t%20ng%C3%A2n%20h%C3%A0ng%20vietcombank&shared=1&share=finance">Chi tiết </a>
							</p>
						</div>
					</div>
				</div>
				<div class=" col-md-12 col-sm-6 col-xs-6">
					<div class="offer-text2">Lãi Xuất 7.20%/năm</div>
					<div class="thumbnail product-box">
						<img src="assets/ItemSlider/images/4.png" alt="" />
						<div class="caption">
							<h3>
								<a href="https://coccoc.com/search?query=m%E1%BB%A9c%20l%C3%A3i%20xu%E1%BA%A5t%20ng%C3%A2n%20h%C3%A0ng%20Viettinbank&shared=1&share=finance">VietinBank </a>
							</h3>
							<p>
								<a href="https://coccoc.com/search?query=m%E1%BB%A9c%20l%C3%A3i%20xu%E1%BA%A5t%20ng%C3%A2n%20h%C3%A0ng%20Viettinbank&shared=1&share=finance">Chi tiết </a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
		<div class="row">
			<div class="col-md-3">
				<div>
					<a href="#" class="list-group-item active">Tin Tức Nổi Bật</a>
					<ul class="list-group">
						<c:forEach var="item" items="${loaisanpham}">
							<li class="list-group-item"><a
								href="<c:url value="/sanphamtheoloai/${item.id }"/>">${item.tenLSP }</a>
							</li>
						</c:forEach>
					</ul>
				</div>
				<div>
					<a href="#" class="list-group-item active">Thị Trường Tiền Mã Hóa </a>
					<ul class="list-group">
						<c:forEach var="item" items="${nhaphanphoi}">
							<li class="list-group-item"><a
								href="<c:url value="/sanphamtheonpp/${item.id }"/>">${item.tenNPP }</a>
							</li>
						</c:forEach>
					</ul>
				</div>
				<!-- /.div -->
				<div>
					<ul class="list-group">
						<li class="list-group-item list-group-item-success"><a
							href="#">New Offer's Coming </a></li>
						<li class="list-group-item list-group-item-info"><a href="#">New
								Products Added</a></li>
						<li class="list-group-item list-group-item-warning"><a
							href="#">Ending Soon Offers</a></li>
						<li class="list-group-item list-group-item-danger"><a
							href="#">Just Ended Offers</a></li>
					</ul>
				</div> 
				<!-- /.div -->

				<!-- /.div -->
			</div>
			<div class="col-md-9">
				<ul class="nav nav-pills">
					<li><a href="<c:url value="/"/>">Trang chủ</a></li>
					<li><a href="<c:url value="/sanpham"/>">Tin tức mới</a></li>
					<li><a href="<c:url value="/lienhe"/>">Thông tin ngân hàng </a></li>
					<li><a href="<c:url value="/gioithieu"/>">Thị trường tài chính</a></li>			
				</ul>
				<form>
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search">
						<div class="input-group-btn">
							<button class="btn btn-default" type="submit">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</div>
					</div>
				</form>
				<br />

				<decorator:body />

			</div>

			<!-- /.col -->

			<!-- /.col -->

		</div>
		<!-- /.row -->
	</div>




	<!-- footer -->
	<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>


	<!--Footer end -->
	<!--Core JavaScript file  -->
	<script src="<c:url value="/assets/js/jquery-1.10.2.js"/>"></script>
	<!--bootstrap JavaScript file  -->
	<script src="<c:url value="/assets/js/bootstrap.js"/>"></script>
	<!--Slider JavaScript file  -->
	<script
		src="<c:url value="/assets/ItemSlider/js/modernizr.custom.63321.js"/>"></script>
	<script
		src="<c:url value="/assets/ItemSlider/js/jquery.catslider.js"/>"></script>
	<script>
		$(function() {

			$('#mi-slider').catslider();

		});
	</script>
	<decorator:getProperty property="page.script"></decorator:getProperty>
</body>
</html>