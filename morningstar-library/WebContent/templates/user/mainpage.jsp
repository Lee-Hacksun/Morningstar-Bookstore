<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta charset="UTF-8">
<meta name="viewport" content="width=1280">
<script src="https://cdn.tailwindcss.com"></script>
<script src="https://unpkg.com/flowbite@1.5.3/dist/flowbite.js"></script>
<title>샛별문고</title>
</head>
<body>
	<!-- header 불러오기 -->
	<jsp:include page="assets/component/user_header.jsp" />
		
	<div class="flex flex-col h-screen justify-between">
		<div id="content" class="mb-auto p-4 h-auto pt-28 pb-40">
			<div id="upper_banner"
				class="mx-auto mt-5 max-w-[1300px] px-4 sm:px-6 lg:px-8 text-center">
				<div id="default-carousel" class="relative mt-5"
					data-carousel="slide">
					<!-- 홍보 배너 -->
					<div
						class="relative h-96 flex justify-center items-center inset-0 shadow-md overflow-hidden">
						<!-- Item 1 -->
						<div class="hidden duration-700 ease-in-out" data-carousel-item>
							<img
								src="https://image.yes24.com/images/00_Event/2024/0417Kids/Big_PC(959x421)_C4.jpg"
								class="absolute block w-full items-center -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2"
								alt="...">
						</div>
						<!-- Item 2 -->
						<div class="hidden duration-700 ease-in-out" data-carousel-item>
							<img
								src="https://image.yes24.com/images/00_Event/2024/0320Be/Big_PC(959x421)_C4.jpg"
								class="absolute block w-full items-center -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2"
								alt="...">
						</div>
						<!-- Item 3 -->
						<div class="hidden duration-700 ease-in-out" data-carousel-item>
							<img
								src="https://image.yes24.com/images/00_Event/2024/0321Fill/Big_PC(959x421)_C4.jpg"
								class="absolute block w-full items-center -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2"
								alt="...">
						</div>
						<!-- Item 4 -->
						<div class="hidden duration-700 ease-in-out" data-carousel-item>
							<img
								src="https://image.yes24.com/images/00_Event/2024/0422Original/Big_PC(959x421)_C4.jpg"
								class="absolute block w-full items-center -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2"
								alt="...">
						</div>
						<!-- Item 5 -->
						<div class="hidden duration-700 ease-in-out" data-carousel-item>
							<img
								src="https://image.yes24.com/images/00_Event/2024/0415Wsb/bn_959x421.jpg"
								class="absolute block w-full items-center -translate-x-1/2 -translate-y-1/2 top-1/2 left-1/2"
								alt="...">
						</div>
					</div>
					<!-- Slider indicators -->
					<div
						class="absolute z-30 flex -translate-x-1/2 bottom-5 left-1/2 space-x-3 rtl:space-x-reverse mb-2">
						<button type="button" class="w-3 h-3 rounded-full"
							aria-current="true" aria-label="Slide 1"
							data-carousel-slide-to="0"></button>
						<button type="button" class="w-3 h-3 rounded-full"
							aria-current="false" aria-label="Slide 2"
							data-carousel-slide-to="1"></button>
						<button type="button" class="w-3 h-3 rounded-full"
							aria-current="false" aria-label="Slide 3"
							data-carousel-slide-to="2"></button>
						<button type="button" class="w-3 h-3 rounded-full"
							aria-current="false" aria-label="Slide 4"
							data-carousel-slide-to="3"></button>
						<button type="button" class="w-3 h-3 rounded-full"
							aria-current="false" aria-label="Slide 5"
							data-carousel-slide-to="4"></button>
					</div>
					<!-- Slider controls -->
					<div class="flex justify-center items-center">
						<button type="button"
							class="absolute top-0 start-0 z-30 flex items-center justify-center h-full px-4 cursor-pointer group focus:outline-none"
							data-carousel-prev>
							<span
								class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
								<svg
									class="w-4 h-4 text-white dark:text-gray-800 rtl:rotate-180"
									aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
									fill="none" viewBox="0 0 6 10">
                <path stroke="currentColor" stroke-linecap="round"
										stroke-linejoin="round" stroke-width="2" d="M5 1 1 5l4 4" />
            </svg> <span class="sr-only">Previous</span>
							</span>
						</button>
						<button type="button"
							class="absolute top-0 end-0 z-30 flex items-center justify-center h-full px-4 cursor-pointer group focus:outline-none"
							data-carousel-next>
							<span
								class="inline-flex items-center justify-center w-10 h-10 rounded-full bg-white/30 dark:bg-gray-800/30 group-hover:bg-white/50 dark:group-hover:bg-gray-800/60 group-focus:ring-4 group-focus:ring-white dark:group-focus:ring-gray-800/70 group-focus:outline-none">
								<svg
									class="w-4 h-4 text-white dark:text-gray-800 rtl:rotate-180"
									aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
									fill="none" viewBox="0 0 6 10">
                <path stroke="currentColor" stroke-linecap="round"
										stroke-linejoin="round" stroke-width="2" d="m1 9 4-4-4-4" />
            </svg> <span class="sr-only">Next</span>
							</span>
						</button>
					</div>
				</div>
				<!-- 검색창 -->
				<div class="my-12">
					<form class="max-w-md mx-auto" action="/SearchBook" method="get">
						<label for="default-search"
							class="mb-2 text-sm font-medium text-gray-900 sr-only dark:text-white">Search</label>
						<div class="relative">
							<div
								class="absolute inset-y-0 start-0 flex items-center ps-3 pointer-events-none">
								<svg class="w-4 h-4 text-gray-500 dark:text-gray-400"
									aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
									fill="none" viewBox="0 0 20 20">
                                <path stroke="currentColor"
										stroke-linecap="round" stroke-linejoin="round"
										stroke-width="2"
										d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z" />
                            </svg>
							</div>
							<input type="search" name="searchBookName" id="default-search"
								class="block w-full p-4 ps-10 text-sm text-gray-900 shadow rounded-xl bg-gray-50 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"
								placeholder="도서명이나 저자명으로 검색해보세요." required />
							<button type="submit"
								class="text-white absolute end-2.5 bottom-2.5 bg-sky-700 hover:bg-sky-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-xl text-sm px-4 py-2 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
								검색</button>
						</div>
					</form>
				</div>
				<!-- 카테고리 -->
				<nav class="bg-white w-full z-20 py-10">
					<div class="items-center justify-center hidden w-full md:flex md:w-auto md:order-1" id="navbar-sticky">
						<ul class="grid grid-cols-4 gap-4 p-4 md:p-0 mt-4 font-bold text-xl border border-gray-100 rounded-lg bg-gray-50 rtl:space-x-reverse md:flex-row md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">
							<li class="w-36"><a href="ViewBook"
								class="block font-semibold text-gray-900 hover:bg-gray-100 md:hover:bg-transparent md:hover:text-sky-700 pb-3 border-b-4 border-gray-200 hover:border-sky-700"
								aria-current="page">전체</a></li>
							<li><a href="ViewBookCategory?category=국내"
								class="block font-semibold text-gray-900 hover:bg-gray-100 md:hover:bg-transparent md:hover:text-sky-700 pb-3 border-b-4 border-gray-200 hover:border-sky-700">국내도서</a>
							</li>
							<li><a href="ViewBookCategory?category=동양"
								class="block font-semibold text-gray-900 hover:bg-gray-100 md:hover:bg-transparent md:hover:text-sky-700 pb-3 border-b-4 border-gray-200 hover:border-sky-700">동양도서</a>
							</li>
							<li><a href="ViewBookCategory?category=서양"
								class="block font-semibold text-gray-900 hover:bg-gray-100 md:hover:bg-transparent md:hover:text-sky-700 pb-3 border-b-4 border-gray-200 hover:border-sky-700">서양도서</a>
							</li>
						</ul>
					</div>
				</nav>
				<div>
					<c:set var="books" value="${requestScope.books}" />
					<c:import url="booklist.jsp">
						<c:param name="books" value="${books}" />
						<c:param name="showmore" value="${showmore}" />
					</c:import>
				</div>
			</div>
		</div>
		<!-- footer 불러오기 -->
		<jsp:include page="assets/component/footer.jsp" />
	</div>
</body>
</html>