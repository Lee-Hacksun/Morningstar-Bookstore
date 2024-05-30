<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <c:import url="header.jsp" />

    <section class="bg-white">
        <div class="flex flex-col items-center justify-center px-6 py-8 mx-auto md:h-screen lg:py-0">
            <div class="w-full bg-white rounded-lg shadow dark:border md:mt-0 sm:max-w-md xl:p-0 dark:bg-gray-800 dark:border-gray-700">
                <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
                    <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white">
                        발주
                    </h1>
                    <form class="space-y-4 md:space-y-6" action="/AddManagerOrder" method="POST">
                        <div>
                            <label for="name"
                                   class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">ISBN</label>
                            <input type="text" name="isbn" id="isbn"
                                   class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"
                                   placeholder="ISBN" required="">
                        </div>
                        <div>
                            <label for="author"
                                   class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">저자</label>
                            <input type="text" name="author" id="author"
                                   class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"
                                   placeholder="저자" required="">
                        </div>
                        <div>
                            <label for="amount"
                                   class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">수량</label>
                            <input type="number" name="amount" id="amount"
                                   class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"
                                   placeholder="1" required="">
                        </div>
                        <div>
                            <label for="date"
                                   class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">발주일</label>
                            <input type="date" name="date" id="date"
                                   class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5"
                                   placeholder="" required="">
                        </div>
                        <div class="text-right">
                            <button type="submit"
                                    class="w-auto text-white bg-sky-700 hover:bg-sky-800 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">
                                발주
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <c:import url="footer.jsp" />
</div>
</body>
</html>