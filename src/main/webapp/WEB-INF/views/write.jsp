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
	<link rel="stylesheet" href="common/css/library.css" />
	<link rel="stylesheet" href="common/css/write.css" />
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
	<!-- //desktop & tablet -->
	<!-- mobile -->
	<header class="header header--mobile">
		<!-- mobile hamburger menu -->
		<!-- <a href="#" class="header__link" data-js="aside__toggle">
			<i class="fas fa-bars fa-2x"></i>
			<span class="hidden">메뉴</span>
		</a> -->
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
	</header>
	<!-- //mobile -->
<!-- //header -->

<!-- contents -->
<div class="contents">
	<form class="form" method="post" action="write.do">
		<div class="input input__text">
			<input type="text" name="id" placeholder="ID" class="input" required />
		</div>
		<div class="input input__text">
			<input type="text" name="subject" placeholder="SUBJECT" class="input" required />
		</div>
		<div class="input input__textarea">
		    <textarea name="description" placeholder="DESCRIPTION" class="input" required></textarea>
		</div>
		<div class="input input__textarea">
		    <textarea name="code" placeholder="CODE" class="input"></textarea>
		</div>
		<div class="input input__btn">	
		    <button name="submit" class="btn" type="submit">작성</button>
		</div>
	</form>
</div>
<!-- //contents -->

<!-- scripts -->
	<!-- login -->
	<div class="remodal" data-remodal-id="login">
		<a data-remodal-action="close" class="remodal-close"></a>
		<div class="modal__head">
			<h1>로그인</h1>
		</div>
		<div class="modal__body">
			<form action="login.do" method="post" id="login">
				<div class="input__item">
					<input type="text" name="email" id="email" placeholder="이메일주소" />
				</div>
				<div class="input__item">
					<input type="password" name="pwd" id="pwd" placeholder="비밀번호" />
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
			<form action="register.do" method="post" id="register" onsubmit="return validate();">
				<div class="input__item">
					<input type="text" name="email" id="email" placeholder="이메일주소" />
				</div>
				<div class="input__item">
					<input type="password" name="pwd" id="pwd" placeholder="비밀번호" />
				</div>
				<div class="input__item">
					<input type="password" name="pwdConfirm" id="pwdConfirm" placeholder="비밀번호확인" />
				</div>
			</form>
		</div>
		<div class="modal__footer">
			<button data-remodal-action="confirm" class="remodal-confirm" type="button">확인</button>
		</div>
	</div>
	<!-- //register -->

	<!-- common -->
	<script src="common/js/jquery.js"></script>
	<script type="text/javascript">
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
<!-- scripts -->
</body>
</html>