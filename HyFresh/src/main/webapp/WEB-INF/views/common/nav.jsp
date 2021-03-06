<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="sesInfo" value="${mInfo }" scope="session"/>
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="/">hyfresh</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="/">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/product/list">상품목록</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/notice/list">공지목록</a>
          </li>
          <c:if test="${sesInfo eq null }">  
	          <li class="nav-item">
	            <a class="nav-link" href="/member/join">회원가입</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="/member/login">로그인</a>
	          </li>
          </c:if>
          <c:if test="${sesInfo ne null }">
            <li class="nav-item">
	            <a class="nav-link" href="/member/detail?email=${sesInfo.email }">${sesInfo.name }
	              <c:choose>
	                <c:when test="${sesInfo.grade >= 90 }">(관리자)</c:when>
	                <c:when test="${sesInfo.grade >= 80 }">(매니저)</c:when>
	                <c:when test="${sesInfo.grade >= 50 }">(VIP)</c:when>
	                <c:when test="${sesInfo.grade >= 30 }">(GOLD)</c:when>
	                <c:when test="${sesInfo.grade >= 10 }">(SILVER)</c:when>
	                <c:otherwise>(FAMILY)</c:otherwise>
	              </c:choose>
	            </a>
	          <li>
	            <a class="nav-link" href="/member/mypage">마이페이지</a>
	          </li>
          <c:if test="${sesInfo.email eq 'admin@admin.com' }">
					  <li class="nav-item">
              <a class="nav-link btn btn-sm btn-primary" href="/admin/main">관리자페이지</a>
            </li>
          </c:if>          
          <li class="nav-item">
            <a class="nav-link" href="/member/logout">로그아웃</a>
          </li>
          </c:if>
        </ul>
      </div>
    </div>
  </nav>
  
  
  
  
  