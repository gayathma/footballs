<?php AssetBuilder::setStatus('cms-editor', true); ?>

<h1>Order #<?php echo $order->id?></h1>

{!! Form::open(['class' => 'form-horizontal', 'id' => 'editForm', 'enctype' => 'multipart/form-data']) !!}

<table class="table table-bordered">
    <tbody>
    <tr>
        <td>Customer Name</td>
        <td>{!! $order->user->name !!}</td>
    </tr>
    <tr>
        <td>Customer Email</td>
        <td>{!! $order->user->email !!}</td>
    </tr>
    <tr>
         <td>Team Name</td>
        <td>{!! $order->team_name !!}</td>
    </tr>
    <tr>
         <td>Shipping Address</td>
        <td>{!! $order->shipping_addess !!}</td>
    </tr>
    <tr>
         <td>Order Comments</td>
        <td>{!! $order->comments !!}</td>
    </tr>
    <tr>
        <td>Items</td>
        <td>
            <?php 
            if(!is_null($order->items)):
                ?>
            <table class="table table-bordered">
                 <tbody>
                    <tr>
                        <td>#</td>
                        <td>Size</td>
                        <td>Quality</td>
                        <td>Quantity</td>
                        <td>Amount</td>
                    </tr>
            <?php
                $count = 0;
                foreach ($order->items as $item):
            ?>
                    <tr>
                        <td>{!! ++$count !!}</td>
                    
                        <td>{!! $item->size->size !!}</td>
                   
                        <td>{!! $item->sku !!}</td>
                        
                        <td>{!! $item->quantity !!}</td>
                   
                        <td>{!! $item->displayPrice !!}</td>
                    </tr>

                 <?php endforeach;?>
                 <tr>
                    <td colspan="4" align="center"><strong>Total Amount</strong></td>
                    <td><strong>{!! $order->getDisplayTotalPriceAttribute() !!}</strong></td>
                 </tr>
                </tbody>
            </table>
            <?php endif;?>
        </td>
    </tr>
    <tr>
        <td>Order Details</td>
        <td><a href="{{ route('coaster.admin.orders.download', ['orderId' => $order->id]) }}">Download Here</a></td>
    </tr>
    <tr>
        <td>Order Date</td>
        <td>{!! DateTimeHelper::display($order->created_at) !!}</td>
    </tr>

    </tbody>
</table>

{!! Form::close() !!}
