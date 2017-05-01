<div class="row textbox">
    <div class="col-sm-6">
        <h1>Item Sizes List</h1>
    </div>
    <div class="col-sm-6 text-right">
        @if ($can_add == true)
            <a href="{{ route('coaster.admin.sizes.add') }}" class="btn btn-warning addButton"><i class="fa fa-plus"></i> &nbsp;
                Add Size</a>
        @endif
    </div>
</div>

<div class="table-responsive">
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>#</th>
            <th>Size</th>
            <th>Date Created</th>
            @if ($can_edit || $can_delete)
                <th>Actions</th>
            @endif
        </tr>
        </thead>
        <tbody>
        @foreach ($sizes as $size)
            <tr id="size_{!! $size->id !!}">
                <td>{!! $size->id !!}</td>
                <td>{!! $size->size !!}</td>
                <td>{!! DateTimeHelper::display($size->created_at) !!}</td>
                @if ($can_edit || $can_delete)
                    <td data-uid="{!! $size->id !!}">
                        @if ($can_edit)
                            <a class="glyphicon glyphicon-pencil itemTooltip" href="{{ route('coaster.admin.sizes.edit', ['sizeId' => $size->id]) }}" title="Edit Size"></a>
                        @endif
                        @if ($can_delete)
                            <i class="glyphicon glyphicon-remove itemTooltip" title="Remove Size"
                               data-name="{!! $size->id !!}"></i>
                        @endif
                    </td>
                @endif
            </tr>
        @endforeach
        </tbody>
    </table>
</div>

@section('scripts')
    <script type="text/javascript">


        $(document).ready(function () {

            watch_for_delete('.glyphicon-remove', 'size', function (el) {
                var size_id = el.parent().attr('data-uid');
                    return 'size_' + size_id;
            });
        });

    </script>
@stop