@extends('auth.layout_auth')
@section('title', 'Reset Password | Portfolio App')
@section('content')
    <section class="vh-100">
        <div class="container h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card mt-5 mb-5 text-dark border border-dark border-1 rounded-0">
                        <div class="card-body p-5 text-center">
                            <div>
                                <div class="mb-5">
                                    <h2 class="display-6 fw-bold text-center">Reset Password</h2>
                                    <p class="text-center m-0">Please enter your new password below.</p>
                                </div>

                                <div class="mb-5">
                                    <form id="reset-password" action="{{ route('reset.password.post') }}" method="POST">
                                        @csrf
                                        <div class="row gy-3 overflow-hidden">
                                            <input type="hidden" name="email" value="{{ $email }}">
                                            <input type="hidden" name="reset_token" value="{{ $token }}">
                                            <div class="col-12">
                                                <div class="form-floating mb-3">
                                                    <input type="password"
                                                        class="form-control border-1 rounded-0 border-dark" name="password"
                                                        id="password" placeholder="Password" required>
                                                    <label for="password" class="form-label">Password</label>
                                                    <span class="invalid-feedback text-start" id="password-error"></span>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="form-floating mb-3">
                                                    <input type="password"
                                                        class="form-control border-1 rounded-0 border-dark"
                                                        name="password_confirmation" id="password_confirmation"
                                                        placeholder="Confirm Password" required>
                                                    <label for="password_confirmation" class="form-label">Confirm
                                                        Password</label>
                                                    <span class="invalid-feedback text-start"
                                                        id="password_confirmation-error"></span>
                                                </div>
                                            </div>
                                            <div class="col-12">
                                                <div class="d-grid">
                                                    <button class="btn btn-lg btn-dark rounded-0 fs-6" id="submit" type="submit">Change
                                                        Password</button>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@section('script')
    <script>
        $(document).ready(function() {
            $("#reset-password").validate({
                rules: {
                    password: {
                        required: true,
                        minlength: 8
                    },
                    password_confirmation: {
                        required: true,
                        equalTo: "#password"
                    }
                },
                errorPlacement: function(error, element) {
                    var id = element.attr('id');
                    $('#' + id + '-error').text(error.text());
                    element.addClass('is-invalid');
                },
                success: function(label, element) {
                    var id = $(element).attr('id');
                    $('#' + id + '-error').text('');
                    $(element).removeClass('is-invalid');
                }
            });

            $('#reset-password input').on('keyup focusout', function() {
                if ($('#reset-password').valid()) {
                    $('#submit').prop('disabled', false);
                } else {
                    $('#submit').prop('disabled', true);
                }
            });
        });
    </script>

@endsection
