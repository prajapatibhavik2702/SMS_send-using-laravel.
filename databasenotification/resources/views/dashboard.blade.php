<div>
    @foreach ($user->notifications as $notification)
        <div class="bg-blue-300 p-3">
            {{ $notification->data['name'] }}  start fol,,,,,view
        </div>
    @endforeach
</div>
