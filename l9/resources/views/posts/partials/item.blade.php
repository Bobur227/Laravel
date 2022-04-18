<div class="px-4 bg-gray-900 py-8 ml-f max-w-lg rounded-md">
    <div>
        <a href="{{ route("posts.show", $post->id) }}">
            <img src="{{ $post->thumbnail }}">
        </a>
    </div>
    <div class="px-4 py-2 mt-2 text-center">
        <h2 class="font-bold text-2xl text-white">{{ $post->title }}</h2>
        <p class="sm:text-sm text-xs text-white px-2 mr-1 my-3">
            {!! $post->preview !!}
        </p>
    </div>
</div>