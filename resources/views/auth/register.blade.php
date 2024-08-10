@extends('auth.layout_auth')
@section('title', 'Register | Portfolio App')
@section('content')
    <section class="vh-100">
        <div class="container h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card mt-5 mb-5 text-dark border border-dark border-1 rounded-0">
                        <div class="card-body p-5 text-center">
                            <div>
                                <div class="mb-5">
                                    <div class="text-center">
                                        <img width="50" height="50" src="{{ asset('images/logo1.png') }}"
                                            alt="PortfolioNest">
                                    </div>
                                    <p class="fs-3 fw-bold text-center mb-0">Sign up to PortfolioNest</p>
                                    <p class="text-center m-0">Already have an account? <a href="{{ route('login') }}"
                                            class="link-primary text-decoration-none">Sign in</a></p>
                                </div>

                                <div class="mb-4">
                                    <form method="POST" action="{{ route('register') }}">
                                        @csrf
                                        <div class="row gy-3 overflow-hidden">
                                            <div class="col-12">
                                                <div class="form-floating mb-3">
                                                    <input type="text"
                                                        class="form-control  border-1 rounded-0 border-dark" name="name"
                                                        id="name" placeholder="User Name" required>
                                                    <label for="name" class="form-label">User Name</label>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-floating mb-3">
                                                    <input type="email"
                                                        class="form-control border-1 rounded-0 border-dark" name="email"
                                                        id="email" placeholder="name@example.com" required>
                                                    <label for="email" class="form-label">Email</label>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-floating mb-3">
                                                    <input type="password"
                                                        class="form-control border-1 rounded-0 border-dark" name="password"
                                                        id="password" value="" placeholder="Password" required>
                                                    <label for="password" class="form-label">Password</label>
                                                </div>
                                            </div>
                                            
                                            <div class="col-12">
                                                <div class="d-grid">
                                                    <button class="btn btn-lg btn-dark rounded-0 fs-6"
                                                        type="submit">Signup</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>

                                <hr class="w-75 border-3 border-dark rounded-0 mx-auto">

                                <div class="d-flex mt-4 gap-3 flex-column w-100 ">
                                    <a href="{{ route('auth.google') }}"
                                        class="btn bsb-btn-2xl btn-outline-dark rounded-0 d-flex align-items-center">
                                        <i class="fa-brands fa-google"></i>
                                        <span class="ms-2 fs-6 flex-grow-1">Continue with Google</span>
                                    </a>
                                    <a href="{{ route('auth.phone') }}"
                                        class="btn bsb-btn-2xl btn-outline-dark rounded-0 d-flex align-items-center">
                                        <i class="fa-solid fa-phone"></i>
                                        <span class="ms-2 fs-6 flex-grow-1">Continue with Phone Number</span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
