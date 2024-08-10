<x-mail::message>
# Hey, {{ $username }}!

Have you forgot your password, Reset your password easily by clicking following button.

<x-mail::button :url="$url">
Reset Password
</x-mail::button>

Thanks,<br>
{{ config('app.name') }}
</x-mail::message>
