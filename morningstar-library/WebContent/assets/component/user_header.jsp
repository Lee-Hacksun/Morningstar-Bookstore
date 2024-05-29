<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>user_header page</title>
</head>
<body>
<div id="header">
			<div class="fixed top-0 z-50 pt-5 w-full bg-white">
				<div class="mx-auto max-w-[1300px] px-4 sm:px-6 lg:px-8">
					<div class="relative z-50 grid grid-cols-3 gap-4">
						<!-- logo -->
						<div class="flex items-center md:gap-x-12">
							<a aria-label="Home" href="/"> <img class="w-40 mr-2"
								src="../../assets/icons/morningstarlogo.png" alt="logo">
							</a>
						</div>
						<c:choose>
						<c:when test="${not empty requestScope.userID}">
						<!-- 로그인 후의 헤더 -->
						<div class="flex items-center lg:order-2 col-start-3 justify-end">
							<a href="mypage.jsp"
								class="text-gray-600 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-bold  rounded-lg text-md px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">
								마이페이지 
							</a> 
							<a href="shoppingcart_empty.jsp"
								class="text-gray-600 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-bold  rounded-lg text-md px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">
								장바구니 
							</a>
							<a href="/"
								class="text-gray-600 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-bold  rounded-lg text-md px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">
								로그아웃 
							</a>
						</div>
						</c:when>
						<c:otherwise>
						<!-- 로그인 전의 헤더 -->
						<div class="flex items-center lg:order-2 col-start-3 justify-end">
							<a href="login.jsp"
								class="text-gray-600 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-bold  rounded-lg text-md px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">
								로그인 </a> <a href="create_acc.jsp"
								class="text-gray-600 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-bold  rounded-lg text-md px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">
								회원가입 </a>
						</div>
						</c:otherwise>
						</c:choose>
					</div>
				</div>
				<div class="mx-auto mt-5 w-full text-center">
					<div
						class="flex flex-row justify-between border-b-2 border-gray-200">
					</div>
				</div>
			</div>
		</div>
</body>
</html>