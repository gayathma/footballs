<div class="row textbox">
    <div class="col-sm-6">
        <h1>Orders List</h1>
    </div>

</div>

<div class="table-responsive">
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>#</th>
            <th>Customer</th>
            <th>No of Items</th>
            <th>Total Amount</th>
            <th>Status</th>
            <th>Order Date</th>
            @if ($can_edit || $can_delete)
                <th>Actions</th>
            @endif
        </tr>
        </thead>
        <tbody>
        @foreach ($orders as $order)
            <tr id="order_{!! $order->id !!}">
                <td>{!! $order->id !!}</td>
                <td>{!! $order->user->name !!}</td>
                <td>{!! count($order->items) !!}</td>
                <td>{!! $order->getDisplayTotalPriceAttribute() !!}</td>
                <td>{!! count($order->items) !!}</td>
                <td>{!! $order->created_at !!}</td>
                @if ($can_edit || $can_delete)
                    <td data-uid="{!! $order->id !!}">
                        @if ($can_edit)
                            <a class="glyphicon glyphicon-pencil itemTooltip" href="{{ route('coaster.admin.orders.edit', ['orderId' => $order->id]) }}" title="Edit Order"></a>
                        @endif
                        @if ($can_delete)
                            <i class="glyphicon glyphicon-remove itemTooltip" title="Remove Order"
                               data-name="{!! $order->email !!}"></i>
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

            watch_for_delete('.glyphicon-remove', 'user', function (el) {
                var user_id = el.parent().attr('data-uid');
                if (user_id == {!! Auth::user()->id !!}) {
                    alert('Can\'t delete your own account');
                    return false;
                } else {
                    return 'user_' + user_id;
                }
            });
        });

    </script>
@stop