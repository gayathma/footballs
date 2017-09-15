<div class="row textbox">
    <div class="col-sm-6">
        <h1>Orders List</h1>
    </div>
    <div class="col-sm-6 text-right">
        @if ($can_export)
            <a href="{{ $export_link }}" class="btn btn-warning addButton" target="_blank"><i
                        class="fa fa-share-square-o"></i> &nbsp; Export</a>
        @endif
    </div>

</div>

<div class="table-responsive">
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>#</th>
            <th>Customer</th>
            <th>Email</th>
            <th>Team Name</th>
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
                <td>{!! $order->user->email !!}</td>
                <td>{!! $order->team_name !!}</td>
                <td>
                    <?php 
                    $count  = 0;
                    foreach ($order->items as $item):
                        $count += $item->quantity;
                    ?>
                    <?php endforeach;?>
                    <?php echo $count;?>
                </td>
                <td>
                    {!! $order->getDisplayTotalPriceAttribute() !!}
                    <?php if(!is_null($order->transactions) && count($order->transactions) > 0):?>
                        <span class="label type_link">Paid</span>
                    <?php else: ?>
                        <span class="label type_hidden">Not Paid</span>
                    <?php endif;?>
                </td>
                <td>
                    <?php if($order->isStatus('in_creation')):?>
                        <span class="in_creation"> In Creation</span>
                    <?php endif;?>
                    <?php if($order->isStatus('pending')):?>
                        <span class="pending"> Pending</span>
                    <?php endif;?>
                    <?php if($order->isStatus('in_process')):?>
                        <span class="in_process"> In Process</span>
                    <?php endif;?>
                    <?php if($order->isStatus('completed')):?>
                        <span class="completed"> Completed</span>
                    <?php endif;?>
                    <?php if($order->isStatus('failed')):?>
                        <span class="failed"> Failed</span>
                    <?php endif;?>
                    <?php if($order->isStatus('canceled')):?>
                        <span class="canceled"> Canceled</span>
                    <?php endif;?>
                </td>
                <td>{!! DateTimeHelper::display($order->created_at) !!}</td>
                @if ($can_edit || $can_delete)
                    <td data-uid="{!! $order->id !!}">
                        @if ($can_edit)
                            <a class="glyphicon glyphicon-pencil itemTooltip" href="{{ route('coaster.admin.orders.edit', ['orderId' => $order->id]) }}" title="Edit Order"></a>
                        @endif
                        @if ($can_delete)
                            <i class="glyphicon glyphicon-remove itemTooltip" title="Remove Order"
                               data-name="{!! $order->id !!}"></i>
                        @endif
                    </td>
                @endif
            </tr>
        @endforeach
        </tbody>
    </table>
    <div class="text-center">
                @if(isset($orders))
                    {!! $orders->render() !!}
                @endif
            </div>
</div>

@section('scripts')
    <script type="text/javascript">


        $(document).ready(function () {

            watch_for_delete('.glyphicon-remove', 'order', function (el) {
                var order_id = el.parent().attr('data-uid');
                    return 'order_' + order_id;
            });
        });

    </script>
@stop