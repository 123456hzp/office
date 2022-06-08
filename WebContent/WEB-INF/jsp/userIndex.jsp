<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>企业信息管理平台</title> 
	<base href="<%=basePath%>">
	<link rel="stylesheet" href="resource/bootstrap/css/bootstrap.min.css" >    
	<link rel="stylesheet" href="resource/bootstrap/css/bootstrap-theme.min.css">
	<script type="text/javascript" src="resource/lib/jquery-3.1.1.js"></script>
	<script type="text/javascript" src="resource/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="resource/css/wukong-ui.css">
	<link rel="stylesheet" href="bootstrap/css/bootstrap-select.min.css">
    <script type="text/javascript" src="bootstrap/js/bootstrap-select.min.js"></script>
</head>

<body>
    <div class="row">
        <div class="col-lg-12">
            <div class="banner" id="banner"></div>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-12">
            <ul class="nav nav-tabs wk-nav-menu" id="wk-nav-menu">
                <li role="presentation"><a href="javascript:void(0);" id="wk-menu-panel-item-createUserSchedule" class="wk-main-menu-item">新增员工日程</a></li>
                <li role="presentation"><a href="javascript:void(0);" id="wk-menu-panel-item-searchUserSchedule" class="wk-main-menu-item">员工日程查询</a></li>
                <li role="presentation"><a href="javascript:void(0);" id="wk-menu-panel-item-searchMyDoc" class="wk-main-menu-item">我的档案</a></li>
                <li role="presentation"><a href="javascript:void(0);" id="wk-menu-panel-item-searchNewsInfo" class="wk-main-menu-item">公告查询查询</a></li>
                <li role="presentation"><a href="<%=basePath%>logout.html" class="wk-main-menu-item">注销登录</a></li>    
            </ul>
        </div>
    </div>
    
    <div class="row">
        <div class="col-lg-2" id="wk-menu-panel">
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default wk-menu-panel-header">
                        <div class="panel-body wk-menu-panel-body">
                            管理面板 MENU
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel-group wk-accordion-panel-group" id="accordion">
                        
                        
                        <div class="panel panel-info wk-accordion-header">
                            <div class="panel-heading"> 
                                <a data-toggle="collapse" href="#BMenu" data-parent="#accordion">日程管理</a>
                            </div>
                             <div id="BMenu" class="panel-collapse collapse">    
                                <div class="list-group wk-accordion-list-group">
                                    <button type="button" class="list-group-item" id="wk-menu-panel-item-createUserSchedule"> >&nbsp;&nbsp;新增员工日程</button>
                                    <button type="button" class="list-group-item" id="wk-menu-panel-item-searchUserSchedule"> >&nbsp;&nbsp;员工日程查询</button>
                                </div>
                            </div>
                        </div>
                        
                        <div class="panel panel-info wk-accordion-header">
                            <div class="panel-heading">
                                <a data-toggle="collapse" href="#CMenu" data-parent="#accordion">文档管理</a>
                            </div>
                           
                            <div id="CMenu" class="panel-collapse collapse">    
                                <div class="list-group wk-accordion-list-group">
                                    <button type="button" class="list-group-item" id="wk-menu-panel-item-searchMyDoc"> >&nbsp;&nbsp;我的档案</button>
                                </div>
                            </div>

                        </div>
                        
                        <div class="panel panel-info wk-accordion-header">
                            <div class="panel-heading">
                                <a data-toggle="collapse" href="#DMenu" data-parent="#accordion">公告管理</a>
                            </div>
                            <div id="DMenu" class="panel-collapse collapse">    
                                <div class="list-group wk-accordion-list-group">
                                    <button type="button" class="list-group-item" id="wk-menu-panel-item-searchNewsInfo"> >&nbsp;&nbsp;公告查询</button>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        
         <div class="col-lg-10" style="padding:0px;">
            <iframe id="mainFrame" src="" width="100%" frameborder="0" onload="changeFrameHeight()">
            </iframe>
         </div>
    </div>
    
    <script>
        function changeFrameHeight() {
            var ifm= document.getElementById("mainFrame"); 
            ifm.height = document.documentElement.clientHeight - $("#wk-nav-menu").height() - $("#banner").height() - 9;
        }
        window.onresize=function(){  
             changeFrameHeight();  
        } 
        
        changeMenuPanelHeight();
        function changeMenuPanelHeight() {
            var panel= $("#wk-menu-panel"); 
            panel.height(document.documentElement.clientHeight - $("#wk-nav-menu").height() - $("#banner").height() - 3);
            
        }
        window.onresize=function(){  
             changeMenuPanelHeight();  
        } 
        
        
        $(".list-group-item").each(function() {
            $(this).on("click", function() {
                var url = "";
                var id = $(this).attr("id").substr(19, $(this).attr("id").length);
                
                $("#mainFrame").attr("src",  "<%=basePath%>" + id + ".html"); 
            });
        });

        $(".wk-main-menu-item").each(function() {
            $(this).on("click", function() {
                var url = "";
                var id = $(this).attr("id").substr(19, $(this).attr("id").length);
                
                $("#mainFrame").attr("src",  "<%=basePath%>" + id + ".html");  
            });
        });

        

    </script>

</body>
</html>