<jsp:include page="../common/header.jsp"></jsp:include>
<jsp:include page="../common/nav.jsp"></jsp:include>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<section class="py-5">
    <div class="container">
      <h1>Product List</h1>
      <div class="float-right form-group">
	      <form action="/product/list" class="form-inline">
		      <input type="hidden" value="1" name="pageNum">
		      <input type="hidden" value="${pgvo.cri.amount }" name="amount">
					<div class="input-group">
					   <div class="input-group-prepend">
		          <select class="form-control" id="stype" name="type">
						    <option value="twc">선택</option>
						    <option value="t">상품명</option>
						    <option value="w">작성자</option>
						    <option value="c">상세정보</option>
						    <option value="tw">상품명+작성자</option>
						    <option value="tc">상품명+상세정보</option>
						    <option value="wc">작성자+상세정보</option>
					    </select>
		         </div>
					  <input type="text" name="keyword" class="form-control" placeholder="Keyword">
					  <div class="input-group-append">
					    <button class="btn btn-success" type="submit">Search</button>
					  </div>
					</div>
				</form>
			</div>
      <table class="table table-hover">
    <thead>
      <tr class="table-info">
        <th>상품번호</th>
        <th>상품명</th>
        <th>등록자</th>
        <th>조회수</th>
        <th>최종수정일</th>
        <th></th>
      </tr>
    </thead>
    <c:choose>
      <c:when test="${pList ne null && pList.size() != 0 }">
		    <tbody>
		      <c:forEach items="${pList }" var="pvo">
			      <tr>
			        <td>${pvo.pname}</td>
			        <td>${pvo.price}</td>
			        <td>${pvo.custom}</td>
			        <td>${pvo.tname }</td>
			        <td>
			         <c:if test="${pvo.img ne 'NONE' }">
			           <i class='far fa-file-image'></i>
			         </c:if>
			        </td>
			      </tr>
		     </c:forEach>
        </c:when>
	      <c:otherwise>
	        <tr>
	          <th colspan="5"><h3 class="text-center">등록된 상품이 없습니다.</h3></th>
	        </tr>
	      </c:otherwise>
      </c:choose>
    </tbody>
    <c:if test="${sesInfo.email ne null }">
      <tfoot>
      <tr>
        <th colspan="5">
          <a href="/product/write" class="btn btn-primary">상품 등록</a>
        </th>
      </tr>
    </tfoot>
    </c:if>
    </table>
    <ul class="pagination">
	    <c:if test="${pgvo.prev }">
			  <li class="page-item"><a class="page-link" href="/product/list?pageNum=${pgvo.beginPagingNum - 1 }&amount=${pgvo.cri.amount}&type=${pgvo.cri.type }&keyword=${pgvo.cri.keyword }">Prev</a></li>
			</c:if>
			  <c:forEach begin="${pgvo.beginPagingNum }" end="${pgvo.endPagingNum }" var="i">
			   <li class="page-item ${pgvo.cri.pageNum == i ? 'active':'' }"><a class="page-link" href="/product/list?pageNum=${i }&amount=${pgvo.cri.amount }&type=${pgvo.cri.type }&keyword=${pgvo.cri.keyword }">${i }</a></li>
			  </c:forEach>
			<c:if test="${pgvo.next }">  
			  <li class="page-item"><a class="page-link" href="/product/list?pageNum=${pgvo.endPagingNum + 1 }&amount=${pgvo.cri.amount}&type=${pgvo.cri.type }&keyword=${pgvo.cri.keyword }">Next</a></li>
			</c:if>
    </ul>
    </div>
</section>
<jsp:include page="../common/footer.jsp"></jsp:include>