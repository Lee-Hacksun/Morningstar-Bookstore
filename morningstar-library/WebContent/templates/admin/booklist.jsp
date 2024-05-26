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
	<div class="flex flex-col h-screen justify-between">
		<div id="header">
			<header>
				<div class="bg-white">
					<nav
						class="bg-white border-b border-gray-200 px-4 py-2.5 fixed left-0 right-0 top-0 z-50">
						<div class="flex flex-wrap justify-between items-center">
							<div class="flex justify-start items-center">
								<button data-drawer-target="drawer-navigation"
									data-drawer-toggle="drawer-navigation"
									aria-controls="drawer-navigation"
									class="p-2 mr-2 text-gray-600 rounded-lg cursor-pointer md:hidden hover:text-gray-900 hover:bg-gray-100 focus:bg-gray-100 focus:ring-2 focus:ring-gray-100">
									<svg aria-hidden="true" class="w-6 h-6" fill="currentColor"
										viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd"
											d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM3 10a1 1 0 011-1h6a1 1 0 110 2H4a1 1 0 01-1-1zM3 15a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z"
											clip-rule="evenodd"></path>
                                </svg>
									<svg aria-hidden="true" class="hidden w-6 h-6"
										fill="currentColor" viewBox="0 0 20 20"
										xmlns="http://www.w3.org/2000/svg">
                                    <path fill-rule="evenodd"
											d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
											clip-rule="evenodd"></path>
                                </svg>
									<span class="sr-only">Toggle sidebar</span>
								</button>
								<a href="/" class="flex items-center justify-between mr-4">
									<img class="w-10 mr-3"
									src="../../assets/icons/morningstarlogo.png" alt="logo">
									<span
									class="self-center text-2xl font-semibold whitespace-nowrap">ADMINISTRATOR</span>
								</a>
							</div>
							<div class="flex items-center lg:order-2">
								<a href="/"
									class="block py-2 px-4 text-sm text-slate-700 font-semibold hover:bg-gray-100">
									로그아웃</a>
							</div>
						</div>
					</nav>
				</div>
			</header>
		</div>
		<div id="content" class="mb-auto p-4 h-auto pt-20 pb-40">
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
									stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
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
							class="block font-semibold text-center text-gray-900 hover:bg-gray-100 md:hover:bg-transparent md:hover:text-sky-700 pb-3 border-b-4 border-gray-200 hover:border-sky-700"
							aria-current="page">전체</a></li>
						<li><a href="#"
							class="block font-semibold text-center text-gray-900 hover:bg-gray-100 md:hover:bg-transparent md:hover:text-sky-700 pb-3 border-b-4 border-gray-200 hover:border-sky-700">국내도서</a>
						</li>
						<li><a href="#"
							class="block font-semibold text-center text-gray-900 hover:bg-gray-100 md:hover:bg-transparent md:hover:text-sky-700 pb-3 border-b-4 border-gray-200 hover:border-sky-700">동양도서</a>
						</li>
						<li><a href="#"
							class="block font-semibold text-center text-gray-900 hover:bg-gray-100 md:hover:bg-transparent md:hover:text-sky-700 pb-3 border-b-4 border-gray-200 hover:border-sky-700">서양도서</a>
						</li>
					</ul>
				</div>
			</nav>

			<div id="lower_banner" class="mb-10 mx-auto max-w-[1300px]">
				<!-- 베스트셀러 -->
				<div class="justify-items-end w-full p-4">
					<div class="grid grid-cols-4 gap-4">
						<div class="float-left">
							<div>
								<a href="/products/504"> <img
									src="https://contents.kyobobook.co.kr/sih/fit-in/300x0/pdt/9788946422711.jpg"
									alt="book cover">
								</a>
								<div>
									<a href="/products/">
										<div class="flex flex-col p-3">
											<div>
												<p class="text-left text-xl font-bold">있는 힘껏 산다</p>
											</div>
											<div class="mt-1">
												<p class="text-left text-base">정재경 · 샘터(샘터사)</p>
											</div>
										</div>
									</a>
								</div>
							</div>
						</div>

						<div class="float-left">
							<div>
								<a href="/products/366"> <img
									src="https://contents.kyobobook.co.kr/sih/fit-in/300x0/pdt/9791193262122.jpg"
									alt="book cover">
								</a>
								<div>
									<a href="/products/">
										<div class="flex flex-col p-3">
											<div>
												<p class="text-left text-xl font-bold">일류의 조건</p>
											</div>
											<div class="mt-1">
												<p class="text-left text-base">사이토 다카시 · 필름(Feelm)</p>
											</div>
										</div>
									</a>
								</div>
							</div>
						</div>
						<div class="float-left">
							<div>
								<a href="/products/348"> <img
									src="https://contents.kyobobook.co.kr/sih/fit-in/300x0/pdt/9791171830237.jpg"
									alt="book cover">
								</a>
								<div>
									<a href="/products/">
										<div class="flex flex-col p-3">
											<div>
												<p class="text-left text-xl font-bold">법구경 마음공부</p>
											</div>
											<div class="mt-1">
												<p class="text-left text-base">정운 · 필름(Feelm)</p>
											</div>
										</div>
									</a>
								</div>
							</div>
						</div>
						<div class="float-left">
							<div>
								<a href="/products/354"> <img
									src="https://contents.kyobobook.co.kr/sih/fit-in/300x0/pdt/9791170611080.jpg"
									alt="book cover">
								</a>
								<div>
									<a href="/products/">
										<div class="flex flex-col p-3">
											<div>
												<p class="text-left text-xl font-bold">벌거벗은 세계사: 권력자편</p>
											</div>
											<div class="mt-1">
												<p class="text-left text-base">
													tvn
													<벌거벗은세계사>제작팀 · 교보문고 
												</p>
											</div>
										</div>
									</a>
								</div>
							</div>
						</div>

					</div>
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