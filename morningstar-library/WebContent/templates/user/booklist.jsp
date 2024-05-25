<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	<div id="lower_banner" class="mb-10 mx-auto max-w-[1300px]">
		<!-- 베스트셀러 -->
		<div class="justify-items-end w-full p-4">
			<div class="grid grid-cols-4 gap-4">
				<c:forEach items="${books}" var="book">
					<div class="float-left">
						<div>
							<a href="BookDetail?isbn=${book.isbn}"> 
							<img src="${book.bookImageURL}" alt="book cover">
							</a>
							<div>
								<a href="/products/">
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
	</div>
</body>
</html>