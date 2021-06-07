<x-admin-master>
    @section('content')
    <div class="container-fluid">

        <!-- Page Heading -->
        @if(auth()->user()->userHasRole('Admin'))
        <h1 class="h3 mb-4 text-gray-800">Dashboard</h1>
        @endif
    </div>
    @endsection


</x-admin-master>