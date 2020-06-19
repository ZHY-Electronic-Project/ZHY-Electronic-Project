<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>用户界面</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!-- <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.3.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css"> -->
</head>
<body>
    <nav class="navbar navbar-inverse ">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="UserMain.jsp">用户后台</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a><i></i>Welcome,</a></li>	
						<li class="dropdown pull-right"><a href="#" data-toggle="dropdown" class="dropdown-toggle">xiaojm<strong class="caret"></strong></a>
						<ul class="dropdown-menu">
						<li class="divider"></li>
						<li><a id="row-action-delect" class="btn" href="MainLogin.jsp">退出登录</a></li>
						</ul>
						</li>
					</ul>
        		</div>
      </div>
    </nav>
    <div class="container-fluid">
      <div class="row-fluid">
        <div class="span12">
          <div class="alert alert-success">
             <h2 class="text-center">ZHY电子化巡检系统后台管理(巡检/SOP)</h2>
          </div>
          <div class="col-md-2 col-sm-3">
            <!-- 修改二级目录，tag-*是二级目录的编号，增加删除，需要更改下面panel-*-->
            <ul id="myTab" class="nav nav-pills nav-stacked">
              <li class="active">
                <a href="#header" data-toggle="tab">
                  <i class="glyphicon glyphicon-align-justify"></i>&nbsp; 名称：POD</a>
              </li>
              <li><a href="#tag-1" data-toggle="tab">
                <i class="glyphicon glyphicon-tag"></i> POD1</a>
              </li>             
              <li><a href="#tag-2" data-toggle="tab">
                <i class="glyphicon glyphicon-tag"></i> POD2</a>
              </li>
              <li><a href="#tag-3" data-toggle="tab">
                <i class="glyphicon glyphicon-tag"></i> POD3</a>
              </li>              
              <li><a href="#tag-4" data-toggle="tab">
                <i class="glyphicon glyphicon-tag"></i> POD4</a>
              </li>
            </ul>
            </div>
            <div class="col-md-10 col-sm-9">
            <div id="myTabContent" class="tab-content">
              <div class="tab-pane fade in active" id="header">
                  <div id="content">
                    <div class="alert alert-info">
                      <h4 class="text-center">
                        <strong>开始POD间的巡检</strong></h4>
                   </div>
                    <ol>
                     <h4>
                      <li class="text-left demical">请在巡检开始之前，再次确认已穿好必要的安全装置</li>
                      <li class="text-left">请携带巡检所需要的工具， 手电筒，对讲机</li> 
                     </h4>
                    </ol>       						
                  </div> 
              </div>
              <!-- 修改三级目录de 名称即可，如果 -->
              <div class="tab-pane fade" id="tag-1">
                <div class="alert alert-info">
                  <h4 class="text-center">POD1巡检</h4>
               </div>
                <ul class="nav nav-pills nav-justified">
                  <li class="active"><a href="#panel-1-1" data-toggle="pill" contenteditable="false">RPP柜</a></li>
                  <li><a href="#panel-1-2" data-toggle="pill" contenteditable="false">送风机</a></li>
                  <li><a href="#panel-1-3" data-toggle="pill" contenteditable="false">TF风机 </a></li>
                  <li><a href="#panel-1-4" data-toggle="pill" contenteditable="false">ATS</a></li>
                  <li><a href="#panel-1-5" data-toggle="pill" contenteditable="false">环境</a></li>
                </ul>
               <div class="tab-content">
                <div class="tab-pane fade in active" id="panel-1-1">
                  <div class="jumbotron well">
                    <p>
                      内容：照明，热风通道密封性，天花板，桥架，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      标准：照明无损坏，热风通道密封良好，天花板无脱落/无变形，桥架破损，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      结果：
                    </p>
                    <p>
                       <a class="btn btn-primary btn-success" href="#">Pass</a>
                       <a class="btn btn-primary btn-danger" href="#">Fail</a>
                    </p> 
                    <form class="bs-example bs-example-form" role="form">
                      <div class="input-group">
                          <span class="input-group-addon">备注:</span>
                          <input type="text" class="form-control" placeholder="请输入备注文本">
                      </div>
                   </form>
                  </div>
                  <div class=" btn-group col-md-12" >
                    <button id="save-btn" type="submit" class="btn btn-primary prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-plus"></span>	
                      保存
                    </button>
                  </div>
                </div>
                <div class="tab-pane fade" id="panel-1-2">
                  <div class="jumbotron well">
                    <p>
                      内容：照明，热风通道密封性，天花板，桥架，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      标准：照明无损坏，热风通道密封良好，天花板无脱落/无变形，桥架破损，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      结果：
                    </p>
                    <p>
                       <a class="btn btn-primary btn-success" href="#">Pass</a>
                       <a class="btn btn-primary btn-danger" href="#">Fail</a>
                    </p> 
                    <form class="bs-example bs-example-form" role="form">
                      <div class="input-group">
                          <span class="input-group-addon">备注:</span>
                          <input type="text" class="form-control" placeholder="请输入备注文本">
                      </div>
                   </form>
                  </div>
                  <div class=" btn-group col-md-12" >
                    <button id="save-btn" type="submit" class="btn btn-primary prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-plus"></span>	
                      保存
                    </button>
                  </div>
                </div>
                <div class="tab-pane fade" id="panel-1-3">
                  <div class="jumbotron well">
                    <p>
                      内容：照明，热风通道密封性，天花板，桥架，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      标准：照明无损坏，热风通道密封良好，天花板无脱落/无变形，桥架破损，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      结果：
                    </p>
                    <p>
                       <a class="btn btn-primary btn-success" href="#">Pass</a>
                       <a class="btn btn-primary btn-danger" href="#">Fail</a>
                    </p> 
                    <form class="bs-example bs-example-form" role="form">
                      <div class="input-group">
                          <span class="input-group-addon">备注:</span>
                          <input type="text" class="form-control" placeholder="请输入备注文本">
                      </div>
                   </form>
                  </div>
                  <div class=" btn-group col-md-12" >
                    <button id="save-btn" type="submit" class="btn btn-primary prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-plus"></span>	
                      保存
                    </button>
                  </div>
                </div>
                <div class="tab-pane fade" id="panel-1-4">
                  <div class="jumbotron well">
                    <p>
                      内容：照明，热风通道密封性，天花板，桥架，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      标准：照明无损坏，热风通道密封良好，天花板无脱落/无变形，桥架破损，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      结果：
                    </p>
                    <p>
                       <a class="btn btn-primary btn-success" href="#">Pass</a>
                       <a class="btn btn-primary btn-danger" href="#">Fail</a>
                    </p> 
                    <form class="bs-example bs-example-form" role="form">
                      <div class="input-group">
                          <span class="input-group-addon">备注:</span>
                          <input type="text" class="form-control" placeholder="请输入备注文本">
                      </div>
                   </form>
                  </div>
                  <div class=" btn-group col-md-12" >
                    <button id="POD4-save-btn" type="submit" class="btn btn-primary prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-plus"></span>	
                      保存
                    </button>
                  </div>
                </div> 
                <div class="tab-pane fade" id="panel-1-5">
                  <div class="jumbotron well">
                    <p>
                      内容：照明，热风通道密封性，天花板，桥架，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      标准：照明无损坏，热风通道密封良好，天花板无脱落/无变形，桥架破损，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      结果：
                    </p>
                    <p>
                       <a class="btn btn-primary btn-success" href="#">Pass</a>
                       <a class="btn btn-primary btn-danger" href="#">Fail</a>
                    </p> 
                    <form class="bs-example bs-example-form" role="form">
                      <div class="input-group">
                          <span class="input-group-addon">备注:</span>
                          <input type="text" class="form-control" placeholder="请输入备注文本">
                      </div>
                   </form>
                  </div>
                  <div class=" btn-group col-md-12" >
                    <button id="POD4-save-btn" type="submit" class="btn btn-primary prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-plus"></span>	
                      保存
                    </button>
                    <button id="POD4-submit-btn" type="button" class="btn btn-success prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-arrow-up"></span>	
                      提交
                    </button>
                  </div>
                </div>
               </div>
              </div>
              <div class="tab-pane fade" id="tag-2">
                <div class="alert alert-info">
                  <h4 class="text-center">POD2巡检</h4>
               </div>
                <ul class="nav nav-pills nav-justified">
                  <li class="active"><a href="#panel-2-1" data-toggle="pill" contenteditable="false">RPP柜</a></li>
                  <li><a href="#panel-2-2" data-toggle="pill" contenteditable="false">送风机</a></li>
                  <li><a href="#panel-2-3" data-toggle="pill" contenteditable="false">TF风机 </a></li>
                  <li><a href="#panel-2-4" data-toggle="pill" contenteditable="false">ATS</a></li>
                  <li><a href="#panel-2-5" data-toggle="pill" contenteditable="false">环境</a></li>
                </ul>
               <div class="tab-content">
                <div class="tab-pane fade in active" id="panel-2-1">
                  <div class="jumbotron well">
                    <p>
                      内容：照明，热风通道密封性，天花板，桥架，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      标准：照明无损坏，热风通道密封良好，天花板无脱落/无变形，桥架破损，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      结果：
                    </p>
                    <p>
                       <a class="btn btn-primary btn-success" href="#">Pass</a>
                       <a class="btn btn-primary btn-danger" href="#">Fail</a>
                    </p> 
                    <form class="bs-example bs-example-form" role="form">
                      <div class="input-group">
                          <span class="input-group-addon">备注:</span>
                          <input type="text" class="form-control" placeholder="请输入备注文本">
                      </div>
                   </form>
                  </div>
                  <div class=" btn-group col-md-12" >
                    <button id="save-btn" type="submit" class="btn btn-primary prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-plus"></span>	
                      保存
                    </button>
                  </div>
                </div>
                <div class="tab-pane fade" id="panel-2-2">
                  <div class="jumbotron well">
                    <p>
                      内容：照明，热风通道密封性，天花板，桥架，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      标准：照明无损坏，热风通道密封良好，天花板无脱落/无变形，桥架破损，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      结果：
                    </p>
                    <p>
                       <a class="btn btn-primary btn-success" href="#">Pass</a>
                       <a class="btn btn-primary btn-danger" href="#">Fail</a>
                    </p> 
                    <form class="bs-example bs-example-form" role="form">
                      <div class="input-group">
                          <span class="input-group-addon">备注:</span>
                          <input type="text" class="form-control" placeholder="请输入备注文本">
                      </div>
                   </form>
                  </div>
                  <div class=" btn-group col-md-12" >
                    <button id="save-btn" type="submit" class="btn btn-primary prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-plus"></span>	
                      保存
                    </button>
                  </div>
                </div>
                <div class="tab-pane fade" id="panel-2-3">
                  <div class="jumbotron well">
                    <p>
                      内容：照明，热风通道密封性，天花板，桥架，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      标准：照明无损坏，热风通道密封良好，天花板无脱落/无变形，桥架破损，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      结果：
                    </p>
                    <p>
                       <a class="btn btn-primary btn-success" href="#">Pass</a>
                       <a class="btn btn-primary btn-danger" href="#">Fail</a>
                    </p> 
                    <form class="bs-example bs-example-form" role="form">
                      <div class="input-group">
                          <span class="input-group-addon">备注:</span>
                          <input type="text" class="form-control" placeholder="请输入备注文本">
                      </div>
                   </form>
                  </div>
                  <div class=" btn-group col-md-12" >
                    <button id="save-btn" type="submit" class="btn btn-primary prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-plus"></span>	
                      保存
                    </button>
                  </div>
                </div>
                <div class="tab-pane fade" id="panel-2-4">
                  <div class="jumbotron well">
                    <p>
                      内容：照明，热风通道密封性，天花板，桥架，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      标准：照明无损坏，热风通道密封良好，天花板无脱落/无变形，桥架破损，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      结果：
                    </p>
                    <p>
                       <a class="btn btn-primary btn-success" href="#">Pass</a>
                       <a class="btn btn-primary btn-danger" href="#">Fail</a>
                    </p> 
                    <form class="bs-example bs-example-form" role="form">
                      <div class="input-group">
                          <span class="input-group-addon">备注:</span>
                          <input type="text" class="form-control" placeholder="请输入备注文本">
                      </div>
                   </form>
                  </div>
                  <div class=" btn-group col-md-12" >
                    <button id="POD4-save-btn" type="submit" class="btn btn-primary prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-plus"></span>	
                      保存
                    </button>
                  </div>
                </div> 
                <div class="tab-pane fade" id="panel-2-5">
                  <div class="jumbotron well">
                    <p>
                      内容：照明，热风通道密封性，天花板，桥架，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      标准：照明无损坏，热风通道密封良好，天花板无脱落/无变形，桥架破损，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      结果：
                    </p>
                    <p>
                       <a class="btn btn-primary btn-success" href="#">Pass</a>
                       <a class="btn btn-primary btn-danger" href="#">Fail</a>
                    </p> 
                    <form class="bs-example bs-example-form" role="form">
                      <div class="input-group">
                          <span class="input-group-addon">备注:</span>
                          <input type="text" class="form-control" placeholder="请输入备注文本">
                      </div>
                   </form>
                  </div>
                  <div class=" btn-group col-md-12" >
                    <button id="POD4-save-btn" type="submit" class="btn btn-primary prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-plus"></span>	
                      保存
                    </button>
                    <button id="POD4-submit-btn" type="button" class="btn btn-success prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-arrow-up"></span>	
                      提交
                    </button>
                  </div>
                </div>
               </div>
              </div>
              <div class="tab-pane fade" id="tag-3">
                <div class="alert alert-info">
                  <h4 class="text-center">POD3巡检</h4>
               </div>
                <ul class="nav nav-pills nav-justified">
                  <li class="active"><a href="#panel-3-1" data-toggle="pill" contenteditable="false">RPP柜</a></li>
                  <li><a href="#panel-3-2" data-toggle="pill" contenteditable="false">送风机</a></li>
                  <li><a href="#panel-3-3" data-toggle="pill" contenteditable="false">TF风机 </a></li>
                  <li><a href="#panel-3-4" data-toggle="pill" contenteditable="false">ATS</a></li>
                  <li><a href="#panel-3-5" data-toggle="pill" contenteditable="false">环境</a></li>
                </ul>
               <div class="tab-content">
                <div class="tab-pane fade in active" id="panel-3-1">
                  <div class="jumbotron well">
                    <p>
                      内容：照明，热风通道密封性，天花板，桥架，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      标准：照明无损坏，热风通道密封良好，天花板无脱落/无变形，桥架破损，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      结果：
                    </p>
                    <p>
                       <a class="btn btn-primary btn-success" href="#">Pass</a>
                       <a class="btn btn-primary btn-danger" href="#">Fail</a>
                    </p> 
                    <form class="bs-example bs-example-form" role="form">
                      <div class="input-group">
                          <span class="input-group-addon">备注:</span>
                          <input type="text" class="form-control" placeholder="请输入备注文本">
                      </div>
                   </form>
                  </div>
                  <div class=" btn-group col-md-12" >
                    <button id="save-btn" type="submit" class="btn btn-primary prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-plus"></span>	
                      保存
                    </button>
                  </div>
                </div>
                <div class="tab-pane fade" id="panel-3-2">
                  <div class="jumbotron well">
                    <p>
                      内容：照明，热风通道密封性，天花板，桥架，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      标准：照明无损坏，热风通道密封良好，天花板无脱落/无变形，桥架破损，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      结果：
                    </p>
                    <p>
                       <a class="btn btn-primary btn-success" href="#">Pass</a>
                       <a class="btn btn-primary btn-danger" href="#">Fail</a>
                    </p> 
                    <form class="bs-example bs-example-form" role="form">
                      <div class="input-group">
                          <span class="input-group-addon">备注:</span>
                          <input type="text" class="form-control" placeholder="请输入备注文本">
                      </div>
                   </form>
                  </div>
                  <div class=" btn-group col-md-12" >
                    <button id="save-btn" type="submit" class="btn btn-primary prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-plus"></span>	
                      保存
                    </button>
                  </div>
                </div>
                <div class="tab-pane fade" id="panel-3-3">
                  <div class="jumbotron well">
                    <p>
                      内容：照明，热风通道密封性，天花板，桥架，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      标准：照明无损坏，热风通道密封良好，天花板无脱落/无变形，桥架破损，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      结果：
                    </p>
                    <p>
                       <a class="btn btn-primary btn-success" href="#">Pass</a>
                       <a class="btn btn-primary btn-danger" href="#">Fail</a>
                    </p> 
                    <form class="bs-example bs-example-form" role="form">
                      <div class="input-group">
                          <span class="input-group-addon">备注:</span>
                          <input type="text" class="form-control" placeholder="请输入备注文本">
                      </div>
                   </form>
                  </div>
                  <div class=" btn-group col-md-12" >
                    <button id="save-btn" type="submit" class="btn btn-primary prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-plus"></span>	
                      保存
                    </button>
                  </div>
                </div>
                <div class="tab-pane fade" id="panel-3-4">
                  <div class="jumbotron well">
                    <p>
                      内容：照明，热风通道密封性，天花板，桥架，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      标准：照明无损坏，热风通道密封良好，天花板无脱落/无变形，桥架破损，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      结果：
                    </p>
                    <p>
                       <a class="btn btn-primary btn-success" href="#">Pass</a>
                       <a class="btn btn-primary btn-danger" href="#">Fail</a>
                    </p> 
                    <form class="bs-example bs-example-form" role="form">
                      <div class="input-group">
                          <span class="input-group-addon">备注:</span>
                          <input type="text" class="form-control" placeholder="请输入备注文本">
                      </div>
                   </form>
                  </div>
                  <div class=" btn-group col-md-12" >
                    <button id="POD4-save-btn" type="submit" class="btn btn-primary prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-plus"></span>	
                      保存
                    </button>
                  </div>
                </div> 
                <div class="tab-pane fade" id="panel-3-5">
                  <div class="jumbotron well">
                    <p>
                      内容：照明，热风通道密封性，天花板，桥架，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      标准：照明无损坏，热风通道密封良好，天花板无脱落/无变形，桥架破损，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      结果：
                    </p>
                    <p>
                       <a class="btn btn-primary btn-success" href="#">Pass</a>
                       <a class="btn btn-primary btn-danger" href="#">Fail</a>
                    </p> 
                    <form class="bs-example bs-example-form" role="form">
                      <div class="input-group">
                          <span class="input-group-addon">备注:</span>
                          <input type="text" class="form-control" placeholder="请输入备注文本">
                      </div>
                   </form>
                  </div>
                  <div class=" btn-group col-md-12" >
                    <button id="POD4-save-btn" type="submit" class="btn btn-primary prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-plus"></span>	
                      保存
                    </button>
                    <button id="POD4-submit-btn" type="button" class="btn btn-success prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-arrow-up"></span>	
                      提交
                    </button>
                  </div>
                </div>
               </div>
              </div>
              <div class="tab-pane fade" id="tag-4">
                <div class="alert alert-info">
                  <h4 class="text-center">POD4巡检</h4>
               </div>
                <ul class="nav nav-pills nav-justified">
                  <li class="active"><a href="#panel-4-1" data-toggle="pill" contenteditable="false">RPP柜</a></li>
                  <li><a href="#panel-4-2" data-toggle="pill" contenteditable="false">送风机</a></li>
                  <li><a href="#panel-4-3" data-toggle="pill" contenteditable="false">TF风机 </a></li>
                  <li><a href="#panel-4-4" data-toggle="pill" contenteditable="false">ATS</a></li>
                  <li><a href="#panel-4-5" data-toggle="pill" contenteditable="false">环境</a></li>
                </ul>
               <div class="tab-content">
                <div class="tab-pane fade in active" id="panel-4-1">
                  <div class="jumbotron well">
                    <p>
                      内容：照明，热风通道密封性，天花板，桥架，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      标准：照明无损坏，热风通道密封良好，天花板无脱落/无变形，桥架破损，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      结果：
                    </p>
                    <p>
                       <a class="btn btn-primary btn-success" href="#">Pass</a>
                       <a class="btn btn-primary btn-danger" href="#">Fail</a>
                    </p> 
                    <form class="bs-example bs-example-form" role="form">
                      <div class="input-group">
                          <span class="input-group-addon">备注:</span>
                          <input type="text" class="form-control" placeholder="请输入备注文本">
                      </div>
                   </form>
                  </div>
                  <div class=" btn-group col-md-12" >
                    <button id="save-btn" type="submit" class="btn btn-primary prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-plus"></span>	
                      保存
                    </button>
                  </div>
                </div>
                <div class="tab-pane fade" id="panel-4-2">
                  <div class="jumbotron well">
                    <p>
                      内容：照明，热风通道密封性，天花板，桥架，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      标准：照明无损坏，热风通道密封良好，天花板无脱落/无变形，桥架破损，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      结果：
                    </p>
                    <p>
                       <a class="btn btn-primary btn-success" href="#">Pass</a>
                       <a class="btn btn-primary btn-danger" href="#">Fail</a>
                    </p> 
                    <form class="bs-example bs-example-form" role="form">
                      <div class="input-group">
                          <span class="input-group-addon">备注:</span>
                          <input type="text" class="form-control" placeholder="请输入备注文本">
                      </div>
                   </form>
                  </div>
                  <div class=" btn-group col-md-12" >
                    <button id="save-btn" type="submit" class="btn btn-primary prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-plus"></span>	
                      保存
                    </button>
                  </div>
                </div>
                <div class="tab-pane fade" id="panel-4-3">
                  <div class="jumbotron well">
                    <p>
                      内容：照明，热风通道密封性，天花板，桥架，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      标准：照明无损坏，热风通道密封良好，天花板无脱落/无变形，桥架破损，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      结果：
                    </p>
                    <p>
                       <a class="btn btn-primary btn-success" href="#">Pass</a>
                       <a class="btn btn-primary btn-danger" href="#">Fail</a>
                    </p> 
                    <form class="bs-example bs-example-form" role="form">
                      <div class="input-group">
                          <span class="input-group-addon">备注:</span>
                          <input type="text" class="form-control" placeholder="请输入备注文本">
                      </div>
                   </form>
                  </div>
                  <div class=" btn-group col-md-12" >
                    <button id="save-btn" type="submit" class="btn btn-primary prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-plus"></span>	
                      保存
                    </button>
                  </div>
                </div>
                <div class="tab-pane fade" id="panel-4-4">
                  <div class="jumbotron well">
                    <p>
                      内容：照明，热风通道密封性，天花板，桥架，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      标准：照明无损坏，热风通道密封良好，天花板无脱落/无变形，桥架破损，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      结果：
                    </p>
                    <p>
                       <a class="btn btn-primary btn-success" href="#">Pass</a>
                       <a class="btn btn-primary btn-danger" href="#">Fail</a>
                    </p> 
                    <form class="bs-example bs-example-form" role="form">
                      <div class="input-group">
                          <span class="input-group-addon">备注:</span>
                          <input type="text" class="form-control" placeholder="请输入备注文本">
                      </div>
                   </form>
                  </div>
                  <div class=" btn-group col-md-12" >
                    <button id="POD4-save-btn" type="submit" class="btn btn-primary prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-plus"></span>	
                      保存
                    </button>
                  </div>
                </div> 
                <div class="tab-pane fade" id="panel-4-5">
                  <div class="jumbotron well">
                    <p>
                      内容：照明，热风通道密封性，天花板，桥架，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      标准：照明无损坏，热风通道密封良好，天花板无脱落/无变形，桥架破损，异味
                    </p>
                  </div>
                  <div class="jumbotron well">
                    <p>
                      结果：
                    </p>
                    <p>
                       <a class="btn btn-primary btn-success" href="#">Pass</a>
                       <a class="btn btn-primary btn-danger" href="#">Fail</a>
                    </p> 
                    <form class="bs-example bs-example-form" role="form">
                      <div class="input-group">
                          <span class="input-group-addon">备注:</span>
                          <input type="text" class="form-control" placeholder="请输入备注文本">
                      </div>
                   </form>
                  </div>
                  <div class=" btn-group col-md-12" >
                    <button id="POD4-save-btn" type="submit" class="btn btn-primary prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-plus"></span>	
                      保存
                    </button>
                    <button id="POD4-submit-btn" type="button" class="btn btn-success prompt" style="display: inline-block;">
                      <span class=" glyphicon glyphicon-arrow-up"></span>	
                      提交
                    </button>
                  </div>
                </div>
               </div>
              </div>
            </div>
            </div>
            
        </div>
      </div>
    </div> 
</body>
</html>

