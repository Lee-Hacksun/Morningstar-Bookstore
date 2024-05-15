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
<div id="header">
    <div class="fixed top-0 z-50 pt-5 w-full bg-white">
        <div class="mx-auto max-w-[1300px] px-4 sm:px-6 lg:px-8">
            <div class="relative z-50 grid grid-cols-3 gap-4">
                <!-- logo -->
                <div class="flex items-center md:gap-x-12">
                    <a aria-label="Home" href="/">
                        <img class="w-40 mr-2" src="../../img/morningstarlogo.png" alt="logo">
                    </a>
                </div>
                <!-- 로그인 -->
                <div class="flex items-center lg:order-2 col-start-3 justify-end">
                    <a href="#"
                       class="text-gray-600 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-bold  rounded-lg text-md px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">
                        로그인
                    </a>
                    <a href="#"
                       class="text-gray-600 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-bold  rounded-lg text-md px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">
                        회원가입
                    </a>
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
                        <svg class="hidden w-6 h-6" fill="currentColor" viewBox="0 0 20 20"
                             xmlns="http://www.w3.org/2000/svg">
                            <path fill-rule="evenodd"
                                  d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                                  clip-rule="evenodd"></path>
                        </svg>
                    </button>
                </div>
            </div>
        </div>
        <div class="mx-auto mt-5 max-w-[1300px] px-4 sm:px-6 lg:px-8 text-center">
            <div class="flex flex-row justify-between border-b-2 border-gray-200 w-full">
            </div>
        </div>
    </div>
</div>
<section class="bg-white">
    <div class="flex flex-col items-center justify-center mt-24 mb-10 px-6 py-8 mx-auto md:h-screen lg:py-0">
      <div class="w-full bg-white rounded-lg shadow dark:border md:mt-0 sm:max-w-md xl:p-0 dark:bg-gray-800 dark:border-gray-700">
          <div class="p-6 space-y-4 md:space-y-6 sm:p-8">
              <h1 class="text-xl font-bold leading-tight tracking-tight text-gray-900 md:text-2xl dark:text-white">
                  회원가입
              </h1>
              <form class="space-y-4 md:space-y-6" action="#">
                  <div>
                      <label for="name" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">이름</label>
                      <input type="text" name="name" id="name" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" placeholder="이름" required="">
                  </div>
                  <div>
                      <label for="email" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">이메일</label>
                      <input type="email" name="email" id="email" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" placeholder="이메일" required="">
                  </div>
                  <div>
                      <label for="id" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">아이디</label>
                      <input type="text" name="id" id="id" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" placeholder="아이디" required="">
                  </div>
                  <div>
                      <label for="password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">비밀번호</label>
                      <input type="password" name="password" id="password" placeholder="••••••••" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" required="">
                  </div>
                  <div>
                      <label for="confirm-password" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">비밀번호 확인</label>
                      <input type="password" name="confirm-password" id="confirm-password" placeholder="••••••••" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" required="">
                  </div>
                  <div>
                      <label for="address" class="block mb-2 text-sm font-medium text-gray-900 dark:text-white">주소</label>
                      <input type="text" name="address" id="address" class="bg-gray-50 border border-gray-300 text-gray-900 sm:text-sm rounded-lg focus:ring-primary-600 focus:border-primary-600 block w-full p-2.5" placeholder="주소" required="">
                  </div>
                  <button type="submit" class="w-full text-white bg-sky-700 hover:bg-sky-800 focus:ring-4 focus:outline-none focus:ring-primary-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center">회원가입</button>
                  <p class="text-sm font-light text-gray-500 dark:text-gray-400">
                      이미 계정이 있으신가요? <a href="#" class="font-semibold text-sky-700 hover:underline">로그인 ></a>
                  </p>
              </form>
          </div>
      </div>
  </div>
</section>
<div id="footer">
    <footer class="max-w-[1300px] mx-auto border-t border-slate-900/5 bg-white">
        <div class="flex flex-row justify-between mx-auto w-full px-10">
            <div class="float-left mt-7 mb-7">
                <p class="text-gray-500 text-sm font-bold mb-2">
                    한신대학교
                </p>
                <p class="text-gray-500 text-sm font-normal mb-2">
                    6조 | 이승은 이학선 전태준 정민구 정규민
                </p>
                <p class="text-gray-500 text-sm font-normal">
                    Copyright ⓒ 6조
                </p>
            </div>
            <div class="content-center justify-end">
                <img src="https://www.hs.ac.kr/sites/testPub/images/logo.jpg">
            </div>
        </div>
    </footer>
</div>