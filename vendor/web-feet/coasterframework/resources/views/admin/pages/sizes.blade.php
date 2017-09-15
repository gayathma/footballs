<div class="row textbox">
    <div class="col-sm-6">
        <h1>Item Sizes List</h1>
    </div>
    <div class="col-sm-6 text-right">
        @if ($can_add == true)
            <div class="col-lg-2 col-md-3 col-sm-3 text-right">
                <button type="button" class="btn btn-warning addButton" id="addSize"><i class="fa fa-plus"></i> &nbsp; Add Size
                </button>
            </div>
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
                            <i class="editsize glyphicon glyphicon-pencil itemTooltip" data-name="{!! $size->size !!}"
                                title="Edit Size"></i>&nbsp;
                        @endif
                        @if ($can_delete)
                            <i class="glyphicon glyphicon-remove itemTooltip" title="Remove Size"
                               data-name="{!! $size->size !!}"></i>
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
        var selected_item;

        $(document).ready(function () {
            watch_for_delete('.glyphicon-remove', 'size', function (el) {
                var size_id = el.parent().attr('data-uid');
                    return 'size_' + size_id;
            });

            $('#addSize').click(function () {
                $('#addSizeModal').modal('show');
            });

            $('#addSizeModal .add').click(function () {
                if ($('#size').val() == "") {
                    $('#size').parent().parent().addClass('has-error');
                }
                else {
                    $('#addSizeModal').modal('hide');
                    $.ajax({
                        url: route('coaster.admin.sizes.add'),
                        type: 'POST',
                        dataType: 'json',
                        data: {size: $('#size').val()},
                        success: function (data) {
                            location.reload();
                        }
                    });
                    $('#size').parent().parent().removeClass('has-error');
                    $('#size').val('');
                }
            });

            $('.editsize').click(function () {
                selected_item = $(this).parent().attr('data-uid');
                $('#size_edit').val($(this).attr('data-name'));
                $('#editSizeModal').modal('show');
            });

            $('#editSizeModal .change').click(function () {
                if ($('#size_edit').val() == "") {
                    $('#size_edit').parent().parent().addClass('has-error');
                }
                $.ajax({
                    url: route('coaster.admin.sizes.edit'),
                    type: 'POST',
                    data: {id: selected_item, size: $('#size_edit').val()},
                    success: function (r) {
                        if (r % 1 === 0) {
                            location.reload();
                        }
                        else {
                            cms_alert('danger', 'Error updating size');
                        }
                    }
                });
                $('#size_edit').parent().parent().removeClass('has-error');
                $('#size_edit').val('');
            });
        });

    </script>
@stop