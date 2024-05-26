<!-- 
 TODO : 미완성
 - 필요없는 테그 지우기
 - 리뷰 기능 구현
 - 금액 표기 수정  
-->


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="h-full scroll-smooth">
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
		<div id="header" class="relative">
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
		<div id="content" class="mb-auto h-auto pt-28">
			<div class="bg-white">
				<div class="py-6 mx-auto w-full">
					<nav class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
						<ol role="list" class="flex items-center space-x-4">
							<li>
								<div class="flex items-center">
									<p class="mr-4 text-sm font-medium text-gray-900">${book.category[0]}도서</p>
									<svg viewBox="0 0 6 20" aria-hidden="true"
										class="h-5 w-auto text-gray-300">
                                    <path
											d="M4.878 4.34H3.551L.27 16.532h1.327l3.281-12.19z"
											fill="currentColor" />
                                </svg>
								</div>
							</li>
							<c:forEach items="${book.category}" var="item" begin="1">
								<li class="text-sm"><a href="/"
									class="mr-4 text-sm font-medium text-sky-700 hover:text-sky-700">${item}</a>
								</li>
							</c:forEach>
						</ol>
					</nav>
					<div class="p-8 mx-auto relative max-w-[1300px]">
						<div class="flex justify-between gap-10">
							<!-- 도서 이미지 -->
							<div>
								<div class="w-[400px]">
									<img src="${book.bookImageURL}" alt="bookimage"
										class="shadow-xl">
								</div>
							</div>
							<!-- 도서 정보 및 가격 정보 -->
							<div class="w-full">
								<div class="mx-auto mt-8 max-w-2xl px-4 max-w-7xl px-8">
									<div class="px-4 py-10 border-b-2 border-gray-200">
										<div class="flex flex-row space-x-3 mb-5">
											<p class="text-3xl font-bold text-gray-900">${book.bookName}</p>
											<!-- 현 프로젝트에는 책의 부제를 다루지 않음 -->
											<p
												class="content-center inline-block text-base font-medium text-gray-600"></p>
										</div>
										<div>
											<p
												class="content-center inline-block text-base font-medium text-gray-600">
												${book.author} <span class="mx-1 text-slate-300">|</span>
												${book.publisher} <span class="mx-1 text-slate-300">|</span>
												${releaseDate}
											</p>
										</div>
										<div class="mt-5">
											<p class="text-2xl font-bold text-gray-900">
												<fmt:formatNumber var="formattedPrice" value='${price}'
													type='currency' currencyCode='KRW' maxFractionDigits="0" />
												<c:out value="${formattedPrice}" />
											</p>
										</div>
									</div>
									<div>
										<div class="my-8 space-x-3 flex flex-row">
											<form>
												<button type="submit"
													class="w-auto items-center justify-center py-3 px-5 text-md font-semibold text-gray-700 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-primary-700 focus:z-10">
													장바구니</button>
											</form>
											<form>
												<button type="submit"
													onclick="window.open('https://docs.google.com/forms/d/e/1FAIpQLSdHfpmKtlZzhw3u4Rm7NIsjlJWSRtjHFKupMjpzBykWm2PEEw/viewform?usp=sf_link');"
													class="w-auto items-center justify-center rounded-md border border-sky-700 bg-sky-700 px-5 py-3 shadow text-md font-semibold text-white hover:bg-sky-800 focus:outline-none focus:ring-offset-2">
													바로구매</button>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- 하단 페이지 -->
					<div>
						<!-- tab list -->
						<div
							class="sticky top-0 z-50 w-full bg-white mx-auto mt-32 my-10 border-b-2 border-gray-200">
							<div class="mx-auto max-w-[1300px]">
								<ul class="flex flex-row p-5 space-x-4">
									<li class="p-4 hover:bg-gray-100 rounded-lg"><a
										href="#BookInfo" class="text-gray-600 font-base text-md">상품정보</a>
									</li>
									<li class="p-4 hover:bg-gray-100 rounded-lg"><a
										href="#BookReview" class="text-gray-600 font-base text-md">리뷰
											<span class="num">(1)</span>
									</a></li>
								</ul>
							</div>
						</div>
						<!-- 상품정보 -->
						<section id="BookInfo">
							<div class="relative max-w-[1300px] mx-auto">
								<div class="mx-auto py-8 flex justify-center items-center">
									<div class="flex flex-col w-[814px] content-center">
										<img src="" class="rounded-lg">
										<div
											class="justify-start space-y-4 mt-32 pb-10 border-b border-gray-200">
											<h2 class="text-xl font-semibold">책 소개</h2>
											<h5 class="text-lg font-semibold">이 책이 속한 분야</h5>
											<p class="text-base text-gray-800">
												<c:forEach items="${book.category}" var="item">
													<span class="text-gray-500">></span>
												${item}
												</c:forEach>
											</p>
										</div>
										<div class="justify-start py-10">
											<p class="text-sm text-gray-800 leading-6">
												${book.description}</p>
										</div>
										<div
											class="justify-start space-y-4 mt-32 pb-10 border-b border-gray-300">
											<h2
												class="text-xl font-semibold pb-5 border-b border-gray-800">기본정보</h2>
											<table class="text-left">
												<tbody>
													<tr>
														<th scope="row" class="py-3">ISBN</th>
														<td class="pl-20">${book.isbn}</td>
													</tr>
													<tr>
														<th scope="row" class="py-3">발행(출시)일자</th>
														<td class="pl-20">${book.releaseDate}</td>
													</tr>
													<tr>
														<th scope="row" class="py-3">쪽수</th>
														<td class="pl-20">${book.page}쪽</td>
													</tr>
													<tr>
														<th scope="row" class="py-3">총권수</th>
														<td class="pl-20">1권</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</section>
						<!-- 리뷰 -->
						<section id="BookReview" class="bg-white py-8 lg:pt-8 lg:pb-40">
							<div class="mt-20 max-w-[814px] mx-auto px-4">
								<div class="flex justify-between items-center mb-6">
									<h2
										class="text-lg lg:text-2xl font-bold text-gray-900 dark:text-white">리뷰
										(1)</h2>
								</div>
								<form class="mb-6">
									<div
										class="py-2 px-4 mb-4 bg-white rounded-lg rounded-t-lg border border-gray-200 dark:bg-gray-800 dark:border-gray-700">
										<label for="comment" class="sr-only">Your comment</label>
										<textarea id="comment" rows="6"
											class="px-0 w-full text-sm text-gray-900 border-0 focus:ring-0 focus:outline-none dark:text-white dark:placeholder-gray-400 dark:bg-gray-800"
											placeholder="리뷰를 작성해 주세요..." required></textarea>
									</div>
									<button type="submit"
										class="inline-flex items-center py-2.5 px-4 text-sm font-medium text-center text-white bg-sky-700 rounded-lg hover:bg-sky-800">
										리뷰작성</button>
								</form>
								<article
									class="p-6 text-base bg-white rounded-lg dark:bg-gray-900">
									<footer class="flex justify-between items-center mb-2">
										<div class="flex items-center">
											<p
												class="inline-flex items-center mr-3 text-sm text-gray-900 dark:text-white font-semibold">
												구매자</p>
											<p class="text-sm text-gray-600 dark:text-gray-400">
												<time pubdate datetime="2022-02-08"
													title="February 8th, 2022">2024.05.12 </time>
											</p>
										</div>
										<button id="dropdownComment1Button"
											data-dropdown-toggle="dropdownComment1"
											class="inline-flex items-center p-2 text-sm font-medium text-center text-gray-500 bg-white rounded-lg hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-50"
											type="button">
											<svg class="w-4 h-4" aria-hidden="true"
												xmlns="http://www.w3.org/2000/svg" fill="currentColor"
												viewBox="0 0 16 3">
                                            <path
													d="M2 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3Zm6.041 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3ZM14 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3Z" />
                                        </svg>
											<span class="sr-only">Comment settings</span>
										</button>
										<!-- Dropdown menu -->
										<div id="dropdownComment1"
											class="hidden z-10 w-36 bg-white rounded divide-y divide-gray-100 shadow dark:bg-gray-700 dark:divide-gray-600">
											<ul class="py-1 text-sm text-gray-700 dark:text-gray-200"
												aria-labelledby="dropdownMenuIconHorizontalButton">
												<li><a href="#"
													class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">수정</a>
												</li>
												<li><a href="#"
													class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">삭제</a>
												</li>
												<li><a href="#"
													class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">신고</a>
												</li>
											</ul>
										</div>
									</footer>
									<p class="text-gray-500 dark:text-gray-400">좋아요</p>
								</article>
							</div>
						</section>
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