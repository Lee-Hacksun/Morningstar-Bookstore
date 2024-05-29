<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
		<!-- header 불러오기 -->
		<jsp:include page="assets/component/user_header.jsp" />
	
		<div id="content" class="mb-auto p-4 h-auto pt-20">
			<section class="bg-white py-8 antialiased dark:bg-gray-900 md:py-16">
				<div class="mx-auto max-w-screen-xl px-4 2xl:px-0">
					<div class="mx-auto max-w-3xl">
						<h2
							class="text-xl font-semibold text-gray-900 dark:text-white sm:text-2xl">장바구니</h2>

						<div
							class="relative mt-6 overflow-x-auto border-b border-gray-200 dark:border-gray-800 sm:mt-8">
							<table
								class="w-full text-left text-base text-gray-900 dark:text-white md:table-fixed">
								<tbody class="divide-y divide-gray-200 dark:divide-gray-800">
									<!-- 도서 상품 -->
									<c:forEach items="#{cart.books}" var="item">
										<c:set var="book" value="${item.first}" />
										<c:set var="count" value="${item.second}" />
										<c:set var="price" value="${item.third}" />
										<tr>
											<!-- 도서 이미지 -->
											<td class="w-96 min-w-56 whitespace-nowrap py-4"><a
												href="BookDetail?isbn=${book.isbn}"
												class="flex items-center gap-8 font-medium hover:underline">
													<div class="w-20 shrink-0">
														<img class="h-full w-full" src="${book.bookImageURL}"
															alt="imac image" />
													</div> ${book.bookName}
											</a></td>
											<!-- 도서 수량 -->
											<td class="p-4"><label for="counter-input-6"
												class="sr-only">Choose quantity:</label>
												<div class="flex items-center">
													<button type="button" id="decrement-button-1"
														onClick="UpdateDecrement('${cart.userID}', '${book.isbn}', '${count}')"
														data-input-counter-decrement="counter-input-1"
														class="inline-flex h-5 w-5 shrink-0 items-center justify-center rounded-md border border-gray-300 bg-gray-100 hover:bg-gray-200 focus:outline-none focus:ring-2 focus:ring-gray-100 dark:border-gray-600 dark:bg-gray-700 dark:hover:bg-gray-600 dark:focus:ring-gray-700">
														<svg class="h-2.5 w-2.5 text-gray-900 dark:text-white"
															aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
															fill="none" viewBox="0 0 18 2">
                                                <path
																stroke="currentColor" stroke-linecap="round"
																stroke-linejoin="round" stroke-width="2" d="M1 1h16" />
                                            </svg>
													</button>
													<script>
														function UpdateDecrement(userID, isbn, count) {
															var xhr = new XMLHttpRequest();
															var servletUrl = "UpdateCart?isbn=" + isbn + "&userID=" + userID + "&count=" + (parseInt(count) - 1);
															xhr.open("GET", servletUrl, true);
															xhr.onreadystatechange = function() {
																if (xhr.readyState == XMLHttpRequest.DONE) {
																	if (xhr.status == 200) {
																		location.reload();
																	} else {
																		console.error('서버 요청 실패');
																	}
																}
															};
															xhr.send();
														}
													</script>
													<input type="text" id="counter-input-1" data-input-counter
														class="w-10 shrink-0 border-0 bg-transparent text-center text-sm font-medium text-gray-900 focus:outline-none focus:ring-0 dark:text-white"
														placeholder="" value="${count}" required />
													<button type="button" id="increment-button-1"
														onClick="UpdateIncrement('${cart.userID}', '${book.isbn}', '${count}')"
														data-input-counter-increment="counter-input-1"
														class="inline-flex h-5 w-5 shrink-0 items-center justify-center rounded-md border border-gray-300 bg-gray-100 hover:bg-gray-200 focus:outline-none focus:ring-2 focus:ring-gray-100 dark:border-gray-600 dark:bg-gray-700 dark:hover:bg-gray-600 dark:focus:ring-gray-700">
														<svg class="h-2.5 w-2.5 text-gray-900 dark:text-white"
															aria-hidden="true" xmlns="http://www.w3.org/2000/svg"
															fill="none" viewBox="0 0 18 18">
                                                <path
																stroke="currentColor" stroke-linecap="round"
																stroke-linejoin="round" stroke-width="2"
																d="M9 1v16M1 9h16" />
                                            </svg>
													</button>
													<script>
														function UpdateIncrement(userID, isbn, count) {
															var xhr = new XMLHttpRequest();
															var servletUrl = "UpdateCart?isbn=" + isbn + "&userID=" + userID + "&count=" + (parseInt(count) + 1);
															xhr.open("GET", servletUrl, true);
															xhr.onreadystatechange = function() {
																if (xhr.readyState == XMLHttpRequest.DONE) {
																	if (xhr.status == 200) {
																		location.reload();
																	} else {
																		console.error('서버 요청 실패');
																	}
																}
															};
															xhr.send();
														}
													</script>
												</div></td>
											<!-- 도서 가격 -->
											<td
												class="p-4 text-end text-base font-bold text-gray-900 dark:text-white">
												<fmt:formatNumber var="formattedPrice" value='${price}'
													type='currency' currencyCode='KRW' maxFractionDigits="0" />
												<c:out value="${formattedPrice}" />
											</td>
											<!-- 도서 삭제 -->
											<td class="py-4">
												<button data-tooltip-target="remove-tooltip"
													onClick="RemoveBook('${cart.userID}', '${book.isbn}')"
													data-tooltip-placement="top" type="button"
													class="ml-auto block rounded-lg p-2 text-gray-500 hover:bg-gray-100 dark:hover:bg-gray-700 hover:text-gray-900 dark:text-gray-400">
													<span class="sr-only"> Remove </span>
													<svg class="h-5 w-5" aria-hidden="true"
														xmlns="http://www.w3.org/2000/svg" width="24" height="24"
														fill="none" viewBox="0 0 24 24">
                                            <path stroke="currentColor"
															stroke-linecap="round" stroke-linejoin="round"
															stroke-width="2"
															d="M5 7h14m-9 3v8m4-8v8M10 3h4a1 1 0 0 1 1 1v3H9V4a1 1 0 0 1 1-1ZM6 7h12v13a1 1 0 0 1-1 1H7a1 1 0 0 1-1-1V7Z" />
                                        </svg>
												</button> <script>
													function RemoveBook(userID, isbn) {
														var xhr = new XMLHttpRequest();
														var servletUrl = "RemoveBookCart?isbn=" + isbn + "&userID=" + userID;
														xhr.open("GET", servletUrl, true);
														xhr.onreadystatechange = function() {
															if (xhr.readyState == XMLHttpRequest.DONE) {
																if (xhr.status == 200) {
																	alert("장바구니에서 도서가 삭제되었습니다.");
																	location.reload();

																} else {
																	console.error('서버 요청 실패');
																}
															}
														};
														xhr.send();
													}
												</script>
												<div id="remove-tooltip" role="tooltip"
													class="tooltip invisible absolute z-10 inline-block rounded-lg bg-gray-900 px-3 py-2 text-sm font-medium text-white opacity-0 shadow-sm dark:bg-gray-700">
													Remove
													<div class="tooltip-arrow" data-popper-arrow></div>
												</div>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>

						<div class="mt-8">
							<p class="text-xl font-semibold text-gray-900 dark:text-white">주문
								정보</p>

							<div class="mt-6 space-y-4">
								<div class="space-y-2">
									<dl class="flex items-center justify-between gap-4">
										<dt
											class="text-base font-normal text-gray-500 dark:text-gray-400">총
											상품가격</dt>
										<dd
											class="text-base font-medium text-gray-900 dark:text-white">
											<fmt:formatNumber var="formattedTotal"
												value='${cart.totalAmount}' type='currency'
												currencyCode='KRW' maxFractionDigits="0" />
											<c:out value="${formattedTotal}" />
										</dd>
									</dl>

									<dl class="flex items-center justify-between gap-4">
										<dt
											class="text-base font-normal text-gray-500 dark:text-gray-400">배송비</dt>
										<dd
											class="text-base font-medium text-gray-900 dark:text-white">
											<fmt:formatNumber var="formattedShipping" value="${3000}"
												type="currency" currencyCode="KRW" maxFractionDigits="0" />
											<c:out value="${formattedShipping}" />
										</dd>
									</dl>
								</div>

								<dl
									class="flex items-center justify-between gap-4 border-t border-gray-200 pt-4 dark:border-gray-700">
									<dt class="text-base font-bold text-gray-900 dark:text-white">총
										결제금액</dt>
									<dd class="text-base font-bold text-gray-900 dark:text-white">
										<fmt:formatNumber var="formattedTotalWithShipping"
											value="${cart.totalAmount + 3000}" type="currency"
											currencyCode="KRW" maxFractionDigits="0" />
										<c:out value="${formattedTotalWithShipping}" />
									</dd>
								</dl>
							</div>
						</div>

						<div class="mt-6 gap-4 sm:flex sm:items-center sm:justify-center">
							<a href="ViewBook"
								class="w-full flex rounded-lg border border-gray-200 bg-white px-5 py-2.5 justify-center text-sm font-medium text-gray-900 hover:bg-gray-100 hover:text-primary-700 focus:z-10 focus:outline-none focus:ring-4 focus:ring-gray-100">쇼핑
								계속하기</a>
							<button type="button"
								onClick="AddOrder()"
								class="mt-4 flex w-full items-center justify-center rounded-lg bg-sky-700 px-5 py-2.5 text-sm font-medium text-white hover:bg-sky-800 focus:outline-none focus:ring-4 focus:ring-primary-300 sm:mt-0">
								바로구매</button>
							<script>
								function AddOrder() {
									var xhr = new XMLHttpRequest();
									var servletUrl = 'AddOrder';
									xhr.open("GET", servletUrl, true);
									xhr.onreadystatechange = function() {
										if (xhr.readyState == XMLHttpRequest.DONE) {
											if (xhr.status == 200) {
												alert("주문이 정상적으로 처리되었습니다.");
												window.location.href = "/ViewBook";
											} else {
												console.error('서버 요청 실패');
											}
										}
									};
									xhr.send();
								}
								</script>
						</div>
					</div>
				</div>
			</section>
		</div>
		<!-- footer 불러오기 -->
	<jsp:include page="assets/component/footer.jsp" />
	</div>
</body>
</html>