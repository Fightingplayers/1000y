

showTopHtml = function ()
{
	var html = '';
	html += '<style>';
	html += '.header { background:url(logimg/topbg.gif) repeat-x; width:100%; height:78px;}';
	html += '.header_box { width:1000px; margin:0 auto;}';
	html += '.header_left { float:left; width:450px; height:78px; background:url(logimg/topbgt.gif) no-repeat right;}';
	html += '.header_logo { float:left; width:195px; padding-top:16px;}';
	html += '.header_about { float:left; color:#676363; height:28px; line-height:22px; background:url(logimg/www.gif) no-repeat left bottom; padding-top:27px;}';
	html += '.header_right { float:left; width:550px; line-height:22px;}';
	html += '.header_right a { padding:0 4px;}';
	html += '.header_url { width:544px; color:#858484; padding:8px 0; text-align:right; padding-right:6px;}';
	html += '.header_login { width:550px; color:#181818;}';
	html += '.header_login li { float:left; padding-left:4px;}';
	html += '.header_input {border:1px solid #E8E3E9;  background:url(logimg/in_bg.gif) repeat-x top; padding:2px;}';
	html += '.nav { width:100%; height:35px; background:url(logimg/nav_b.gif) repeat-x;}';
	html += '.nav_box { width:1000px; margin:0 auto;}';
	html += '.nav_box li { float:left;}';
	html += '.nav_box a{ display:block; width:121px; height:35px; text-decoration:none; text-align:center; font-weight:bold; font-size:14px; line-height:35px;}';
	html += '.nav_on a:link,.nav_on a:visited{color:#4d4b4b; background:url(logimg/nav_c.gif) no-repeat bottom center;}';
	html += '.nav_on a:hover,.nav_on a:active{color:#920000; text-decoration:none;}';
	html += '.nav_off a:link,.nav_off a:visited{color:#FFF; background:url(logimg/nav_a.gif) no-repeat left 1px; }';
	html += '.nav_off a:hover,.nav_off a:active{color:#FFF; background:url(logimg/nav_d.gif) no-repeat left top; text-decoration:none;}';
	html += '</style>';

	html += '	<div class="header">' ;
	html += '		<div class="header_box">' ;
	html += '			<div class="header_left">' ;
	html += '				<div class="header_logo"><img src="logimg/logo.gif" border="0" alt="账号管理中心" /></div>' ;
		html += '				<div class="header_about">玩网络游戏 交知心朋友</div>' ;
	html += '			</div>' ;
	html += '			<div class="header_right">' ;
	html += '				<div class="header_url shi_a"></div>' ;
	html += '				<div class="header_login" id="login_form">' ;
	html += '					公告：欢迎大家进入...' ;
	html += '				</div>' ;
	html += '			</div>' ;
	html += '		</div>' ;
	html += '	</div>' ;
	html += '	<div class="nav">' ;
	html += '		<div class="nav_box">' ;
	html += '			<ul id="top_navi">' ;

	html += '				<li class="nav_off" id="top_navi_05"><a href="http://www.1000y.cc/Id/index.htm">注册首页</a></li>' ;
	html += '				<li class="nav_on" id="top_navi_1"><a href="regaccount.asp">账号注册</a></li>' ;
	html += '				<li class="nav_off" id="top_navi_2"><a href="mpw.asp">修改密码</a></li>' ;
	html += '				<li class="nav_off" id="top_navi_3"><a href="findpw.asp">找回密码</a></li>' ;
	html += '				<li class="nav_off" id="top_navi_4"><a href="#">客服中心</a></li>' ;

	html += '			</ul>' ;
	html += '		</div>' ;
	html += '	</div>' ;
	document.write ( html );

	if ( typeof ( topNaviIndex ) == 'undefined' ) topNaviIndex = 0;
	topNaviIndex = parseInt ( topNaviIndex );
	if ( !isNaN ( topNaviIndex ) )
	{
		// var naviMenus = document.getElementById( 'top_navi' ).getElementsByTagName ( 'li' );
		// naviMenus[topNaviIndex].className = 'nav_on';
		var navObj = document.getElementById ( 'top_navi_' + topNaviIndex );
		if ( navObj ) navObj.className = 'nav_on';
	}	
}


showTopHtml ();
var passportTokenCookie = getCookie ( 'passportTokenCookie' );
if ( passportTokenCookie )
{
	initLoginForm ( passportTokenCookie );
}
else
{
	
}