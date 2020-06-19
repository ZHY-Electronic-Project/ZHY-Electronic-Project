<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<title>巡检</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.12.3.min.js"></script>
	<!-- <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>	 -->
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
</head>

<body>
<div class="container-fulid">
	<div class="row-fluid">
		<div class="span12">
			<ul id="myTab" class="nav nav-tabs table-hover">
				<li class="active"><a href="#DI" data-toggle="tab">日巡检ID/名称</a></li>
				<li><a href="#WI" data-toggle="tab">周巡检ID/名称</a></li>
				<li><a href="#MI" data-toggle="tab">月巡检ID/名称</a></li>
			</ul>
			<div id="myTabContent" class="tab-content">
				<!-- ==========================日巡检==========================-->
				<div class="tab-pane fade in active" id="DI">
					<p>&nbsp;</p>
					<div id="inspection-table header" class="bootgrid-header container-fluid">
                     <div class="row">
						<div class="col-sm-5 actionBar"><!--搜索框-->
							<div class="input-group">
								<span class="icon glyphicon input-group-addon glyphicon-search"></span>
								<input type="text" class="search-field form-control" placeholder="查询日巡检">
							</div>
						</div>
						<div class="col-sm-4"> <!--查询和新增button-->
							<button type="submit" class="btn btn-primary" contenteditable="true">查找</button>
							<button class="btn btn-primary" data-toggle="modal" data-target="#D-add">新增巡检条目</button>
						</div>
					 </div>
					</div>
					<table id="table" class="table table-hover table-striped bootgrid-table" aria-busy="false">
						<thead><!--日巡检表头-->
							<tr>
								<th class="text-left" data-column-id="id">
									<a class="column-header-anchor sortable">
										<span class="text">编号</span>
									</a>
								</th>
								<th class="text-left" data-column-id="agenda1">
									<a class="column-header-anchor sortable">
										<span class="text">一级设备名称</span>
									</a>
								</th>
								<th class="text-left" data-column-id="agenda2">
									<a class="column-header-anchor sortable">
										<span class="text">二级设备名称目录</span>
									</a>
								</th>
								<th class="text-left" data-column-id="agenda3">
									<a class="column-header-anchor sortable">
										<span class="text">设备</span>
									</a>
								</th>
								<th class="text-left" data-column-id="edit">
									<a class="column-header-anchor sortable">
										<span class="text">操作</span>
									</a>
								</th>
							</tr>
						</thead>
						<tbody><!--日巡检表-->
							<tr data-row-id="1">
								<td class=" text-left id">
									<a href="" target="_blank"><code>1</code></a>
								</td>
								<td class=" text-left agenda1">
									<p class="first-agenda-text">UPS</p>
								</td>
								<td class=" text-left agenda1">
									<p class="first-agenda-text">UPS1室SWBD-1A路UPS</p>
								</td>
								<td class=" text-left agenda1">
									<p class="first-agenda-text">UPS-1A1</p>
								</td>
								<td class=" text-left row-action">
									<div class=" btn-group row-action-button">
										<button class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown" onclick="toggleDropdowns($(this));">
											<i class="glyphicon glyphicon-edit"></i>
										</button>
										<ul class="dropdown-menu pull-left" role="menu">
											<li>
											 <a id="row-action-edit" class="btn" data-toggle="modal" data-target="#edit-d">
											  <i class="glyphicon glyphicon-pencil"></i>
											  修改此条目</a>
											</li>
											<li>
											<a id="row-action-delect" class="btn" data-toggle="modal" data-target="#delete">
											<i class="glyphicon glyphicon-remove text-warning" ></i>
											   删除此条目</a>
											</li>
										</ul>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<!-- 分页标签 -->
					<div id="inspecion-table-footer" class="bootgrid-footer container-fluid">
						<div class="row"><div class="col-sm-6">
							<ul class="pagination">
								<li class="first disabled" aria-disabled="true">
									<a href="#first" class="button">«</a>
								</li>
								<li class="prev disabled" aria-disabled="true">
									<a href="#prev" class="button">&lt;</a>
								</li>
								<li class="page-1 active" aria-disabled="false" aria-selected="true">
									<a href="#1" class="button">1</a>
								</li>
								<li class="page-2" aria-disabled="false" aria-selected="false">
									<a href="#2" class="button">2</a>
								</li>
								<li class="page-3" aria-disabled="false" aria-selected="false">
									<a href="#3" class="button">3</a>
								</li>
								<li class="page-4" aria-disabled="false" aria-selected="false">
									<a href="#4" class="button">4</a>
								</li>
								<li class="page-5" aria-disabled="false" aria-selected="false">
									<a href="#5" class="button">5</a>
								</li>
								<li class="next" aria-disabled="false">
									<a href="#next" class="button">&gt;</a>
								</li>
								<li class="last" aria-disabled="false">
									<a href="#last" class="button">»</a>
								</li>
							</ul>
						</div></div>
				    </div>
				</div>
				<!-- ==========================周巡检==========================-->
				<div class="tab-pane fade" id="WI">
					<p>&nbsp;</p>
					<div id="inspection-table header" class="bootgrid-header container-fluid">
                     <div class="row">
						<div class="col-sm-5 actionBar"><!--搜索框-->
							<div class="input-group">
								<span class="icon glyphicon input-group-addon glyphicon-search"></span>
								<input type="text" class="search-field form-control" placeholder="查询周巡检">
							</div>
						</div>
						<div class="col-sm-7"> <!--查询和新增button-->
							<button type="submit" class="btn btn-primary" contenteditable="true">查找</button>
							<button class="btn btn-primary" data-toggle="modal" data-target="#W-add">新增巡检条目</button>
						</div>
					 </div>
					</div>
					<table id="table" class="table table-hover table-striped bootgrid-table" aria-busy="false">
						<thead><!--周巡检表头-->
							<tr>
								<th class="text-left" data-column-id="id">
									<a class="column-header-anchor sortable">
										<span class="text">编号</span>
									</a>
								</th>
								<th class="text-left" data-column-id="agenda">
									<a class="column-header-anchor sortable">
										<span class="text">目录名称</span>
									</a>
								</th>
								<th class="text-left" data-column-id="edit">
									<a class="column-header-anchor sortable">
										<span class="text">操作</span>
									</a>
								</th>
							</tr>
						</thead>
						<tbody><!--周巡检表-->
							<tr data-row-id="1">
								<td class=" text-left id">
									<a href="" target="_blank"><code>1</code></a>
								</td>
								<td class=" text-left agenda">
									<p class="first-agenda-text">Weekly Seasonal</p>
								</td>
								<td class=" text-left row-action">
									<div class=" btn-group row-action-button">
										<button class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown" onclick="toggleDropdowns($(this));">
											<i class="glyphicon glyphicon-edit"></i>
										</button>
										<ul class="dropdown-menu pull-left" role="menu">
											<li>
											 <a id="row-action-edit" class="btn" data-toggle="modal" data-target="#edit-w">
											  <i class="glyphicon glyphicon-pencil"></i>
											  修改此条目</a>
											</li>
											<li>
											<a id="row-action-delect" class="btn" data-toggle="modal" data-target="#delete">
											<i class="glyphicon glyphicon-remove text-warning" ></i>
											   删除此条目</a>
											</li>
										</ul>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<!-- 分页标签 -->
					<div id="access-requests-table-footer" class="bootgrid-footer container-fluid">
						<div class="row"><div class="col-sm-6">
							<ul class="pagination">
								<li class="first disabled" aria-disabled="true">
									<a href="#first" class="button">«</a>
								</li>
								<li class="prev disabled" aria-disabled="true">
									<a href="#prev" class="button">&lt;</a>
								</li>
								<li class="page-1 active" aria-disabled="false" aria-selected="true">
									<a href="#1" class="button">1</a>
								</li>
								<li class="page-2" aria-disabled="false" aria-selected="false">
									<a href="#2" class="button">2</a>
								</li>
								<li class="page-3" aria-disabled="false" aria-selected="false">
									<a href="#3" class="button">3</a>
								</li>
								<li class="page-4" aria-disabled="false" aria-selected="false">
									<a href="#4" class="button">4</a>
								</li>
								<li class="page-5" aria-disabled="false" aria-selected="false">
									<a href="#5" class="button">5</a>
								</li>
								<li class="next" aria-disabled="false">
									<a href="#next" class="button">&gt;</a>
								</li>
								<li class="last" aria-disabled="false">
									<a href="#last" class="button">»</a>
								</li>
							</ul>
						</div></div>
				    </div>
				</div>
				<!-- ==========================日巡检==========================-->
				<div class="tab-pane fade" id="MI">
					<p>&nbsp;</p>
					<div id="inspection-table header" class="bootgrid-header container-fluid">
                     <div class="row">
						<div class="col-sm-5 actionBar"><!--搜索框-->
							<div class="input-group">
								<span class="icon glyphicon input-group-addon glyphicon-search"></span>
								<input type="text" class="search-field form-control" placeholder="查询月巡检">
							</div>
						</div>
						<div class="col-sm-7"> <!--查询和新增button-->
							<button type="submit" class="btn btn-primary" contenteditable="true">查找</button>
							<button class="btn btn-primary" data-toggle="modal" data-target="#M-add">新增巡检条目</button>
						</div>
					 </div>
					</div>
					<table id="table" class="table table-hover table-striped bootgrid-table" aria-busy="false">
						<thead><!--日巡检表头-->
							<tr>
								<th class="text-left" data-column-id="id">
									<a class="column-header-anchor sortable">
										<span class="text">编号</span>
									</a>
								</th>
								<th class="text-left" data-column-id="agenda">
									<a class="column-header-anchor sortable">
										<span class="text">目录名称</span>
									</a>
								</th>
								<th class="text-left" data-column-id="edit">
									<a class="column-header-anchor sortable">
										<span class="text">操作</span>
									</a>
								</th>
							</tr>
						</thead>
						<tbody><!--yue巡检表-->
							<tr data-row-id="1">
								<td class=" text-left id">
									<a href="" target="_blank"><code>1</code></a>
								</td>
								<td class=" text-left agenda">
									<p class="first-agenda-text">泄露预防检查</p>
								</td>
								<td class=" text-left row-action">
									<div class=" btn-group row-action-button">
										<button class="btn btn-success btn-sm dropdown-toggle" data-toggle="dropdown" onclick="toggleDropdowns($(this));">
											<i class="glyphicon glyphicon-edit"></i>
										</button>
										<ul class="dropdown-menu pull-left" role="menu">
											<li>
											 <a id="row-action-edit" class="btn" data-toggle="modal" data-target="#edit-m">
											  <i class="glyphicon glyphicon-pencil"></i>
											  修改此条目</a>
											</li>
											<li>
											<a id="row-action-delect" class="btn" data-toggle="modal" data-target="#delete">
											<i class="glyphicon glyphicon-remove text-warning" ></i>
											   删除此条目</a>
											</li>
										</ul>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
					<!-- 分页标签 -->
					<div id="access-requests-table-footer" class="bootgrid-footer container-fluid">
						<div class="row"><div class="col-sm-6">
							<ul class="pagination">
								<li class="first disabled" aria-disabled="true">
									<a href="#first" class="button">«</a>
								</li>
								<li class="prev disabled" aria-disabled="true">
									<a href="#prev" class="button">&lt;</a>
								</li>
								<li class="page-1 active" aria-disabled="false" aria-selected="true">
									<a href="#1" class="button">1</a>
								</li>
								<li class="page-2" aria-disabled="false" aria-selected="false">
									<a href="#2" class="button">2</a>
								</li>
								<li class="page-3" aria-disabled="false" aria-selected="false">
									<a href="#3" class="button">3</a>
								</li>
								<li class="page-4" aria-disabled="false" aria-selected="false">
									<a href="#4" class="button">4</a>
								</li>
								<li class="page-5" aria-disabled="false" aria-selected="false">
									<a href="#5" class="button">5</a>
								</li>
								<li class="next" aria-disabled="false">
									<a href="#next" class="button">&gt;</a>
								</li>
								<li class="last" aria-disabled="false">
									<a href="#last" class="button">»</a>
								</li>
							</ul>
						</div></div>
				    </div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Modal 删除提示 -->
<div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="deletedTitle" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
	  <div class="modal-content">
		<div class="modal-header">
		  <h5 class="modal-title" id="deleteTitle">温馨提示</h5>
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<div class="modal-body">
		  确定要删除此条目的巡检内容？
		</div>
		<div class="modal-footer">
		  <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
		  <button type="button" class="btn btn-primary">确定</button>
		</div>
	  </div>
	</div>
</div>
<!-- Modal 日巡检修改框 -->
<div class="modal fade" id="edit-d" tabindex="-1" role="dialog" aria-labelledby="editwindow" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
	  <div class="modal-content">
		<div class="modal-header">
		  <h5 class="modal-title" id="editwindow">巡检修改</h5>
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<div class="modal-body">
		<form class="form-horizontal"">
		<div class="form-group">
		<label for="inputItem1" class="col-sm-2 control-label">一级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item1" class="form-control" style="width:300px;" id="item1" placeholder="UPS">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">二级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item3" placeholder="UPS1室SWBD-1A路UPS"> <!-- placeholder的数据应从数据库抓取或者应该直接是填在框格内同样从后台数据库抓取 -->
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">三级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item3" placeholder="UPS1A1">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">四级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item3" placeholder="null">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">五级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item3" placeholder="null">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">巡检内容描述:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:400px;" id="item3" placeholder="">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">标准:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:200px;"id="item3" placeholder="">
		    </div>
		</div>
		</form>
		</div>
		<div class="modal-footer">
		  <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
		  <button type="button" class="btn btn-primary">submit</button>  <!-- submit修改后的数据到后台数据库 -->
		</div>
	  </div>
	</div>
</div>
<!-- Modal 周巡检修改框 -->
<div class="modal fade" id="edit-w" tabindex="-1" role="dialog" aria-labelledby="editwindow" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
	  <div class="modal-content">
		<div class="modal-header">
		  <h5 class="modal-title" id="editwindow">巡检修改</h5>
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<div class="modal-body">
		<form class="form-horizontal"">
		<div class="form-group">
		<label for="inputItem1" class="col-sm-2 control-label">一级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item1" class="form-control" style="width:300px;" id="item1" placeholder="UPS">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">二级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item3" placeholder="UPS1室SWBD-1A路UPS"> <!-- placeholder的数据应从数据库抓取或者应该直接是填在框格内同样从后台数据库抓取 -->
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">三级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item3" placeholder="UPS1A1">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">四级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item3" placeholder="null">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">五级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item3" placeholder="null">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">巡检内容描述:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:400px;" id="item3" placeholder="">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">标准:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:200px;"id="item3" placeholder="">
		    </div>
		</div>
		</form>
		</div>
		<div class="modal-footer">
		  <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
		  <button type="button" class="btn btn-primary">submit</button>  <!-- submit修改后的数据到后台数据库 -->
		</div>
	  </div>
	</div>
</div>
<!-- Modal 月巡检修改框 -->
<div class="modal fade" id="edit-m" tabindex="-1" role="dialog" aria-labelledby="editwindow" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
	  <div class="modal-content">
		<div class="modal-header">
		  <h5 class="modal-title" id="editwindow">巡检修改</h5>
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<div class="modal-body">
		<form class="form-horizontal"">
		<div class="form-group">
		<label for="inputItem1" class="col-sm-2 control-label">一级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item1" class="form-control" style="width:300px;" id="item1" placeholder="UPS">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">二级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item3" placeholder="UPS1室SWBD-1A路UPS"> <!-- placeholder的数据应从数据库抓取或者应该直接是填在框格内同样从后台数据库抓取 -->
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">三级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item3" placeholder="UPS1A1">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">四级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item3" placeholder="null">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">五级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item3" placeholder="null">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">巡检内容描述:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:400px;" id="item3" placeholder="">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">标准:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:200px;"id="item3" placeholder="">
		    </div>
		</div>
		</form>
		</div>
		<div class="modal-footer">
		  <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
		  <button type="button" class="btn btn-primary">submit</button>  <!-- submit修改后的数据到后台数据库 -->
		</div>
	  </div>
	</div>
</div>
<!-- Modal 新增巡检 -->
<div class="modal fade" id="D-add" tabindex="-1" role="dialog" aria-labelledby="addwindow" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
	  <div class="modal-content">
		<div class="modal-header">
		  <h5 class="modal-title" id="addwindow">添加新的巡检内容</h5>
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<div class="modal-body">
		<form class="form-horizontal"">
		<div class="form-group">
		<label for="inputItem1" class="col-sm-2 control-label">一级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item1" class="form-control" style="width:300px;" id="item1" placeholder="UPS">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">二级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item2" placeholder="UPS1室SWBD-1A路UPS"> <!-- placeholder的数据应从数据库抓取或者应该直接是填在框格内同样从后台数据库抓取 -->
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">三级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item3" placeholder="UPS1A1">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">四级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item4" placeholder="null">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">五级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item5" placeholder="null">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">巡检内容描述:</label>
		    <div class="col-sm-10">
		    <!--<input type="Item3" class="form-control" style="width:400px;" id="item6" placeholder="">-->
		    <textarea class="form-control" rows="3"></textarea>
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">标准:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:200px;"id="item7" placeholder="">
		    </div>
		</div>
		</form>
		</div>
		<div class="modal-footer">
		  <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
		  <button type="button" class="btn btn-primary">生成新的巡检内容</button>  <!-- submit修改后的数据到后台数据库 -->
		</div>
	  </div>
	</div>
</div>
<!-- Modal 周新增巡检 -->
<div class="modal fade" id="W-add" tabindex="-1" role="dialog" aria-labelledby="addwindow" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
	  <div class="modal-content">
		<div class="modal-header">
		  <h5 class="modal-title" id="addwindow">添加新的巡检内容</h5>
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<div class="modal-body">
		<form class="form-horizontal"">
		<div class="form-group">
		<label for="inputItem1" class="col-sm-2 control-label">一级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item1" class="form-control" style="width:300px;" id="item1" placeholder="UPS">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">二级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item2" placeholder="UPS1室SWBD-1A路UPS"> <!-- placeholder的数据应从数据库抓取或者应该直接是填在框格内同样从后台数据库抓取 -->
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">三级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item3" placeholder="UPS1A1">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">四级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item4" placeholder="null">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">五级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item5" placeholder="null">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">巡检内容描述:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:400px;" id="item6" placeholder="">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">标准:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:200px;"id="item7" placeholder="">
		    </div>
		</div>
		</form>
		</div>
		<div class="modal-footer">
		  <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
		  <button type="button" class="btn btn-primary">生成新的巡检内容</button>  <!-- submit修改后的数据到后台数据库 -->
		</div>
	  </div>
	</div>
</div>
<!-- Modal 月新增巡检 -->
<div class="modal fade" id="M-add" tabindex="-1" role="dialog" aria-labelledby="addwindow" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered" role="document">
	  <div class="modal-content">
		<div class="modal-header">
		  <h5 class="modal-title" id="addwindow">添加新的巡检内容</h5>
		  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			<span aria-hidden="true">&times;</span>
		  </button>
		</div>
		<div class="modal-body">
		<form class="form-horizontal"">
		<div class="form-group">
		<label for="inputItem1" class="col-sm-2 control-label">一级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item1" class="form-control" style="width:300px;" id="item1" placeholder="UPS">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">二级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item2" placeholder="UPS1室SWBD-1A路UPS"> <!-- placeholder的数据应从数据库抓取或者应该直接是填在框格内同样从后台数据库抓取 -->
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">三级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item3" placeholder="UPS1A1">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">四级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item4" placeholder="null">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">五级目录:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:300px;"id="item5" placeholder="null">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">巡检内容描述:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:400px;" id="item6" placeholder="">
		    </div>
		</div>
		<div class="form-group">
		<label for="inputItem2" class="col-sm-2 control-label">标准:</label>
		    <div class="col-sm-10">
		    <input type="Item3" class="form-control" style="width:200px;"id="item7" placeholder="">
		    </div>
		</div>
		</form>
		</div>
		<div class="modal-footer">
		  <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
		  <button type="button" class="btn btn-primary">生成新的巡检内容</button>  <!-- submit修改后的数据到后台数据库 -->
		</div>
	  </div>
	</div>
</div>
<script>
	function add(){
		location.href = "xunjianadd.html";
	}
</script>
</body>
</html>
</html>