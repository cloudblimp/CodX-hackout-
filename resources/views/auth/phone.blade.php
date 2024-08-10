@extends('auth.layout_auth')
@section('title', 'Continue with Phone | Portfolio App')
@section('content')
    <section class="py-3 py-md-5 py-xl-8">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="mb-5">
                        <h2 class="display-5 fw-bold text-center">Register with Phone</h2>
                        <p class="text-center m-0">Already have an account? <a href="{{ route('login') }}"
                            class="link-primary text-decoration-none">Sign in</a></p>
                        <!-- route('password.reset','klbhjmn') -->
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-12 col-lg-10 col-xl-8">
                    <div class="row gy-5 justify-content-center">
                        <div class="col-12 col-lg-5">
                            <form method="POST" action="{{ route('login') }}">
                                @csrf
                                <div class="row gy-3 overflow-hidden">
                                    <div class="col-12">
                                        <div class="form-floating mb-3">
                                            <input type="email" class="form-control border-1 rounded-0 border-dark"
                                                name="email" id="email" placeholder="name@example.com" required>
                                            <label for="email" class="form-label">Phone Number</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="row justify-content-between">
                                            <div class="col-6">
                                                <div class="form-check">
                                                    <input class="form-check-input border border-1 border-dark" type="checkbox" value=""
                                                        name="remember_me" id="remember_me">
                                                    <label class="form-check-label text-dark" for="remember_me">
                                                        Remember me
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-6">
                                                <div class="text-end">
                                                    <a href="{{ route('password.request') }}"
                                                        class="link-primary text-decoration-none">Forgot password?</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="d-grid">
                                            <button class="btn btn-lg btn-dark rounded-0 fs-6" type="submit">Log
                                                in</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-12 col-lg-2 d-flex align-items-center justify-content-center gap-3 flex-lg-column">
                            <div class="bg-dark h-100 d-none d-lg-block" style="width: 1px; --bs-bg-opacity: .1;"></div>
                            <div class="bg-dark w-100 d-lg-none" style="height: 1px; --bs-bg-opacity: .1;"></div>
                            <div>or</div>
                            <div class="bg-dark h-100 d-none d-lg-block" style="width: 1px; --bs-bg-opacity: .1;"></div>
                            <div class="bg-dark w-100 d-lg-none" style="height: 1px; --bs-bg-opacity: .1;"></div>
                        </div>
                        <div class="col-12 col-lg-5 d-flex align-items-center">
                            <div class="d-flex gap-3 flex-column w-100 ">
                                <a href="{{ route('auth.google') }}"
                                    class="btn bsb-btn-2xl btn-outline-dark rounded-0 d-flex align-items-center">
                                    <i class="fa-brands fa-google"></i>
                                    <span class="ms-2 fs-6 flex-grow-1">Continue with Google</span>
                                </a>
                                <a href="{{ route('auth.github') }}"
                                    class="btn bsb-btn-2xl btn-outline-dark rounded-0 d-flex align-items-center">
                                    <i class="fa-brands fa-github"></i>
                                    <span class="ms-2 fs-6 flex-grow-1">Continue with GitHub</span>
                                </a>
                                <a href="#"
                                    class="btn bsb-btn-2xl btn-outline-dark rounded-0 d-flex align-items-center">
                                    <i class="fa-solid fa-phone"></i>
                                    <span class="ms-2 fs-6 flex-grow-1">Continue with Phone</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection