<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../public/sidebar_jh.jsp" %>

	<div class="w3-container">
		<div class="fixedTop_div"></div>
		<font class="large_jh"> 1:1 문의 </font>
		<hr class="title_hr">
		<!-- CONTENT -->
		
		<!-- 검색 -->
		<div class="cont_mar">
		
		<!-- TITLE -->
			<div class="medium_jh">
			
				<form action="mentorInquery" method="POST">
				
				<input type="hidden" name="ref_post_no" value="0"> 
				<input type="hidden" name="ref_step" value="0"> 
			  	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
					
					<div class="infoTitle" style="margin-top: 200px;">
					    <input class="mentor_info" type="text" id="title" name="title" style="width: 100%; text-align: center; margin-bottom: 20px;" value="일대일 문의합니다" readOnly>
					    <textarea class="mentor_info" id="content" name="content" style="width: 100%; height: 200px;" required></textarea>
					</div>
					  
					  <div align="center">
					    <input class="btn_jh" type="submit" value="작성">
					    <button type="button" class="btn_jh" onclick="mentorInqueryListPage?&page=${page}&mentor_no=${msel.mentor_no}&member_no=${msel.member_no}">목록</button>
					  </div>
					  
				</form>
		</div>

		</div>
	<!-- CONTENT end -->
	</div>

<%@ include file="../public/sidebar_footer.jsp" %>
