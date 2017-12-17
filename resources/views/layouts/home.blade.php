<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>{{ $page_title or 'Quick LMS' }}</title>
    
    <!-- Bootstrap Core CSS -->
    <link href="/css/bootstrap.css" rel="stylesheet">


    <!-- Custom CSS -->
    <link href="/css/shop-homepage.css" rel="stylesheet">

  


    <script src="https://use.fontawesome.com/587c409597.js"></script>
</head>
<body>
<!-- Navigation -->
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="row">
                <div class="col-lg-7">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="/">Quick LMS</a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li>
                                <a href="#">About</a>
                            </li>
                            <li>
                                <a href="#">Services</a>
                            </li>
                            <li>
                                <a href="#">Contact</a>
                            </li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <div class="col-lg-5 text-right" style="padding: 10px">
                    @if (Auth::check())
                    <li style="list-style: none;">
                        <a href="" data-toggle="dropdown">
                          <img src="../../image/admin.png" class="user-image" style="width: 40px" alt="User Image">
                          <span class="hidden-xs" style="color: white">{{ Auth::user()->email }}</span>
                        </a>
                        <ul class="dropdown-menu ">
                            <form action="{{ route('auth.logout') }}" method="post">
                                {{ csrf_field() }}
                                <button type="submit" value="Logout" class="btn btn-danger btn-block">Logout</button>
                            </form>
                        </ul>
                    </li>
                    
                        <!-- <div style="color:white; text-align: center">
                            <img class="nav-item dropdown" role="button" src="image/admin.png" style="width: 40px">
                            <p>{{ Auth::user()->email }}</p>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Action</a>
                            
                            <form action="{{ route('auth.logout') }}" method="post">
                                {{ csrf_field() }}
                                <input type="submit" value="Logout" class="btn btn-danger">
                            </form>
                        </div> -->
            
                    @else
                        <form action="{{ route('auth.login') }}" method="post">
                            {{ csrf_field() }}
                            <input type="email" name="email" placeholder="Email" />
                            <input type="password" name="password" placeholder="Password" />
                            <button type="submit" value="Login" class="btn btn-primary">Login</button>
                        </form>
                    @endif
                </div>
            </div>
        </div>
        <!-- /.container -->
    </nav>



    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <div class="col-md-3">

                @yield('sidebar')

            </div>

            <div class="col-md-9">

                <div class="row">

                    @yield('main')

                </div>

            </div>

        </div>

    </div>
    <!-- /.container -->

    <div class="container">

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; 2017 Sikat</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/js/bootstrap.min.js"></script>

</body>

</html>
