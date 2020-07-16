<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="../common/header.jsp"></jsp:include>
<jsp:include page="../common/nav.jsp"></jsp:include>
<section class="py-5">
  <div class="container">
    <div class="mb-3">
      <a href="/product/list?pageNum=${cri.pageNum }&amount=${cri.amount}&type=${cri.type}&keyword=${cri.keyword}" class="btn btn-success">상품목록</a>
    </div>
    <p style="text-align:center">먼저 배송 받을 날을 선택해 주세요.</p>
    <div class="mb-4" style="display: flex; justify-content: center;">
      <div class="btn-group mt-3" style="background: url(http://www.hyfresh.co.kr/resources/ko/pc/images/common/con_calendar_gh842353.png) 0 -40px repeat-x;">
        <button style="background: url(http://www.hyfresh.co.kr/resources/ko/pc/images/common/btnback8315_off.png) 0 0 no-repeat; text-indent: -9999999999em;border: none; width: 62px; height: 67px; margin-top: 29px">뒤로</button>
        <button type="button" class="btn btn-primary" style="width: 7rem; height: 7rem; border-radius: 123px; margin-right: 15px; margin-left: 50px">금<p style="font-size: 30px; margin: 0;">07/17</p></button>
        <button type="button" class="btn btn-primary" style="width: 7rem; height: 7rem; border-radius: 123px; margin-right: 15px;">토<p style="font-size: 30px; margin: 0;">07/18</p></button>
        <button type="button" class="btn btn-primary" style="width: 7rem; height: 7rem; border-radius: 123px; margin-right: 15px;">월<p style="font-size: 30px; margin: 0;">07/20</p></button>
        <button type="button" class="btn btn-primary" style="width: 7rem; height: 7rem; border-radius: 123px; margin-right: 15px;">화<p style="font-size: 30px; margin: 0;">07/21</p></button>
        <button type="button" class="btn btn-primary" style="width: 7rem; height: 7rem; border-radius: 123px; margin-right: 50px">수<p style="font-size: 30px; margin: 0;">07/22</p></button>
        <button style="background: url(http://www.hyfresh.co.kr/resources/ko/pc/images/common/btnnext8315_off.png) 0 0 no-repeat; text-indent: -9999999999em; border: none; width: 62px; height: 67px; margin-top: 29px">앞으로</button>
      </div>
    </div>
    <form action="/product/detail" method="post">
      <div class="container d-flex">
        <div class="col-sm-5">
          <img src="${pvo.img }" class="card-img-top">
        </div>
        <div class="col-sm-7">
          <ul style="list-style: none;">
            <li><hr></li>
            <li class="detail-tit" style="font-size: 36px;">${pvo.pname }</li>
            <li class="mb-3" style="background-color: #f2f2f2; border-radius: 0.5em; ">
            <span style="font-size: 10px; line-height: 24px; font-weight: bold; background-color:#b3b3b3; margin: 0 10px; border-radius: 0.5em; color: white; padding: 0 5px; text-align: center;">TAG</span>
	            <c:forEach items="${tList }" var="tag" varStatus="i">
	             <a href="" style="margin-right: 1rem"> ${tag }</a>
	            </c:forEach>
            </li>
            <li class="mb-3" style="height:5px"></li>
            <li class="mb-3" style="border: 3px solid #b3b3b3; padding: 25px">
              <c:if test="${pvo.discount ne 0 }">
              <span style="font-size: 2rem; line-height: 94px; color: red"> ${pvo.discount }%</span>
                <p style="text-decoration:line-through"><span style="font-size: 24px"><fmt:formatNumber value="${pvo.price }" type="currency" currencySymbol=""/></span>원</p>
                <fmt:parseNumber value="${pvo.price}" integerOnly="true" var="price" />
                <fmt:parseNumber value="${pvo.discount}" integerOnly="true" var="discount" />
                <span style="font-size: 24px" id="price"><fmt:formatNumber value="${price * discount / 100 }" type="currency" currencySymbol=""/></span>원
              </c:if>
              <c:if test="${pvo.discount eq 0 }">
                <span style="font-size: 24px" id="price"><fmt:formatNumber value="${pvo.price}" type="currency" currencySymbol=""/></span>원
              </c:if> 
              <div class="btn-group" style="float:right;">
							  <button type="button" class="btn btn-primary" style="background-color: white; color: black; border: 1px solid black;" id="minus">-</button>
							  <input type="text" class="btn btn-primary" value="1" size=1 style="background-color: white; color: black; border: 1px solid black;" id="num">
							  <button type="button" class="btn btn-primary" style="background-color: white; color: black; border: 1px solid black;" id="plus">+</button>
						  </div>
            </li>
            <li class="mb-3" style="height:5px">무료배송 | 도서산간 배송비 <i class='fas fa-info-circle' style="font-size:12px"></i></li>
            <li class="mb-3" style="height:5px"><span style="color: #24b5eb">묶음배송</span> | 택배배송 | 2일 이내 출고</li>
            <li class="mb-3" style="height:5px"><span style="color: #898989">(주말, 공휴일 제외)</span></li>
            <li class="mb-3" style="height:10px"></li>
            <li class="mb-3" style="height:15px"><span style="font-weight: bold">${pvo.sellcount }개</span> 구매</li>
            <li class="mb-3" style="text-align: center">
              <a href="" class="btn btn-secondary btn-lg" style="padding:10px 6rem">장바구니</a>
              <a href="" class="btn btn-primary btn-lg" style="padding:10px 6rem">바로구매</a>
          </ul>
        </div>
      </div>
    </form>
   </div>
   <div class="container-fluid" style="background-color: #f2f2f2; text-align: center; margin: 30px 0; padding: 50px 85px;">
       <p style="text-align: left; margin-left: 2rem; font-weight:bold;">이 제품과 비슷한 제품</p>
    <div class="row" style="display: flex; justify-content: center;">
      <c:forEach items="${pList }" var="pvo">
			  <div class="col-sm-3">
			    <div class="card" style="background-color: transparent; border: 0; overflow: hidden;">
				    <img class="card-img-top mb-2" src="${pvo.img }" alt="Card image" style="width:40%; margin: 0 auto; border-radius: 100%;">
				    <div class="card-body" style="padding: 0;">
				      <h4 class="card-title" style="font-size: 0.9rem;">${pvo.pname }</h4>
				      <p class="card-text">${pvo.price }원</p>
	          </div>
			    </div>
	      </div>
	     </c:forEach>
	     </div>
  </div>
    <div class="container">
  <ul class="nav nav-tabs nav-justified">
    <li class="nav-item">
      <a class="nav-link active" href="#">상품설명</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">상품후기(${fn:length(rList) })</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">상품문의(2건)</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">배송안내</a>
    </li>
  </ul>
  </div>
  <div class="container">
    <img src="${pvo.content }">
  </div>
</section>
<jsp:include page="../common/footer.jsp"></jsp:include>

<script>

$(function() {
	$("#minus").on("click", function(e) {
		e.preventDefault;
		if($("#num").val() != 0) {
	        e.preventDefault;
	        let discount = Number('<c:out value="${pvo.discount}"/>');
	        let price = Number('<c:out value="${pvo.price}"/>');
	        let num = Number($("#num").val()) - 1;
	        $("#num").val(num);
	        if(discount == 0) {
	          price = price * num;
	        }else {
	          price = (price * discount / 100) * num;
	        }
	        price = price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	        $("#price").text(price);
	}
	});
	 $("#plus").on("click", function(e) {
		    e.preventDefault;
		    let discount = Number('<c:out value="${pvo.discount}"/>');
		    let price = Number('<c:out value="${pvo.price}"/>');
		    let num = Number($("#num").val()) + 1;
		    $("#num").val(num);
		    if(discount == 0) {
		      price = price * num;
		    }else {
		    	price = (price * discount / 100) * num;
		    }
		    price = price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		    $("#price").text(price);
	});
});
</script>

