<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../common/header.jsp"></jsp:include>
<jsp:include page="../common/nav.jsp"></jsp:include>

<div class="container">
    <div class="row">
      <div class="col-lg-10 col-xl-9 mx-auto">
        <div class="card card-signin flex-row my-5">
          <div class="card-img-left d-none d-md-flex">
          <!-- Background image for card set in CSS! -->
          </div>
          <div class="card-body">
            <h5 class="card-title text-center">회원가입</h5>
            <form class="form-signin" action="/member/login" method="post">
              <div class="form-label-group">
                <input type="text" id="name" class="form-control" placeholder="Username" name="name" required autofocus>
                <label for="inputUserame">Name</label>
              </div>

              <div class="form-label-group">
                <input type="email" id="email" class="form-control" placeholder="Email address" name="email" required>
                <label for="email">Email address</label>
              </div>
              
              <hr>

              <div class="form-label-group">
                <input type="password" id="pwd" class="form-control" placeholder="Password" name="pwd" required>
                <label for="pwd">Password</label>
              </div>
              
              <div class="form-label-group">
                <input type="password" id="confirmpwd" class="form-control" placeholder="Password" name="confirmpwd" required>
                <label for="confirmpwd">Confirm password</label>
              </div>

              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Register</button>
              <a class="d-block text-center mt-2 small" href="/member/login">Sign In</a>
              <hr class="my-4">
              <button class="btn btn-lg btn-google btn-block text-uppercase" type="submit"><i class="fab fa-google mr-2"></i> Sign up with Google</button>
              <button class="btn btn-lg btn-facebook btn-block text-uppercase" type="submit"><i class="fab fa-facebook-f mr-2"></i> Sign up with Facebook</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

<jsp:include page="../common/footer.jsp"></jsp:include>