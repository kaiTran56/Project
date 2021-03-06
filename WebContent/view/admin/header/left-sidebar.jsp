<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<c:url value = "/view/admin/assets" var="url"/>
    <div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true">
      <div class="brand-logo">
        <a href="${pageContext.request.contextPath}/admin/homepage">
          <img src="${url}/images/logo-icon.png" class="logo-icon" alt="logo icon">
          <h5 class="logo-text">Online Shop</h5>
        </a>
      </div>
      <ul class="sidebar-menu do-nicescrol">
        <li class="sidebar-header">MENU</li>
        <li>
          <a href="${pageContext.request.contextPath}/admin/homepage">
            <i class="zmdi zmdi-view-dashboard"></i> <span>Overall</span>
          </a>
        </li>
        
         <li>
          <a href="${pageContext.request.contextPath}/admin/admin/list">
            <i class="zmdi zmdi-account-box"></i> <span>Manage Admin</span>
          </a>
        </li>
        <li>
          <a href="${pageContext.request.contextPath}/admin/user/list">
            <i class="zmdi zmdi-accounts"></i> <span>Manage User</span>
          </a>
        </li>
        <li>
          <a href="${pageContext.request.contextPath}/admin/cate/list">
            <i class="zmdi zmdi-grid"></i> <span>Topic</span>
          </a>
        </li>
        <li>
          <a href="${pageContext.request.contextPath}/admin/product/list">
            <i class="zmdi zmdi-widgets"></i> <span>List Products</span>
          </a>
        </li>
        <li>
          <a href="${pageContext.request.contextPath}/admin/order/list">
            <i class="zmdi zmdi-shopping-cart"></i> <span>Orders</span>
          </a>
        </li>
        
        <li>
          <a href="${pageContext.request.contextPath}/admin/order/list-detail">
            <i class="zmdi zmdi-shopping-cart"></i> <span>Details Orders</span>
          </a>
        </li>
        <li>
          <a href="${pageContext.request.contextPath}/admin/review/list">
            <i class="zmdi zmdi-calendar-check"></i> <span>Review</span>
          </a>   
        </li>
        <li>
          <a href="${pageContext.request.contextPath}/admin/new/list">
            <i class="icon-envelope-open"></i> <span>News</span>
          </a>
        </li>
      </ul>
    </div>