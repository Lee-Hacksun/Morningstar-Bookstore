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
	<div class="flex flex-col h-screen justify-between">
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
						<!-- 로그인 -->
						<div class="flex items-center lg:order-2 col-start-3 justify-end">
							<a href="#"
								class="text-gray-600 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-bold  rounded-lg text-md px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">
								로그인 </a> <a href="#"
								class="text-gray-600 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-bold  rounded-lg text-md px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">
								회원가입 </a>
							<button data-collapse-toggle="mobile-menu-2" type="button"
								class="inline-flex items-center p-2 ml-1 text-sm text-gray-500 rounded-lg lg:hidden hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-gray-200 dark:text-gray-400 dark:hover:bg-gray-700 dark:focus:ring-gray-600"
								aria-controls="mobile-menu-2" aria-expanded="false">
								<span class="sr-only">Open main menu</span>
								<svg class="w-6 h-6" fill="currentColor" viewBox="0 0 20 20"
									xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
										d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z"
										clip-rule="evenodd"></path>
                            </svg>
								<svg class="hidden w-6 h-6" fill="currentColor"
									viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
										d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
										clip-rule="evenodd"></path>
                            </svg>
							</button>
						</div>
					</div>
				</div>
				<div class="mx-auto mt-5 w-full text-center">
					<div
						class="flex flex-row justify-between border-b-2 border-gray-200">
					</div>
				</div>
			</div>
		</div>
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
					<form class="max-w-md mx-auto">
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
							<input type="search" id="default-search"
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
					<div
						class="items-center justify-center hidden w-full md:flex md:w-auto md:order-1"
						id="navbar-sticky">
						<ul
							class="grid grid-cols-4 gap-4 p-4 md:p-0 mt-4 font-bold text-xl border border-gray-100 rounded-lg bg-gray-50 rtl:space-x-reverse md:flex-row md:mt-0 md:border-0 md:bg-white dark:bg-gray-800 md:dark:bg-gray-900 dark:border-gray-700">
							<li class="w-36"><a href="#"
								class="block font-semibold text-gray-900 hover:bg-gray-100 md:hover:bg-transparent md:hover:text-sky-700 pb-3 border-b-4 border-gray-200 hover:border-sky-700"
								aria-current="page">전체</a></li>
							<li><a href="#"
								class="block font-semibold text-gray-900 hover:bg-gray-100 md:hover:bg-transparent md:hover:text-sky-700 pb-3 border-b-4 border-gray-200 hover:border-sky-700">국내도서</a>
							</li>
							<li><a href="#"
								class="block font-semibold text-gray-900 hover:bg-gray-100 md:hover:bg-transparent md:hover:text-sky-700 pb-3 border-b-4 border-gray-200 hover:border-sky-700">동양도서</a>
							</li>
							<li><a href="#"
								class="block font-semibold text-gray-900 hover:bg-gray-100 md:hover:bg-transparent md:hover:text-sky-700 pb-3 border-b-4 border-gray-200 hover:border-sky-700">서양도서</a>
							</li>
						</ul>
					</div>
				</nav>
				<div>
					<c:set var="books" value="${requestScope.books}" />
					<c:import url="booklist.jsp">
						<c:param name="books" value="${books}" />
					</c:import>
				</div>
			</div>
		</div>
		<div id="footer">
			<footer class="w-full mx-auto border-t border-slate-900/5 bg-white">
				<div
					class="flex flex-row justify-between mx-auto max-w-[1300px] px-10">
					<div class="float-left mt-10 mb-10">
						<p class="text-gray-500 text-sm font-bold mb-2">한신대학교</p>
						<p class="text-gray-500 text-sm font-normal mb-2">6조 | 이승은 이학선
							전태준 정민구 정규민</p>
						<p class="text-gray-500 text-sm font-normal">Copyright ⓒ 6조</p>
					</div>
					<div class="content-center justify-end">
						<img src="https://www.hs.ac.kr/sites/testPub/images/logo.jpg">
					</div>
				</div>
			</footer>
		</div>
	</div>
</body>
</html>