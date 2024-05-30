<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<c:choose>
	<c:when test="${sessionScope.isManager == 1}">
		<div id="header">
        <header>
            <div class="bg-white">
                <nav class="bg-white border-b border-gray-200 px-4 py-2.5 fixed left-0 right-0 top-0 z-50">
                    <div class="flex flex-wrap justify-between items-center">
                        <div class="flex justify-start items-center">
                            <a href="admin_index.jsp" class="flex items-center justify-between mr-4">
                                <img class="w-10 mr-3" src="../../assets/icons/morningstarlogo.png" alt="logo">
                                <span class="self-center text-2xl font-semibold whitespace-nowrap">ADMINISTRATOR</span>
                            </a>
                        </div>
                        <div class="flex items-center lg:order-2">
                            <a href="Logout" class="block py-2 px-4 text-sm text-slate-700 font-semibold hover:bg-gray-100">
                                로그아웃</a>
                        </div>
                    </div>
                </nav>
            </div>
        </header>
    </div>
	</c:when>
	<c:when test="${sessionScope.userID != null}">
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
							<a href="GoMyPage"
								class="text-gray-600 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-bold  rounded-lg text-md px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">
								마이페이지 </a> <a href="GoCart"
								class="text-gray-600 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-bold  rounded-lg text-md px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">
								장바구니 </a> <a href="Logout"
								class="text-gray-600 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-bold  rounded-lg text-md px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">
								로그아웃 </a>
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
	</c:when>
	<c:otherwise>
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
							<a href="login.jsp"
								class="text-gray-600 hover:bg-gray-50 focus:ring-4 focus:ring-gray-300 font-bold  rounded-lg text-md px-4 lg:px-5 py-2 lg:py-2.5 mr-2 dark:hover:bg-gray-700 focus:outline-none dark:focus:ring-gray-800">
								로그인 </a> <a href="create_acc.jsp"
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
	</c:otherwise>
</c:choose>