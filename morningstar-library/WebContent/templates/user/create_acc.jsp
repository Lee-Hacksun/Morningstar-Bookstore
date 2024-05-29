<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://unpkg.com/flowbite@1.5.3/dist/flowbite.js"></script>
    <title>샛별문고</title>
</head>
<body>
	<!-- header 불러오기 -->
	<jsp:include page="assets/component/user_header.jsp" />
	
<section class="bg-white">
    <div class="flex flex-col items-center justify-center mt-24 mb-10 px-6 py-8 mx-auto md:h-screen lg:py-0">
      <div class="w-full bg-white rounded-lg shadow dark:border md:mt-0 sm:max-w-md xl:p-0 dark:bg-gray-800 dark:border-gray-700">
          <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
              <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white">
                  회원가입
              </h1>
              <form class="space-y-4 md:space-y-6" action="/RegistUser" method="post">
                  <div>
                      <label for="name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">이름</label>
                      <input type="text" name="name" id="name" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" placeholder="이름" required="">
                  </div>
                  <div>
                      <label for="email" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">이메일</label>
                      <input type="email" name="eMailAddress" id="email" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" placeholder="이메일" required="">
                  </div>
                  <div>
                      <label for="userID" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">아이디</label>
                      <input type="text" name="userID" id="userID" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" placeholder="아이디" required="">
                  </div>
                  <div>
                      <label for="userPW" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">비밀번호</label>
                      <input type="password" name="userPW" id="userPW" placeholder="••••••••" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" required="">
                  </div>
                  <div>
                      <label for="confirm-password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">비밀번호 확인</label>
                      <input type="password" name="confirm-password" id="confirm-password" placeholder="••••••••" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" required="">
                  </div>
                  <div>
                      <label for="address" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">주소</label>
                      <input type="text" name="deliveryAddress" id="address" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" placeholder="주소" required="">
                  </div>
                  <button type="submit" class="w-full text-white bg-sky-700 hover:bg-sky-800 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">회원가입</button>
                  <p class="text-sm font-light text-gray-500 dark:text-gray-400">
                      이미 계정이 있으신가요? <a href="login.jsp" class="font-semibold text-sky-700 hover:underline">로그인 ></a>
                  </p>
              </form>
              <div id="error-message" class="text-red-500 text-sm mt-2">
                  <% String errorMessage = (String) request.getAttribute("errorMessage"); %>
                  <% if (errorMessage != null) { %>
                      <%= errorMessage %>
                  <% } %>
              </div>
          </div>
      </div>
  </div>
</section>
	<!-- footer 불러오기 -->
	<jsp:include page="assets/component/footer.jsp" />
</body>
</html>

