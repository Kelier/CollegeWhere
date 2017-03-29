
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"  import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8" />
    <link href="../images/flashlight.ico" rel="shortcut icon">
    <!-- Bootstrap -->
    <link href="../css/bootstrap.css" rel="stylesheet">
    <!-- Styles -->
    <link href="../css/style.css" rel="stylesheet">
    <!-- Custom Styles -->
    <link href="../css/custom.css" rel="stylesheet">
    <link href="../less/style.less" rel="stylesheet"  title="lessCss" id="lessCss">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
              <script src="../js/html5shiv.js"></script>
              <script src="../js/respond.min.js"></script>
              <![endif]-->
              <script src="../js/jquery.js"></script>
              <script>
                $(document).ready(function() {
                    $('.site-holder').hide();
            // $('.navbar').hide();
            // $('.box-holder').hide();
        });
            </script>
        </head>
<body>
            <div class="site-holder">
                <!-- .navbar -->
                <nav class="navbar  navbar-default nav-delighted " role="navigation">
                    <a href="#" class="toggle-left-sidebar">
                        <i class="fa fa-th-list"></i>
                    </a>
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <a class="navbar-brand" href="#">
                            <img src="../images/logo.png" alt=""></a>
                        </div>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse">
                            <ul class="nav navbar-nav navbar-right">
                                <li>
                                    <form role="search" class="search-form">
                                        <div class="form-group">
                                            <input type="text" class="form-control  nav-input-search " placeholder="Search ">
                                            <i class="fa fa-search" style="margin-left: 5px"></i>
                                        </div>
                                    </form>
                                </li>
                                <li>
                                    <a href="lock.jsp" class="logout">
                                        <i class="fa fa-power-off"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                        <!-- /.navbar-collapse -->
                    </nav>
                    <!-- .box-holder -->
                    <div class="box-holder">
                        <!-- .left-sidebar -->
                        <div class="left-sidebar">
                            <div class="sidebar-holder">
                                <!-- User   -->
                                <div class="user-menu">
                                    
                                    <div class="user-info">
                                        <div class="welcome">欢迎回来,</div>
                                        <div class="username">${admin_name} </div>
                                    </div>
                                    <div class="user-status">
                                        <i class="fa fa-circle "></i>
                                    </div>
                                </div>
                                <!-- /.User   -->
                                <!-- Menu -->
                                <ul class="nav  nav-list">
                                  <li class=''>
                                    <a href='dashboard' data-original-title='Dashboard'>
                                        <i class='fa fa-home'></i>
                                        <span class='hidden-minibar'>主页</span>
                                    </a>
                                </li>
                                <li class=' '>
                                    <a href='portlets' data-original-title='Portlets'>
                                        <i class='fa fa-indent'></i>
                                        <span class='hidden-minibar'>大学管理</span>
                                    </a>
                                </li>
                                
                                <li class=' '>
                                    <a href='typography' data-original-title='Typography'>
                                        <i class='fa fa-tint'></i>
                                        <span class='hidden-minibar'>用户管理
                                        </span>
                                    </a>  
                                </li>
                                
                                <li class=' '>
                                    <a href='bathline' data-original-title=''Bathline''>
                                        <i class='fa fa-tint'></i>
                                        <span class='hidden-minibar'>批次线管理
                                        </span>
                                    </a>  
                                </li>
                                <!--
                                <li class='submenu  '>
                                    <a class='dropdown' onClick='return false;' href='#' data-original-title='UI-KITS'>
                                        <i class='fa fa-user'></i>
                                        <span class='hidden-minibar'>批次线查询
                                            <i class='fa fa-chevron-right  pull-right'></i>
                                        </span>
                                    </a>
                                    <ul  class="animated fadeInDown">
                                        <li class=' '>
                                            <a href='general-elements' data-original-title='General-Elements'>
                                                <i class='fa fa-exclamation-triangle'></i>
                                                <span class='hidden-minibar'>本科一</span>
                                            </a>
                                        </li>
                                        <li class=' '>
                                            <a href='buttons' data-original-title='Buttons'>
                                                <i class='fa fa-font'></i>
                                                <span class='hidden-minibar'>本科二</span>
                                            </a>
                                        </li>
                                        <li class=' '>
                                            <a href='tree-view' data-original-title='Tree-View'>
                                                <i class='fa fa-chain'></i>
                                                <span class='hidden-minibar'>本科三</span>
                                            </a>
                                        </li>
                                        
                                    </ul>
                               
                                 </li> -->
                                
                                
                                
                          <!--   <li class=' '>
                                <a href='documentation#overview' data-original-title='Documentation'  target="_blank">
                                    <i class="fa fa-file-text"></i>
                                    <span class='hidden-minibar'>大学详情
                                    </span>
                                </a>
                            </li> -->
                            
                            
                
            </ul>
            <!-- /.Menu -->
        </div>
        <!-- /.left-sidebar Holder-->
    </div>
    <!-- /.left-sidebar -->
    <!-- .right-sidebar -->
    <div class="user-details user-details-close animated fadeInLeft">
        <div class="right-sidebar-holder">
            <div class="panel-group" id="accordion">
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                      个性化
                  </a>
                  <i class="fa fa-times close-right-user text-danger pull-right"></i>
              </h4>
          </div>
          <div id="collapseOne" class="panel-collapse collapse in">
              <div class="panel-body">
              
                <hr>
                <h5 class="text-center">
                    主题设置
                    <a  href="#"  class="theme-panel-close text-danger pull-right"><strong><i class="fa fa-times"></i></strong></a>
                </h5>
                <ul class="list-group theme-options">
                    
                    <li class="list-group-item" >切换主题
                        <ul class="list-inline predefined-themes"> 
                            <li><a class="badge" style="background-color:#23bab5" data-color-primary="#23bab5" data-color-secondary="#232b2d" data-color-link="#80969c"> &nbsp; </a></li>
                            <li><a class="badge" style="background-color:#e96363" data-color-primary="#e96363" data-color-secondary="#232b2d" data-color-link="#AFB5AA"> &nbsp; </a></li>
                            <li><a class="badge" style="background-color:#5cb85c" data-color-primary="#5cb85c" data-color-secondary="#232b2d" data-color-link="#777e88"> &nbsp; </a></li>
                            <li><a class="badge" style="background-color:#e97436" data-color-primary="#e97436" data-color-secondary="#232b2d" data-color-link="#80969c"> &nbsp; </a></li>
                            <li><a class="badge" style="background-color:#2FA2D1" data-color-primary="#2FA2D1" data-color-secondary="#232b2d" data-color-link="#A5B1B7"> &nbsp; </a></li>
                            <li><a class="badge" style="background-color:#2f343b" data-color-primary="#2f343b" data-color-secondary="#FFFFFF" data-color-link="#232b2d"> &nbsp; </a></li>
                        </ul>
                    </li>
                </ul>
                
                <hr>
              
            </div>
        </div>
    </div>
    <div class="panel panel-default">
        <div class="panel-heading">
          <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
              联系人
              <i class="fa fa-users pull-right"></i>
          </a>
      </h4>
  </div>
  <div id="collapseTwo" class="panel-collapse collapse">
      <div class="panel-body no-padding">
        <div class="list-group contact-list">
            <a class="list-group-item">
                <img src="../images/one.png" class="chat-user-avatar" alt="">
                <div class="contact-info">
                    <span class="name">万小洁</span>
                    <span class="status">在线</span>
                    <i class="fa fa-dot-circle-o"></i>
                </div>
            </a>
            <a class="list-group-item contact">
                <img src="../images/two.png" class="chat-user-avatar" alt="">
                <div class="contact-info">
                    <span class="name">李小智</span>
                    <span class="status">离线</span>
                    <i class="fa fa-dot-circle-o online"></i>
                </div>
            </a>
            <a class="list-group-item contact">
                <img src="../images/three.png" class="chat-user-avatar" alt="">
                <div class="contact-info">
                    <span class="name">孙小辰</span>
                    <span class="status">忙碌</span>
                    <i class="fa fa-dot-circle-o busy"></i>
                </div>
            </a>
            
        </div>
    </div>
</div>
</div>

<div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
          项目进度
          <i class="fa fa-clock-o pull-right"></i>
      </a>
  </h4>
</div>
<div id="collapseThree" class="panel-collapse collapse">
  <div class="panel-body no-padding">
      <div class="list-group projects">
        <a class="list-group-item" href="#">    
            <p> 万小洁 <span class="pull-right label bg-success">90%</span></p>
            <div class="progress progress-mini">
                <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 90%;">
                    <span class="sr-only">90% Complete</span>
                </div>
            </div>
        </a>
        <a class="list-group-item" href="#">    
            <p> 李小智 <span class="pull-right label bg-warning">40%</span></p>
            <div class="progress progress-mini">
                <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 40%;">
                    <span class="sr-only">40% Complete</span>
                </div>
            </div>
        </a>
        <a class="list-group-item" href="#">    
            <p> 孙小辰 <span class="pull-right label bg-primary">60%</span></p>
            <div class="progress progress-mini">
                <div class="progress-bar progress-bar-primary" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 75%;">
                    <span class="sr-only">75% Complete</span>
                </div>
            </div>
        </a>
    </div>
</div>
</div>
</div>
</div>
</div>
<!-- /.right-sidebar-holder -->
</div>
<!-- /.right-sidebar -->
<!-- .content -->
<div class="content  animated fadeInBig">
    <div class=" breadcrumb-holder">
        <ul class="breadcrumb">
            <li class="active" charset="utf-8">大学去哪儿</li>
            <li>
                <a href="#">College-Where</a>
            </li>
            <li>
                <a href="#">详情</a>
            </li>
        </ul>
        
        
    </div>
  
    <div class="main-content">
    </div>
</div>
<!-- /.content -->
</div>
<!-- /.box-holder -->
</div>
<!-- /.site-holder -->


<!-- This section is for Splash Screen -->
<div id="jSplash">
    <section class="selected">
        <h1>
            <a href="#" class="brand">
                <img src="../images/logo.png" alt=""></a>
            </h1>
            <h2>成为杰出的大学生从此开始</h2>
        </section>
       
                </div>
                <!-- End of Splash Screen -->
                <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
                <!-- Include all compiled plugins (below), or include individual files as needed -->
                
                <script src="../js/less-1.5.0.min.js"></script>
                <script src="../js/bootstrap.min.js"></script>
                <script src="../js/jquery.storage.js"></script>        
                <script src="../js/jquery.accordion.js"></script>
                <script src="../js/bootstrap-typeahead.js"></script>
                <script src="../js/nav-search.js"></script>
                <!-- Messenger assets -->
                <script src="../js/messenger.min.js"></script>
                <script src="../js/messenger-theme-flat.js"></script>
                <script src="../js/bootstrap-progressbar.js"></script>
                <script src="../js/jpreLoader.min.js"></script>
                <script src="../js/preloader-delighted.js"></script>
                <script src="../js/jquery.loadmask.min.js"></script>    
                <script  src="../js/hovermenu.js" charset="utf-8"></script>
                <script src="../js/jquery.mCustomScrollbar.concat.min.js"></script>
                <script src="../js/jquery.easy-pie-chart.js"></script>
                <script src="../js/bootstrap-switch.js"></script>
                <script src="../js/jquery.address-1.6.min.js"></script>
                <script src="../js/jquery.scrollTo.js"></script>
                
                <!-- Remove below two lines in production -->
                
                <script src="../js/theme-options.js"></script>
                
                <script charset="gb2312" src="../js/core.js" ></script>
                
           
            </body>
</html>