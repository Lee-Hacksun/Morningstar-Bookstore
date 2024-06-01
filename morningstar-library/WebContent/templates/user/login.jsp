<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<c:import url="header.jsp" />
	<section class="bg-white">
		<div
			class="flex items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0">
			<div
				class="w-full bg-white rounded-lg shadow dark:border md:mb-10 sm:max-w-md xl:p-0">
				<div class="p-6 space-y-4 md:space-y-6 sm:p-8">
					<div>
						<a aria-label="Home" href="/"> <img class="w-40 mr-2"
							src="../../assets/icons/morningstarlogo.png" alt="logo">
						</a>
					</div>
					<form id="loginForm" class="space-y-4 md:space-y-6" action="/Login"
						method="post">
						<div>
							<input type="text" name="userID" id="userID"
								class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-3 mb-2"
								required="" placeholder="아이디를 입력해 주세요."> <input
								type="password" name="userPW" id="userPW"
								class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-3"
								required="" placeholder="비밀번호를 입력해 주세요.">
						</div>
						<button type="submit"
							class="w-full text-white bg-sky-700 focus:ring-4 focus:outline-none focus:ring-emerald-500 font-semibold rounded-lg text-lg px-5 py-3.5 text-center">
							로그인</button>
					</form>
					<div id="error-message" class="text-red-500 text-sm mt-2">
						<c:if test="${not empty requestScope.errorMessage}">
        					${requestScope.errorMessage}
    					</c:if>
					</div>

				</div>
			</div>
		</div>
	</section>
	<c:import url="footer.jsp" />
</body>
</html>

