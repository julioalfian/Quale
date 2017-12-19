<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>{{ $page_title or 'Quale' }}</title>
    
    <!-- Bootstrap Core CSS -->
    <link href="/css/bootstrap.css" rel="stylesheet">


    <!-- Custom CSS -->
    <link href="/css/shop-homepage.css" rel="stylesheet">

    <!-- about -->
    <!-- <link href="/about/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
    <!-- Custom fonts for this template -->
    <link rel="stylesheet" href="/about/vendor/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/about/vendor/simple-line-icons/css/simple-line-icons.css">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">

    <!-- Plugin CSS -->
    <link rel="stylesheet" href="/about/device-mockups/device-mockups.min.css">

    <!-- Custom styles for this template -->
    <link href="/about/css/new-age.css" rel="stylesheet">

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
                        <!-- <a class="navbar-brand" href="/">Quale</a> -->
                        <a href="/"><img src="/image/quale-logo5.png" style="width: 120px; margin-top: 10px; margin-bottom: 10px;margin-right: 30px">
                        </a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    @if (Auth::check())
                    @else
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li>
                                <a href="#features" class="js-scroll-trigger">Features</a>
                            </li>
                            <li>
                                <a href="#about" class="js-scroll-trigger">About</a>
                            </li>
                            <li>
                                <a href="#contact" class="js-scroll-trigger">Contact</a>
                            </li>
                        </ul>
                    </div>
                    @endif
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
            
                    @else
                        <form action="{{ route('auth.login') }}" method="post">
                            {{ csrf_field() }}
                            <div class="row">
                                <div class="col-sm-5">
                                    <input class="form-control" type="email" name="email" placeholder="Email" />    
                                </div>
                                <div class="col-sm-5">
                                    <input class="form-control" type="password" name="password" placeholder="Password" />
                                </div>
                                <button type="submit" value="Login" class="btn btn-primary">Login</button>
                            </div>
                            
                        </form>
                    @endif
                </div>
            </div>
        </div>
        <!-- /.container -->
    </nav>


    @if (Auth::check())
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
    @else
    <header class="masthead" id="home">
      <div class="container h-100">
        <div class="row h-100">
          <div class="col-lg-7 my-auto">
            <div class="header-content mx-auto">
              <h1 class="mb-5">An easy online learning platform for high school student in fun way</h1>
              <a href="#features" class="btn btn-outline btn-xl js-scroll-trigger">Check Features!</a>
            </div>
          </div>
          <div class="col-lg-5 my-auto">
            <div class="device-container">
              <div class="device-mockup iphone6_plus portrait white">
                <div class="device">
                  <div class="screen">
                    <!-- Demo image for screen mockup, you can put an image here, some HTML, an animation, video, or anything else! -->
                    <img src="image/quale-logo4.png" class="img-fluid" alt="">
                  </div>
                  <div class="button">
                    <!-- You can hook the "home button" to some JavaScript events or just remove it -->
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </header>

    <section class="features" id="features">
      <div class="container">
        <div class="section-heading text-center">
          <h2>Features Quale</h2>
          <p class="text-muted">Check out what you can do with this web application!</p>
          <hr>
        </div>
        <div class="row">
          <div class="col-lg-4 my-auto">
            <div class="device-container">
              <div class="device-mockup iphone6_plus portrait white">
                <div class="device">
                  <div class="screen">
                    <!-- Demo image for screen mockup, you can put an image here, some HTML, an animation, video, or anything else! -->
                    <img src="image/quale-logo4.png" class="img-fluid" alt="">
                  </div>
                  <div class="button">
                    <!-- You can hook the "home button" to some JavaScript events or just remove it -->
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-8 my-auto">
            <div class="container-fluid">
              <div class="row">
                <div class="col-lg-6">
                  <div class="feature-item">
                    <i class="icon-book-open text-primary"></i>
                    <h3>Course</h3>
                    <p class="text-muted">Make you understand evert lesson that u already received in school!</p>
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="feature-item">
                    <i class="icon-graph text-primary"></i>
                    <h3>Quiz</h3>
                    <p class="text-muted">Challenge your understanding in every lesson you already learned!</p>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-6">
                  <div class="feature-item">
                    <i class="icon-check text-primary"></i>
                    <h3>Check Plagiarism</h3>
                    <p class="text-muted">Check your assignment with other to make sure that you already did it by yourself!</p>
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="feature-item">
                    <i class="icon-people text-primary"></i>
                    <h3>ChatBot</h3>
                    <p class="text-muted">Learn with fun way is possible with chatBot!</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="cta" id="about">
      <div class="cta-content">
        <div class="container">
          <h2>Easy to Learn<br>and Understand.</h2>
          <a href="#home" class="btn btn-outline btn-xl js-scroll-trigger">Let's Get Started!</a>
        </div>
      </div>
      <div class="overlay"></div>
    </section>

    <section class="contact bg-primary" id="contact">
      <div class="container">
        <h2>Lets connected 
          <i class="fa fa-heart"></i>
          with us!</h2>
        <ul class="list-inline list-social">
          <li class="list-inline-item social-twitter">
            <a href="#">
              <i class="fa fa-twitter"></i>
            </a>
          </li>
          <li class="list-inline-item social-facebook">
            <a href="#">
              <i class="fa fa-facebook"></i>
            </a>
          </li>
          <li class="list-inline-item social-google-plus">
            <a href="#">
              <i class="fa fa-google-plus"></i>
            </a>
          </li>
        </ul>
      </div>
    </section>
    @endif
    

    <div class="container">

        <hr>

        <!-- Footer -->
        <footer style="background-color: white; color: black">
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; 2017 Quale</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/js/bootstrap.min.js"></script>



    <!-- about -->
    <!-- Bootstrap core JavaScript -->
    <script src="/about/vendor/jquery/jquery.min.js"></script>
    <script src="/about/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="/about/vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="/about/js/new-age.min.js"></script>

</body>

</html>
