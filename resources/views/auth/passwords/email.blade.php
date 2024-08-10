@extends('auth.layout_auth')
@section('title', 'Reset Password')
@section('content')
    <section class="vh-100">
        <div class="container h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card mt-5 mb-5 text-dark border border-dark border-1 rounded-0">
                        <div class="card-body p-5 text-center">
                            {{-- Email Form --}}
                            <div class="">
                                <div class="mb-5">
                                    <h2 class="display-6 fw-bold text-center">Forgot Password?</h2>
                                    <p class="text-center m-0">Enter your email address, and we'll send you a
                                        link to get back into your account.</p>
                                </div>

                                <div class="mb-5">
                                    <form method="POST" action="{{ route('forget.password.post') }}">
                                        @csrf
                                        <div class="row gy-3 overflow-hidden">
                                            <div class="col-12">
                                                <div class="form-floating mb-3">
                                                    <input type="email"
                                                        class="form-control border-1 rounded-0 border-dark" name="email"
                                                        id="email" placeholder="name@example.com" required>
                                                    <label for="email" class="form-label">Email</label>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="d-grid">
                                                    <button class="btn btn-lg btn-dark rounded-0 fs-6" type="submit">Send
                                                        Link</button>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="row justify-content-between">
                                                    <div class="col-6">
                                                        <div class="text-start">
                                                            <a href="{{ route('login') }}"
                                                                class="link-dark text-decoration-none">Login</a>
                                                        </div>
                                                    </div>
                                                    <div class="col-6">
                                                        <div class="text-end">
                                                            <a href="{{ route('register') }}"
                                                                class="link-dark text-decoration-none">Register</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                            {{-- Email Sent --}}
                            <div class="d-none">
                                <div class="mb-5">
                                    <h2 class="display-6 fw-bold text-center">Email sent</h2>
                                    <p class="text-left m-0">We sent you an email. Follow the instructions to get back into
                                        your account.</p>
                                </div>

                                <div class="mb-5">
                                    <div class="row gy-3 overflow-hidden">
                                        <div class="col-12">
                                            <div class="d-grid">
                                                <a class="btn btn-lg btn-dark rounded-0 fs-6"
                                                    href="{{ route('login') }}">Back to login</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
