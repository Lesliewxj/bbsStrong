<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<jsp:include flush="true" page="space_header.jsp" />
<div class="outer">
	<table class="main" border="0" cellspacing="0">
		<tr>
			<td id="main_layout0">
				<jsp:include flush="true" page="space_module_userinfo.jsp" />
			</td>
			<td id="main_layout1">
				<table class="module" cellpadding="0" cellspacing="0" border="0">
					<tr>
						<td class="header"> <div class="title"> <bean:message key="thread_reward"/> </div> </td>
					</tr>
					<tr>
						<td>
							<div id="module_myrewards">
								<table cellspacing="0" cellpadding="0" width="100%">
									<tr class="list_category">
										<td class="subject"> <bean:message key="subject"/> </td>
										<td class="forum"> <bean:message key="forum_name"/> </td>
										<td class="price"> <bean:message key="memcp_reward_total"/> </td>
									</tr>
									<c:forEach items="${myreward}" var="threads">
										<tr>
										<td class="subject"><a href="viewthread.jsp?tid=${threads.tid}" target="_blank">${threads.subjcet}</a></td>
										<td class="forum"><a href="forumdisplay.jsp?fid=${threads.fid}" target="_blank">${threads.forums}</a></td>
										<td class="price">
											${threads.rewards}
										</td>
									</tr>
									</c:forEach>
								</table>
								<div class="line"></div>
										
						<c:if test="${logpage.totalSize > 10}">
							<div class="p_bar">
								<a class="p_total">&nbsp;${logpage.totalSize}&nbsp;</a>
								<a class="p_pages">&nbsp;${logpage.currentPage}/${logpage.totalPage}&nbsp;</a>
								
								<c:if test="${logpage.totalPage>10 && logpage.currentPage>=4}">
									<a href="space.jsp?action=myrewards&uid=${member.uid}&amp;page=1" class="p_pages">1 ...</a>
								</c:if>
								
								<c:if test="${logpage.currentPage != logpage.prePage}">
									<a href="space.jsp?action=myrewards&uid=${member.uid}&amp;page=${logpage.prePage}" class="p_redirect">&lsaquo;&lsaquo;</a>
								</c:if>
								<c:choose>
									<c:when test="${logpage.totalPage>10 && logpage.currentPage>=4 && logpage.totalPage-(logpage.currentPage-2)>=10}">
										
										<c:forEach var="num" begin="${logpage.currentPage-2}" end="${(logpage.currentPage-2)+9}" step="1">
											<c:choose>
												<c:when test="${logpage.currentPage == num}">
													<a class="p_curpage">${logpage.currentPage}</a>
												</c:when>
												<c:otherwise>
													<a href="space.jsp?action=myrewards&uid=${member.uid}&amp;page=${num}" class="p_num">${num}</a>
												</c:otherwise>
											</c:choose>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<c:choose>
											<c:when test="${logpage.totalPage>10 && logpage.currentPage>=4}">
												
												<c:forEach var="num" begin="${logpage.totalPage-9}" end="${logpage.totalPage}" step="1">
													<c:choose>
														<c:when test="${logpage.currentPage == num}"> <a class="p_curpage">${logpage.currentPage}</a> </c:when>
														<c:otherwise>
															<a href="space.jsp?action=myrewards&uid=${member.uid}&amp;page=${num}" class="p_num">${num}</a>
														</c:otherwise>
													</c:choose>
												</c:forEach>
											</c:when>
											<c:otherwise>
												<c:choose>
													<c:when test="${logpage.totalPage>10}">
													
														<c:forEach var="num" begin="1" end="10" step="1">
															<c:choose>
																<c:when test="${logpage.currentPage == num}">
																	<a class="p_curpage">${logpage.currentPage}</a>
																</c:when>
																<c:otherwise>
																	<a href="space.jsp?action=myrewards&uid=${member.uid}&amp;page=${num}" class="p_num">${num}</a>
																</c:otherwise>
															</c:choose>
														</c:forEach>
													</c:when>
													<c:otherwise>
													
														<c:forEach var="num" begin="1" end="${logpage.totalPage}" step="1">
															<c:choose>
																<c:when test="${logpage.currentPage == num}">
																	<a class="p_curpage">${logpage.currentPage}</a>
																</c:when>
																<c:otherwise>
																	<a href="space.jsp?action=myrewards&uid=${member.uid}&amp;page=${num}" class="p_num">${num}</a>
																</c:otherwise>
															</c:choose>
														</c:forEach>
													</c:otherwise>
												</c:choose>
											</c:otherwise>
										</c:choose>
									</c:otherwise>
								</c:choose>
								
								<c:if test="${logpage.currentPage != logpage.nextPage}">
									<a href="space.jsp?action=myrewards&uid=${member.uid}&amp;page=${logpage.nextPage}" class="p_redirect">&rsaquo;&rsaquo;</a>
								</c:if>
								
								<c:if test="${logpage.totalPage>10 && (logpage.totalPage-logpage.currentPage)>7}">
									<a href="space.jsp?action=myrewards&uid=${member.uid}&amp;page=${logpage.totalPage}" class="p_pages">... ${logpage.totalPage}</a>
								</c:if>
								
								<c:if test="${logpage.totalPage>10}">
									<kbd>
									<input type="text" name="custompage" size="3"  onkeydown="if(event.keyCode==13) {window.location='space.jsp?action=myrewards&uid=${member.uid}&amp;page='+this.value; return false;}" />
								</kbd>
								</c:if>
						</c:if>
			
							</div>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>
</div>
<jsp:include flush="true" page="space_footer.jsp" />
