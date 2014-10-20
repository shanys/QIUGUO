<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="head.jsp"%>
<!--==============================content================================-->
	<section id="content"><div class="ic">More Website Templates @ <a href="http://www.cssmoban.com/" >网页模板</a> - Mrach 03, 2012!</div>
		<div class="main">
			<h4 id="title">
				<span class="on">用户管理</span>
			</h4>
			<div id="con">
				<!-- 用户管理 -->
				<ul class="on">
					<li>
						<a href="add-user.html"><input type="button" class="btn" value="添加" style="width:150px;"></a>
						<a href="#"><img src="images/search.png" style="float:right;margin-right: 10px;"></a>
						<input type="text" class="txt">
						
					</li>
					<li>
						<!--<a href="#" >链接</a>
						
						<select class="select">
							<option>1</option>
							<option selected="selected">2</option>
							<option>3</option>
						</select>
					--></li>
					<table class="table">
						<tr class="table_header">
							<td>ID</td>
							<td>用户名</td>
							<td>联系方式</td>
							<td>角色</td>
							<td>操作</td>
						</tr>
						<c:forEach items="${users}" var="u" varStatus="s">						
						
								<tr class="row${s.index%2+1} }">
									<td>${u.id }</td>
									<td>${u.username }</td>
									<td>${u.tele }</td>
									<td>${u.role }</td>
									<td><a href="user.do?method=delete&id=${u.id}&userPage=${userPage}"
									onclick="return confirm('delete ${u.username} ?')">删除</a>&nbsp;
									<!--  <a href="user.do?method=update&id=${u.id}%>">修改</a>-->
									&nbsp;<a href="user.do?method=detail&userId=${u.id}&page=1 ">历史登录信息</a>
									</td>
								</tr>
						</c:forEach>
						<tr  align="center">
						<td colspan="5" align="center"">
								<c:choose>
								<c:when test="${userPage>1}">
									<a href="user.do?method=list&userPage=${userPage-1 }">上一页</a>
								</c:when>
								<c:otherwise>
									上一页
								</c:otherwise>
							</c:choose>
							
								&nbsp;&nbsp;第${userPage}页&nbsp
							<c:choose>
								<c:when test="${userPage<userTotalPages}">
								<a href="user.do?method=list&userPage=${userPage+1 }">下一页</a>
								</c:when>
								<c:otherwise>下一页</c:otherwise>
							</c:choose>
							
							&nbsp;&nbsp;共${userTotalPages }页
						</td>
						</tr>
					</table>
					
				</ul>
				<!-- 任务管理 -->
				<ul>
					<li>
						<a href="add-work.html"><input type="button" class="btn" value="添加" style="width:150px;"></a>
						<img src="images/search.png" style="float:right;margin-right: 10px;">
						<!-- <input type="text" class="txt"> -->
							<select class="txt" style=" width:130px; height:20px;">
								<option>1</option>
								<option selected="selected">2</option>
								<option>3</option>
							</select>
						<!-- </input> -->
						<!-- <img src="images/search.png" style="float:right;margin-right: 10px;">
						<input type="text" class="txt" style=" width:128px;"> -->
					</li>
					<table class="table">
						<tr class="table_header">
							<td>ID</td>
							<td>项目名称</td>
							<td>项目时间</td>
							<td>项目人员</td>
							<td>操作</td>
						</tr>
						<c:forEach items="${ts}" var="t" varStatus="s">						
						
								<tr class="row${s.index%2+1} }">
									<td>${t.id }</td>
									<td>${t.tname }</td>
									<td>${t.ttime }</td>
									<td>${t.people }</td>
									<td>
									&nbsp;<a href="task.do?method=list&taskPage=1 ">详细信息</a>
									</td>
								</tr>
						</c:forEach>
						<tr  align="center">
						<td colspan="5" align="center"">
								<c:choose>
								<c:when test="${taskPage>1}">
									<a href="task.do?method=list&taskPage=${taskPage-1 }">上一页</a>
								</c:when>
								<c:otherwise>
									上一页
								</c:otherwise>
							</c:choose>
							
								&nbsp;&nbsp;第${taskPage}页&nbsp
							<c:choose>
								<c:when test="${taskPage<taskTotalPages}">
								<a href="task.do?method=list&taskPage=${taskPage+1 }">下一页</a>
								</c:when>
								<c:otherwise>下一页</c:otherwise>
							</c:choose>
							
							&nbsp;&nbsp;共${taskTotalPages }页
						</td>
						</tr>
					</table>
					
				</ul>
				<!-- 库存管理 -->
				<ul>
					<li>
						<!-- <a href="add-type.html"><input type="button" class="btn" value="添加种类" style="width:150px;"></a> -->
						<a href="add-stock.html"><input type="button" class="btn" value="添加" style="width:150px;"></a>
						<img src="images/search.png" style="float:right;margin-right: 10px;">
						<input type="text" class="txt">
					</li>
					<table class="table">
						<tr class="table_header">
							<td>ID</td>
							<td>名称</td>
							<td>种类</td>
							<td>描述</td>
							<td>操作</td>
						</tr>
						<c:forEach items="${ss}" var="stock" varStatus="s">						
						
								<tr class="row${s.index%2+1} }">
									<td>${stock.id }</td>
									<td>${stock.gname }</td>
									<td>${stock.gtype }</td>
									<td>${stock.gnote }</td>
									<td><a href="stock.do?method=delete&id=${stock.id}&stockPage=${stockPage}"
									onclick="return confirm('delete ${stock.gname} ?')">删除</a>&nbsp;
				
									</td>
								</tr>
						</c:forEach>
						<tr  align="center">
						<td colspan="5" align="center"">
								<c:choose>
								<c:when test="${stockPage>1}">
									<a href="stock.do?method=list&stockPage=${stockPage-1 }">上一页</a>
								</c:when>
								<c:otherwise>
									上一页
								</c:otherwise>
							</c:choose>
							
								&nbsp;&nbsp;第${stockPage}页&nbsp
							<c:choose>
								<c:when test="${stockPage<stockTotalPages}">
								<a href="stock.do?method=list&stockPage=${stockPage+1 }">下一页</a>
								</c:when>
								<c:otherwise>下一页</c:otherwise>
							</c:choose>
							
							&nbsp;&nbsp;共${stockTotalPages }页
						</td>
						</tr>
					</table>
				</ul>
			</div>
		</div>
	</section>
	
	<!--==============================footer=================================-->
	<%@include file="footer.jsp"%>