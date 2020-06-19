<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">   
		<meta name="viewport" content="width=device-width, initial-scale=1">   
		<meta name="Author" content="Dreamer-1.">
		
		<!-- 引入各种CSS样式表 -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.css">
	    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">	<!-- 修改自Bootstrap官方Demon，你可以按自己的喜好制定CSS样式 -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-change.css">	<!-- 将默认字体从宋体换成微软雅黑（个人比较喜欢微软雅黑，移动端和桌面端显示效果比较接近） -->		
		
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.3.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<style>
		h2 {text-align:center;color:blue;}
		h3 {text-align:center;color:red;}
		</style>
		<title>ZHY Electronic Operation and Maintenance / Inspection System</title>
	</head>
	
	<body>
	<!-- 顶部菜单（来自bootstrap官方Demon）==================================== -->
		<nav class="navbar navbar-inverse navbar-fixed-top">
      		<div class="container">
        		<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" >
		            	<span class="sr-only">Toggle navigation</span>
		            	<span class="icon-bar"></span>
		            	<span class="icon-bar"></span>
		            	<span class="icon-bar"></span>
					</button>
	          		<a class="navbar-brand" href="AdminMain.jsp">管理员系统</a>
        		</div>
        		
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a><i></i>Welcome,</a></li>	
						<li class="dropdown pull-right"><a href="#" data-toggle="dropdown" class="dropdown-toggle">xiaojm<strong class="caret"></strong></a>
						<ul class="dropdown-menu">
						<li>
						<a type="button" class="btn" data-toggle="modal" data-target="#myModal0">修改密码</a>
						</li>
						<li class="divider"></li>
						<li><a id="row-action-delect" class="btn" href="MainLogin.jsp">退出登录</a></li>
						</ul>
						</li>
					</ul>
        		</div>
      		</div>
    	</nav>
    	<!-- 模态框Model -->
    	<div class="modal fade" id="myModal0" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    	<div class="modal-dialog" role="document">
    	<div class="modal-content">
    	<div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">修改密码</h4>
        </div>
        <div class="modal-body">
        <form name="editForm">
                        <div class="form-group">
                            <label for="recipient-name">原密码：</label>
                            <input type="password" id="oldpassword" class="form-control" name="oldpassword" required placeholder="原密码">
                            <div style="display: inline" id="tip1"></div>
                        </div>
                        <div class="form-group">
                            <label for="message-text">新密码：</label>
                            <input type='password' id="password1" name="password1" class="form-control" required placeholder="长度为: 6-18">
                            <div style="display: inline" id="tip2"></div>
                        </div>
                        <div class="form-group">
                            <label for="message-text">确认密码：</label>
                            <input type='password' id="password2" name="password2" class="form-control" required placeholder="请再次输入新密码">
                            <div style="display: inline" id="tip3"></div>
                        </div>
                    </form>
        </div>
        <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>   
        </div>
        </div>
        </div>
        </div>

	<!-- 左侧菜单选项========================================= -->
		<div class="container-fluid">
			<div class="row-fluie">
				<div class="col-sm-3 col-md-2 sidebar">		
					<ul class="nav nav-sidebar">
						<!-- 一级菜单 -->
						<li class="active"><a href="#userMeun" class="nav-header menu-first collapsed" data-toggle="collapse">
							<i class="fa fa-user"></i>&nbsp; 用户管理 <span class="sr-only">(current)</span></a>
						</li> 
						<ul id="userMeun" class="nav nav-list collapse menu-second">
							<li><a href="###" onclick="showAtRight('UserList.jsp')"><i class="fa fa-users"></i> 用户列表</a></li>
						</ul>
						 
						<li><a href="#productMeun" class="nav-header menu-first collapsed" data-toggle="collapse">
							<i class="fa fa-globe"></i>&nbsp; 巡检/SOP管理 <span class="sr-only">(current)</span></a>
						</li> 
						<ul id="productMeun" class="nav nav-list collapse menu-second">
							<li><a href="###" onclick="showAtRight('xunjian1.jsp')"><i class="fa fa-list-alt"></i> 巡检</a></li>
							<li><a href="###" onclick="showAtRight('sop.jsp')"><i class="fa fa-list-alt"></i> SOP/MOP</a></li>
						</ul>
						
						<li><a href="#recordMeun" class="nav-header menu-first collapsed" data-toggle="collapse">
							<i class="fa fa-file-text"></i>&nbsp; 记录管理 <span class="sr-only">(current)</span></a>
						</li> 
						<ul id="recordMeun" class="nav nav-list collapse menu-second">
							<li><a href="###" onclick="showAtRight('recordList.jsp')" ><i class="fa fa-list"></i> log</a></li>
						</ul>
							
					</ul>
					
				</div>
			</div>
		</div>

<!-- 右侧内容展示==================================================   -->   		
 				<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
					<h1 class="page-header"><i class="fa fa-cog fa-spin"></i>&nbsp;<strong>&nbsp;&nbsp;&nbsp;ZHY电子化巡检系统管理员系统</strong></h1>
						
						<!-- 载入左侧菜单指向的jsp（或html等）页面内容 -->
          				<div id="content">
          				<br>
          				<br>
          				<br>
          				<br>
          				<br>
          				<br>
       						<h2><strong>ZHY巡检与SOP线上平台管理员系统</strong></h2>
       						<div class="panel panel-primary">
       						<div class="panel-heading">
       						<h2 class="panel-title"></h2>
       						</div>
       						<div class="panel-body">
       						<h3><strong>欢迎登录ZHY巡检与SOP线上平台管理员系统，如有用户信息、巡检信息、SOP信息增改请转至各个部分，谢谢！</strong></h3>
       						</div>
       						</div>
          				</div>  
				</div> 
		
		
		<script type="text/javascript">
		
		/*
		 * 对选中的标签激活active状态，对先前处于active状态但之后未被选中的标签取消active
		 * （实现左侧菜单中的标签点击后变色的效果）
		 */
		$(document).ready(function () {
			$('ul.nav > li').click(function (e) {
				//e.preventDefault();	加上这句则导航的<a>标签会失效
				$('ul.nav > li').removeClass('active');
				$(this).addClass('active');
			});
		});
		
		/*
		 * 解决ajax返回的页面中含有javascript的办法：
		 * 把xmlHttp.responseText中的脚本都抽取出来，不管AJAX加载的HTML包含多少个脚本块，我们对找出来的脚本块都调用eval方法执行它即可
		 */
		function executeScript(html)
		{
		    
			var reg = /<script[^>]*>([^\x00]+)$/i;
		    //对整段HTML片段按<\/script>拆分
		    var htmlBlock = html.split("<\/script>");
		    for (var i in htmlBlock) 
		    {
		        var blocks;//匹配正则表达式的内容数组，blocks[1]就是真正的一段脚本内容，因为前面reg定义我们用了括号进行了捕获分组
		        if (blocks = htmlBlock[i].match(reg)) 
		        {
		            //清除可能存在的注释标记，对于注释结尾-->可以忽略处理，eval一样能正常工作
		            var code = blocks[1].replace(/<!--/, '');
		            try 
		            {
		                eval(code) //执行脚本
		            } 
		            catch (e) 
		            {
		            }
		        }
		    }
		}
		
		/*
		 * 利用div实现左边点击右边显示的效果（以id="content"的div进行内容展示）
		 * 注意：
		 *   ①：js获取网页的地址，是根据当前网页来相对获取的，不会识别根目录；
		 *   ②：如果右边加载的内容显示页里面有css，必须放在主页（即例中的index.jsp）才起作用
		 *   （如果单纯的两个页面之间include，子页面的css和js在子页面是可以执行的。 主页面也可以调用子页面的js。但这时要考虑页面中js和渲染的先后顺序 ）
		*/
		function showAtRight(url) {
			var xmlHttp;
			
			if (window.XMLHttpRequest) {
				// code for IE7+, Firefox, Chrome, Opera, Safari
				xmlHttp=new XMLHttpRequest();	//创建 XMLHttpRequest对象
			}
			else {
				// code for IE6, IE5
				xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
		
			xmlHttp.onreadystatechange=function() {		
				//onreadystatechange — 当readystate变化时调用后面的方法
				
				if (xmlHttp.readyState == 4) {
					//xmlHttp.readyState == 4	——	finished downloading response
					
					if (xmlHttp.status == 200) {
						//xmlHttp.status == 200		——	服务器反馈正常			
						
						document.getElementById("content").innerHTML=xmlHttp.responseText;	//重设页面中id="content"的div里的内容
						executeScript(xmlHttp.responseText);	//执行从服务器返回的页面内容里包含的JavaScript函数
					}
					//错误状态处理
					else if (xmlHttp.status == 404){
						alert("出错了☹   （错误代码：404 Not Found），……！"); 
						/* 对404的处理 */
						return;
					}
					else if (xmlHttp.status == 403) {  
						alert("出错了☹   （错误代码：403 Forbidden），……"); 
						/* 对403的处理  */ 
						return;
			        }
					else {
						alert("出错了☹   （错误代码：" + request.status + "），……"); 
						/* 对出现了其他错误代码所示错误的处理   */
						return;
					}   
				} 
		            
			  }
			
			//把请求发送到服务器上的指定文件（url指向的文件）进行处理
			xmlHttp.open("GET", url, true);		//true表示异步处理
			xmlHttp.send();
		}		
		</script>
		
	
	</body>
</html>