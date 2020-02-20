<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!-- CSS -->
<style>
#container {
	display: flex;
	justify-content: space-around;
	content-align: center;
}
</style>

<!-- indexControl.jsp에 CONTROL 값과 PAGE_NUM 값을 넘겨줌 -->
<div id="container">
	<div>
		<a
			href="/view/indexControl.jsp?CONTROL=intro&PAGE_NUM=01">
			회사소개 
		</a>
	</div>
	<div>
		<a
			href="/JspStudy_200220/view/indexControl.jsp?CONTROL=product&PAGE_NUM=01">
			제품소개 
		</a>
	</div>
	<div>
		<a
			href="/JspStudy_200220/view/indexControl.jsp?CONTROL=research&PAGE_NUM=01">
			연구개발
		</a>
	</div>
	<div>
		<a
			href="/JspStudy_200220/view/indexControl.jsp?CONTROL=faq&PAGE_NUM=01">
			묻고답하기
		</a>
	</div>
	<div>
		<a
			href="/JspStudy_200220/view/indexControl.jsp?CONTROL=file&PAGE_NUM=01">
			자료실 
		</a>
	</div>
</div>