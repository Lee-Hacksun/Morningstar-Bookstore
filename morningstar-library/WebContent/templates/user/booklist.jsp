<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="lower_banner" class="mb-10 mx-auto max-w-[1300px]">
	<!-- 베스트셀러 -->
	<div class="justify-items-end w-full p-4 space-y-4 mb-10">
		<div class="grid grid-cols-4 gap-4">
			<c:forEach items="${books}" var="book">
				<div class="float-left">
					<div>
						<a href="BookDetail?isbn=${book.isbn}"> <img
							src="${book.bookImageURL}" alt="book cover">
						</a>
						<div>
							<a href="BookDetail?isbn=${book.isbn}">
								<div class="flex flex-col p-3">
									<div>
										<p class="text-left text-xl font-bold">${book.bookName}</p>
									</div>
									<div class="mt-1">
										<p class="text-left text-base">${book.author}·
											${book.publisher}</p>
									</div>
								</div>
							</a>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	<button type="button"
		class="justify-center w-full px-4 text-sky-700 hover:bg-gray-200 border border-sky-700 shadow focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center me-2 mb-2"
		onClick="MoreBook()">더보기(More)
	</button>
		<script>
			function MoreBook() {
				var xhr = new XMLHttpRequest();
				xhr.open("GET", "/MoreBook", true);
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
</div>