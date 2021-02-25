<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="description" content="박영후(Peachy Park)의 포트폴리오" />
	<meta name="author" content="Peachy">
	<meta name="keywords" content="html,html5,css,css3,javascript,jquery,mobile app,nodejs,java,자바" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
	<meta name="msapplication-TileImage" content="//i2.wp.com/ui-lab.co.kr/wp-content/uploads/2016/07/cropped-ui-lab_favicon_B02-1.png?fit=270%2C270" />
	<link rel="icon" href="http://peachhhhyyyy.dothome.co.kr/common/img/favicon.ico" sizes="32x32" />
	<link rel="icon" href="http://peachhhhyyyy.dothome.co.kr/common/img/favicon.ico" sizes="192x192" />
	<link rel="apple-touch-icon-precomposed" href="http://peachhhhyyyy.dothome.co.kr/common/img/favicon.ico" />
	<link rel="stylesheet" href="common/css/global.css" />
	<link rel="stylesheet" href="common/css/library.css">
	<!-- syntax highlighter -->
	<link type="text/css" rel="stylesheet" href="common/lib/syntaxhighlighter/styles/shCoreDefault.css">
	<link type="text/css" rel="stylesheet" href="common/lib/syntaxhighlighter/styles/shThemeDefault.css">
	<!-- //syntax highlighter -->
	<!-- fontawesome -->
	<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css?ver=4.8.5" id="font-awesome-css" media="all" />
	<!-- //fontawesome -->
	<title>Peachy &#124; Beginning</title>
</head>
<body>
<!-- header -->
	<!-- desktop & tablet -->
	<header class="header">
		<a href="index.do" class="header__link" target="_self">
			<h1 class="header__title">BEGINNING</h1>
		</a>
		<div class="header__contact">
		    <c:choose>
				<c:when test="${empty loginPassUser}">
				    <a class="header__link login" href="javascript:void(0);" data-remodal-target="login">
						<i class="fas fa-sign-in-alt"></i>
						<span class="hidden">로그인</span>
					</a>
				</c:when>
			    <c:otherwise>
					<c:if test="${loginPassUser.email eq 'pyhoo78@naver.com'}">
					<a class="header__link write" href="write.do">
						<i class="fas fa-pencil-alt"></i>
						<span class="hidden">글쓰기</span>
					</a>
					</c:if>
					<a class="header__link logout" href="logout.do">
						<i class="fas fa-sign-out-alt"></i>
						<span class="hidden">로그아웃</span>
					</a>
			    </c:otherwise>
		  	</c:choose>
			<a class="header__link register" href="javascript:void(0);" data-remodal-target="register">
				<i class="fas fa-user-plus"></i>
				<span class="hidden">회원가입</span>
			</a>
			<a class="header__link fullscreen" href="javascript:void(0);" onclick="toggleFullScreen();">
				<i class="fas fa-expand"></i>
				<span class="hidden">확대</span>
			</a>
			<a class="header__link tel" href="tel:010-2406-4423">
				<i class="fas fa-phone"></i>
				<span class="hidden">전화</span>
			</a>
			<a class="header__link mail" href="mailto:peachhhhyyyy@gmail.com">
				<i class="far fa-envelope"></i>
				<span class="hidden">메일</span>
			</a>
		</div>
	</header>
	<aside class="aside">
		<nav class="gnb" data-js="gnb__toggle">
			<h2 class="gnb__title">JAVA</h2>
			<c:forEach items="${list}" var="list">
			<a class="gnb__item" href="#${list.id}" target="_self">${list.subject}</a>
			</c:forEach>
		</nav>
	</aside>
	<!-- //desktop & tablet -->
	<!-- mobile -->
	<header class="header header--mobile">
		<!-- mobile hamburger menu -->
		<a href="#" class="header__link" data-js="aside__toggle">
			<i class="fas fa-bars fa-2x"></i>
			<span class="hidden">메뉴</span>
		</a>
		<!-- //mobile hamburger menu -->
		<div class="header__contact">
			<c:choose>
				<c:when test="${empty loginPassUser}">
				    <a class="header__link" href="javascript:void(0);" data-remodal-target="login">
						<i class="fas fa-sign-in-alt fa-2x"></i>
						<span class="hidden">로그인</span>
					</a>
				</c:when>
			    <c:otherwise>
			    	<c:if test="${loginPassUser.email eq 'pyhoo78@naver.com'}">
					<a class="header__link write" href="write.do">
					   <i class="fas fa-pencil-alt fa-2x"></i>
					   <span class="hidden">글쓰기</span>
					</a>
					</c:if>
					<a class="header__link logout" href="logout.do">
						<i class="fas fa-sign-out-alt fa-2x"></i>
						<span class="hidden">로그아웃</span>
					</a>
			    </c:otherwise>
		  	</c:choose>
			<a class="header__link" href="javascript:void(0);" data-remodal-target="register">
				<i class="fas fa-user-plus fa-2x"></i>
				<span class="hidden">회원가입</span>
			</a>
			<a class="header__link" href="tel:010-2406-4423">
				<i class="fas fa-phone fa-2x"></i>
				<span class="hidden">전화</span>
			</a>
			<a class="header__link" href="mailto:peachhhhyyyy@gmail.com">
				<i class="far fa-envelope fa-2x"></i>
				<span class="hidden">메일</span>
			</a>
		</div>
		<aside class="aside aside--mobile">
			<nav class="gnb" data-js="gnb__toggle">
				<h2 class="gnb__title">JAVA</h2>
				<c:forEach items="${list}" var="list">
				<a class="gnb__item" href="#${list.id}" target="_self">${list.subject}</a>
				</c:forEach>
			</nav>
		</aside>
	</header>
	<!-- //mobile -->
<!-- //header -->

<!-- contents -->
<div class="contents">
	<!-- section -->
	<c:forEach items="${list}" var="list">
	<section class="components" id="${list.id}">
		<h1 class="components__title components__title--emphasized">${list.subject}</h1>
		<c:if test="${loginPassUser.email eq 'pyhoo78@naver.com'}">
		<a href="update.do?seq=${list.seq}" class="components__button edit">
			<i class="far fa-edit"></i>
			<span class="hidden">수정</span>
		</a>
		<a href="del.do?seq=${list.seq}" class="components__button del">
			<i class="far fa-minus-square"></i>
			<span class="hidden">삭제</span>
		</a>
		</c:if>
		<section class="components__item">
			<!-- DEMO -->
			<h3 class="components__title">DESCRIPTION</h3>
			<section class="components__item--demo">
				<p class="components__content">${list.description}</p>
			</section>
			<!-- //DEMO -->

			<!-- CODE -->
			<h3 class="components__title">CODE</h3>
			<section class="components__item--code">
				<pre class="brush: java">${list.code}</pre>
			</section>
			<!-- //CODE -->
		</section>
	</section>
	</c:forEach>
	<!-- //section -->
</div>
<!-- //contents -->

<!-- scripts -->
	<!-- login -->
	<div class="remodal" data-remodal-id="login">
		<a data-remodal-action="close" class="remodal-close"></a>
		<div class="modal__head">
			<h1>로그인</h1>
			<!-- <button data-remodal-target="resetpassword" class="password" type="button">RESET PASSWORD</button> -->
		</div>
		<div class="modal__body">
			<form action="login.do" method="post" id="login">
				<div class="input__item">
					<input type="text" name="email" id="loginEmail" placeholder="이메일주소" />
				</div>
				<div class="input__item">
					<input type="password" name="pwd" id="loginPwd" placeholder="비밀번호" />
				</div>
			</form>
		</div>
		<div class="modal__footer">
			<button data-remodal-action="confirm" class="remodal-confirm" type="button">확인</button>
		</div>
	</div>
	<!-- //login -->
	
	<!-- register -->
	<div class="remodal" data-remodal-id="register">
		<a data-remodal-action="close" class="remodal-close"></a>
		<div class="modal__head">
			<h1>회원가입</h1>
		</div>
		<div class="modal__body">
			<form action="register.do" method="post" id="register">
				<div class="input__item">
					<input type="text" name="email" id="registerEmail" placeholder="이메일주소" />
				</div>
				<div class="input__item">
					<input type="password" name="pwd" id="registerPwd" placeholder="비밀번호" />
				</div>
			</form>
		</div>
		<div class="modal__footer">
			<button data-remodal-action="confirm" class="remodal-confirm" type="button">확인</button>
		</div>
	</div>
	<!-- //register -->

	<!-- resetpassword -->
	<div class="remodal reset-password" data-remodal-id="resetpassword" style="max-width:710px;">
		<a data-remodal-action="close" class="remodal-close"></a>
		<div class="modal__head">
			<h1>비밀번호 초기화</h1>
		</div>
		<div class="modal__body">
			<p class="desc">비밀번호를 초기화할 이메일 주소를 입력 후<br>[인증코드 발송] 버튼을 클릭하세요.</p>
			<form action="password.do" method="post" id="resetPassword">
				<div class="input__item">
					<input type="text" name="email" id="userEmail" placeholder="이메일주소" />
					<button type="button" class="button">인증코드 발송</button>
				</div>
				<div class="input__item">
					<input type="text" name="code" id="userCode" placeholder="인증코드" />
					<button type="button" class="button">비밀번호 초기화</button>
				</div>
			</form>
		</div>
		<div class="modal__footer">
			<button data-remodal-action="confirm" class="remodal-confirm" type="button">확인</button>
		</div>
	</div>
	<!-- //resetpassword -->

	<!-- common -->
	<script src="common/js/jquery.js"></script>
	<script type="text/javascript">
	// page moves
/* 	if (window.location == 'http://118.67.131.103:8080/') {
		window.location.href='http://118.67.131.103:8080/index.do';
	} */
	
	// login
	$("[data-remodal-id=login] .remodal-confirm").click(function(e) {
		e.preventDefault();
		$('#login')[0].submit();
	});
	
	// register
	$("[data-remodal-id=register] .remodal-confirm").click(function(e) {
		e.preventDefault();
		$('#register')[0].submit();
	});
	
	// fullscreen
	function toggleFullScreen() {
		if ((document.fullScreenElement && document.fullScreenElement !== null) ||
			(!document.mozFullScreen && !document.webkitIsFullScreen)) {
			if (document.documentElement.requestFullScreen) {
				document.documentElement.requestFullScreen();
			} else if (document.documentElement.mozRequestFullScreen) {
				document.documentElement.mozRequestFullScreen();
			} else if (document.documentElement.webkitRequestFullScreen) {
				document.documentElement.webkitRequestFullScreen(Element.ALLOW_KEYBOARD_INPUT);
			}
		} else {
			if (document.cancelFullScreen) {
				document.cancelFullScreen();
			} else if (document.mozCancelFullScreen) {
				document.mozCancelFullScreen();
			} else if (document.webkitCancelFullScreen) {
				document.webkitCancelFullScreen();
			}
		}
	}

	// basic toggle
    function basicToggle(self, activeClass) {
        var _self = self;
        var actC = activeClass;
        _self.toggleClass(actC);
    }

	window.addEventListener('DOMContentLoaded', function(){
		// jquery execution
	    $(function() {
            // scroll gnb active
            $(window).on('scroll', function(){
                var scroll = $(window).scrollTop();
                var components = $('.components');
                var gnb = $('[data-js=gnb__toggle] > a');

                $.each(components, function(index){
                    var target = components.eq(index);
                    var targetTop = target.offset().top - 120;

                    if (targetTop <= scroll) {
                        gnb.removeClass('is-scroll');
                        gnb.eq(index).addClass('is-scroll');
                    }
                    if (scroll == ($(document).height() - $(window).height())) {
                        var gnbNum = gnb.length / 2;

                        gnb.removeClass('is-scroll');
                        gnb.eq(gnbNum-1).addClass('is-scroll');
                    }
                });

                // click gnb item
                gnb.on('click', function(e){
                    e.preventDefault();

                    var gnb = $(this);
                    var gnbTarget = gnb.attr('href');
                    var gnbTargetTop = $(gnbTarget).offset().top;

                    $('html, body').stop().animate({
                        scrollTop : gnbTargetTop - 120
                    }, 500);
                    gnb.addClass('is-active').siblings().removeClass('is-active');
                });
            });

            // mobile menu active
            function mobileAction(){
				var deviceWidth = $('body').width();
                var $aside = $('.aside--mobile');

                if(deviceWidth <= 767){
                    $('[data-js=aside__toggle]').on('click', function(e) {
                        e.preventDefault();
                        basicToggle($aside, 'is-active');
                    });
                } else {
                    return false;
                }
				if($(window).resize === true) {
					location.reload();
				}
            }
            mobileAction();
        });
	});
	</script>

	<!-- modal -->
	<script src="common/js/remodal.js"></script>
	<!-- //modal -->

	<!-- syntax Highlighter -->
	<script type="text/javascript" src="common/lib/syntaxhighlighter/js/shCore.js"></script>
	<script type="text/javascript" src="common/lib/syntaxhighlighter/js/shBrushCss.js"></script>
	<script type="text/javascript" src="common/lib/syntaxhighlighter/js/shBrushJScript.js"></script>
	<script type="text/javascript" src="common/lib/syntaxhighlighter/js/shBrushXml.js"></script>
	<script type="text/javascript" src="common/lib/syntaxhighlighter/js/shBrushJava.js"></script>
	<script type="text/javascript">
		SyntaxHighlighter.all();
	</script>
	<!-- //syntax Highlighter -->
<!-- scripts -->
</body>
</html>