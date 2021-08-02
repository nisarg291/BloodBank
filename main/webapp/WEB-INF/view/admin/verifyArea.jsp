<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
[
<c:forEach items="${areaList}" var="i">
{
	"aid":${i.aid},
	"areaName":"${i.areaName}"
},
</c:forEach>
{
}
]