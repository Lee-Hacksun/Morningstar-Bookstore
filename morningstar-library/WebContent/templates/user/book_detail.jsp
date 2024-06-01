<!-- 
 TODO : 미완성
 - 리뷰 기능 구현
-->


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko" class="h-full scroll-smooth">
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta charset="UTF-8">
<meta name="viewport" content="width=1280">
<script src="https://cdn.tailwindcss.com"></script>
<script src="https://unpkg.com/flowbite@1.5.3/dist/flowbite.js"></script>
<title>샛별문고</title>
</head>
<body>
	<div class="flex flex-col h-screen justify-between">
		<c:import url="header.jsp" />
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
												<button type="button"
													onClick="AddCart('${sessionScope.userID}', '${book.isbn}', false)"
													class="w-auto items-center justify-center py-3 px-5 text-md font-semibold text-gray-700 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-primary-700 focus:z-10">
													장바구니</button>
											</form>
											<form>
												<button type="button"
													onClick="AddCart('${sessionScope.userID}', '${book.isbn}', true)"
													class="w-auto items-center justify-center rounded-md border border-sky-700 bg-sky-700 px-5 py-3 shadow text-md font-semibold text-white hover:bg-sky-800 focus:outline-none focus:ring-offset-2">
													바로구매</button>
											</form>
											<script>
											function AddCart(userID, isbn, isRedirect) {
												if(userID == "") {
													alert("로그인 후 이용 가능한 서비스 입니다.");
												} else {
													var xhr = new XMLHttpRequest();
													var servletUrl = 'AddCart?isbn=' + isbn + '&isRedirect=' + isRedirect;
													xhr.open("GET", servletUrl, true);
													xhr.onreadystatechange = function() {
														if (xhr.readyState == XMLHttpRequest.DONE) {
															if (xhr.status == 200) {
																if(isRedirect == true) {
																	window.location.href = "/GoCart?userID=" + userID;
																} else {
																	alert("장바구니에서 도서가 추가되었습니다.");
																}
															} else {
																console.error('서버 요청 실패');
															}
														}
													};
													xhr.send();	
												}
											}
											</script>
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
											<span class="num"></span>
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
									</h2>
								</div>
								<c:if test="${userID != null}">
								<form class="mb-6" action="AddReview" method="post">
									<div class="py-2 px-4 mb-4 bg-white rounded-lg rounded-t-lg border border-gray-200 dark:bg-gray-800 dark:border-gray-700">
										<input type="hidden" name="userID" value="${userID}">
    									<input type="hidden" name="isbn" value="${book.isbn}">
										<label for="comment" class="sr-only">Your comment</label>
										<textarea id="comment" name="comment" rows="6"
											class="px-0 w-full text-sm text-gray-900 border-0 focus:ring-0 focus:outline-none dark:text-white dark:placeholder-gray-400 dark:bg-gray-800"
											placeholder="리뷰를 작성해 주세요..." required></textarea>
										<div id="ratingStars" class="flex">
                							<button type="button" class="text-gray-400 text-2xl mr-1" onclick="setRating(1)"><i class="fas fa-star"></i></button>
                							<button type="button" class="text-gray-400 text-2xl mr-1" onclick="setRating(2)"><i class="fas fa-star"></i></button>
                							<button type="button" class="text-gray-400 text-2xl mr-1" onclick="setRating(3)"><i class="fas fa-star"></i></button>
                							<button type="button" class="text-gray-400 text-2xl mr-1" onclick="setRating(4)"><i class="fas fa-star"></i></button>
                							<button type="button" class="text-gray-400 text-2xl mr-1" onclick="setRating(5)"><i class="fas fa-star"></i></button>
                							<button type="button" class="text-gray-400 text-2xl mr-1" onclick="setRating(6)"><i class="fas fa-star"></i></button>
                							<button type="button" class="text-gray-400 text-2xl mr-1" onclick="setRating(7)"><i class="fas fa-star"></i></button>
               								<button type="button" class="text-gray-400 text-2xl mr-1" onclick="setRating(8)"><i class="fas fa-star"></i></button>
                							<button type="button" class="text-gray-400 text-2xl mr-1" onclick="setRating(9)"><i class="fas fa-star"></i></button>
                							<button type="button" class="text-gray-400 text-2xl mr-1" onclick="setRating(10)"><i class="fas fa-star"></i></button>
            							</div>
            							<input type="hidden" id="rating" name="rating">
										</div>
											<button type="submit"
												class="inline-flex items-center py-2.5 px-4 text-sm font-medium text-center text-white bg-sky-700 rounded-lg hover:bg-sky-800">
												리뷰작성
											</button>
								</form>
								</c:if>
								<script>
        							function setRating(rating) {
            							document.getElementById("rating").value = rating;
            							highlightStars(rating); 
        							}

							        function highlightStars(rating) {
            							const stars = document.querySelectorAll("#ratingStars button");
            							stars.forEach((star, index) => {
                							if (index < rating) {
                    							star.classList.add("text-yellow-400");
                							} else {
	                    						star.classList.remove("text-yellow-400");
    	            						}
        	    						});
        							}
								
							        document.getElementById("ratingForm").addEventListener("submit", function(event) {
            						event.preventDefault(); 

						            var rating = document.getElementById("rating").value;
							        });
    							</script>
								<c:forEach items="${reviews}" var="review" varStatus="status">
    								<article class="p-6 text-base bg-white rounded-lg dark:bg-gray-900">
        								<footer class="flex justify-between items-center mb-2">
            								<div class="flex items-center">
                								<p class="inline-flex items-center mr-3 text-sm text-gray-900 dark:text-white font-semibold">${review.userID}</p>
                								<p class="mr-3 text-sm text-gray-600 dark:text-gray-400">
                    								<time pubdate datetime="${review.date}" title="${review.date}">${review.date}</time>
                								</p>
                								<div class="flex items-center">
                    								<span class="text-yellow-500">
                        								<c:forEach var="i" begin="1" end="${review.rating / 2}">
                            								<i class="fas fa-star"></i>
                        								</c:forEach>
                        								<c:if test="${review.rating % 2 != 0}">
                            								<i class="fas fa-star-half-alt"></i>
                        								</c:if>
                        								<c:forEach var="i" begin="1" end="${5 - (review.rating / 2) - (review.rating % 2 != 0 ? 1 : 0)}">
                            								<i class="far fa-star"></i>
                        								</c:forEach>
                    								</span>
                    								<span class="text-gray-600 dark:text-gray-400 ml-2">(${review.rating})</span>
                								</div>
            								</div>
            								<button id="dropdownCommentButton${status.index}"
                								data-dropdown-toggle="dropdownComment${status.index}"
                								class="inline-flex items-center p-2 text-sm font-medium text-center text-gray-500 bg-white rounded-lg hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-50"
                								type="button">
                							<svg class="w-4 h-4" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 16 3">
                    							<path d="M2 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3Zm6.041 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3ZM14 0a1.5 1.5 0 1 1 0 3 1.5 1.5 0 0 1 0-3Z" />
                							</svg>
                							<span class="sr-only">Comment settings</span>
            								</button>
            								<!-- Dropdown menu -->
            								<div id="dropdownComment${status.index}"
                								class="hidden z-10 w-36 bg-white rounded divide-y divide-gray-100 shadow dark:bg-gray-700 dark:divide-gray-600">
                								<ul class="py-1 text-sm text-gray-700 dark:text-gray-200" aria-labelledby="dropdownCommentButton${status.index}">
                								<c:if test="${userID == review.userID}">
                    							<li>
                        							<a onclick="showEditForm()" class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white">
    													수정
													</a>
                        							<script>
    													function showEditForm() {
        												document.getElementById('editFormContainer').style.display = 'block';
    													}
													</script>
                    							</li>
                    							<li>
                        							<a href="/DeleteReview?userID=${userID}&isbn=${review.isbn}" class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white" onClick="return alert('리뷰가 삭제되었습니다.');">삭제</a>
                    							</li>
                    							</c:if>
                    							<c:if test="${userID != review.userID}">
                    							<li>
                        							<a href="#" class="block py-2 px-4 hover:bg-gray-100 dark:hover:bg-gray-600 dark:hover:text-white" onclick="return alert('악플이 성공적으로 신고되었습니다. 신속히 검토하겠습니다.');">신고</a>
                    							</li>
                    							</c:if>
                								</ul>
            								</div>
        								</footer>
        							<p class="text-gray-500 dark:text-gray-400">${review.contents}</p>
        							<div id="editFormContainer" style="display: none;">
    									<form id="editForm" action="UpdateReview" method="post">
    										<input type="hidden" name="userID" value="${userID}">
    										<input type="hidden" name="isbn" value="${review.isbn}">
        									<textarea name="editedContent" id="editedContent" rows="4" class="block w-full px-4 py-2 mt-2 text-sm border border-gray-300 rounded-md resize-none focus:outline-none focus:border-blue-500" placeholder="내용을 입력하세요"></textarea>
        									<button type="submit" class="mt-2 px-4 py-2 text-sm font-medium text-white bg-blue-500 hover:bg-blue-600 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-opacity-50" onClick="return alert('리뷰가 수정되었습니다.');">
            								수정 완료
        									</button>
    									</form>
									</div>
    							</article>
						</c:forEach>
					</div>
					</section>
				</div>
			</div>
		</div>
		<c:import url="header.jsp" />
	</div>
</body>
</html>