<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="forumdata/cache/cache_icons.jsp"/>
<jsp:include page="forumdata/cache/cache_faqs.jsp"/>
<jsp:include page="forumdata/cache/cache_forumdisplay.jsp"/>
<jsp:include page="forumdata/cache/usergroup_${jsprun_groupid}.jsp"/>
<c:if test="${jsprun_uid==0||settings.frameon>0}"><c:set var="referer" value="${pageContext.request.requestURI}?${pageContext.request.queryString}" scope="request"/></c:if>
<c:set var="filter" value="${param.filter}" scope="request"/>
<jsp:forward page="/forumdisplay.do"/>