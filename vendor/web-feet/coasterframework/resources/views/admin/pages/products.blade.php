<div class="row textbox">
    <div class="col-sm-6">
        <h1>Product List</h1>
    </div>
    <div class="col-sm-6 text-right">
        @if ($can_add == true)
            <div class="col-lg-2 col-md-3 col-sm-3 text-right">
                <button type="button" class="btn btn-warning addButton" id="addProduct"><i class="fa fa-plus"></i> &nbsp; Add Product
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
            <th>Product Name</th>
            <th>1 Or 2 Price</th>
            <th>3 Or 4 Price</th>
            <th>5 Or 9 Price</th>
            <th>10 Or 15 Price</th>
            <th>16 Or 24 Price</th>
            <th>25+ Price</th>
            <th>50+ Price</th>
            @if ($can_edit || $can_delete)
                <th>Actions</th>
            @endif
        </tr>
        </thead>
        <tbody>
        @foreach ($products as $product)
            <tr id="product_{!! $product['id'] !!}">
                <td>{!! $product['id']!!}</td>
                <td>{!! $product['product_name'] !!}</td>
                <td>{!! $product['1_2_price']!!}</td>
                <td>{!! $product['3_4_price'] !!}</td>
                <td>{!! $product['5_9_price'] !!}</td>
                <td>{!! $product['10_15_price'] !!}</td>
                <td>{!! $product['16_24_price'] !!}</td>
                <td>{!! $product['25_49_price'] !!}</td>
                <td>{!! $product['50_5000_price'] !!}</td>
                @if ($can_edit || $can_delete)
                    <td data-uid="{!! $product['id'] !!}">
                        @if ($can_edit)
                            <a class="glyphicon glyphicon-pencil itemTooltip" href="{{ route('coaster.admin.products.edit', ['productId' => $product['id']]) }}" title="Edit Product"></a>
                        @endif
                        @if ($can_delete)
                            <i class="glyphicon glyphicon-remove itemTooltip" title="Remove Product"
                               data-name="{!! $product['product_name'] !!}"></i>
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
            watch_for_delete('.glyphicon-remove', 'product', function (el) {
                var product_id = el.parent().attr('data-uid');
                    return 'product_' + product_id;
            });

            $('#addProduct').click(function () {
                $('#addProductModal').modal('show');
            });

            $('#addProductModal .add').click(function () {
                if ($('#product_name').val() == "") {
                    $('#product_name').parent().parent().addClass('has-error');
                }else if ($('#1_2_price').val() == "" || (!$.isNumeric($('#1_2_price').val()))) {
                    $('#1_2_price').parent().parent().addClass('has-error');
                }else if ($('#3_4_price').val() == "" || (!$.isNumeric($('#3_4_price').val()))) {
                    $('#3_4_price').parent().parent().addClass('has-error');
                }else if ($('#5_9_price').val() == "" || (!$.isNumeric($('#5_9_price').val()))) {
                    $('#5_9_price').parent().parent().addClass('has-error');
                }else if ($('#10_15_price').val() == "" || (!$.isNumeric($('#10_15_price').val()))) {
                    $('#10_15_price').parent().parent().addClass('has-error');
                }else if ($('#16_24_price').val() == "" || (!$.isNumeric($('#16_24_price').val()))) {
                    $('#16_24_price').parent().parent().addClass('has-error');
                }else if ($('#25_49_price').val() == "" || (!$.isNumeric($('#25_49_price').val()))) {
                    $('#25_49_price').parent().parent().addClass('has-error');
                }else if ($('#50_5000_price').val() == "" || (!$.isNumeric($('#50_5000_price').val()))) {
                    $('#50_5000_price').parent().parent().addClass('has-error');
                }else {
                    $('#addProductModal').modal('hide');
                    $.ajax({
                        url: route('coaster.admin.products.add'),
                        type: 'POST',
                        dataType: 'json',
                        data: {
                            product_name: $('#product_name').val(),
                            '1_2_price': $('#1_2_price').val(),
                            '3_4_price': $('#3_4_price').val(),
                            '5_9_price': $('#5_9_price').val(),
                            '10_15_price': $('#10_15_price').val(),
                            '16_24_price': $('#16_24_price').val(),
                            '25_49_price': $('#25_49_price').val(),
                            '50_5000_price': $('#50_5000_price').val()
                        },
                        success: function (data) {
                            location.reload();
                        }
                    });
                    $('#product_name').parent().parent().removeClass('has-error');
                    $('#product_name').val('');
                    $('#1_2_price').parent().parent().removeClass('has-error');
                    $('#1_2_price').val('');
                    $('#3_4_price').parent().parent().removeClass('has-error');
                    $('#3_4_price').val('');
                    $('#5_9_price').parent().parent().removeClass('has-error');
                    $('#5_9_price').val('');
                    $('#10_15_price').parent().parent().removeClass('has-error');
                    $('#10_15_price').val('');
                    $('#16_24_price').parent().parent().removeClass('has-error');
                    $('#16_24_price').val('');
                    $('#25_49_price').parent().parent().removeClass('has-error');
                    $('#25_49_price').val('');
                    $('#50_5000_price').parent().parent().removeClass('has-error');
                    $('#50_5000_price').val('');


                }
            });
        });

    </script>
@stop