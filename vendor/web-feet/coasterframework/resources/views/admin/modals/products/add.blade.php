<div id="addProductModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">×</button>
                <h3>Add Product:</h3>
            </div>
            <div class="modal-body form-horizontal">
                <div class="form-group">
                    <div class="col-sm-3">
                        {!! Form::label('product_name', 'Product Name:', ['class' => 'control-label']) !!}
                    </div>
                    <div class="col-sm-9">
                        {!! Form::text('product_name', null, ['class' => 'form-control']) !!}
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-3">
                        {!! Form::label('1_2_price', '1 Or 2 Price:', ['class' => 'control-label']) !!}
                    </div>
                    <div class="col-sm-9">
                        {!! Form::text('1_2_price', null, ['class' => 'form-control']) !!}
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-3">
                        {!! Form::label('3_4_price', '3 Or 4 Price:', ['class' => 'control-label']) !!}
                    </div>
                    <div class="col-sm-9">
                        {!! Form::text('3_4_price', null, ['class' => 'form-control']) !!}
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-3">
                        {!! Form::label('5_9_price', '5 Or 9 Price:', ['class' => 'control-label']) !!}
                    </div>
                    <div class="col-sm-9">
                        {!! Form::text('5_9_price', null, ['class' => 'form-control']) !!}
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-3">
                        {!! Form::label('10_15_price', '10 Or 15 Price:', ['class' => 'control-label']) !!}
                    </div>
                    <div class="col-sm-9">
                        {!! Form::text('10_15_price', null, ['class' => 'form-control']) !!}
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-3">
                        {!! Form::label('16_24_price', '16 Or 24 Price:', ['class' => 'control-label']) !!}
                    </div>
                    <div class="col-sm-9">
                        {!! Form::text('16_24_price', null, ['class' => 'form-control']) !!}
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-3">
                        {!! Form::label('25_49_price', '25+ Price:', ['class' => 'control-label']) !!}
                    </div>
                    <div class="col-sm-9">
                        {!! Form::text('25_49_price', null, ['class' => 'form-control']) !!}
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-3">
                        {!! Form::label('50_5000_price', '50+ Price:', ['class' => 'control-label']) !!}
                    </div>
                    <div class="col-sm-9">
                        {!! Form::text('50_5000_price', null, ['class' => 'form-control']) !!}
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn cancel" data-dismiss="modal"><i class="fa fa-times"></i> &nbsp; Cancel</button>
                <button class="btn btn-primary add"><i class="fa fa-plus"></i> &nbsp; Add</button>
            </div>
        </div>
    </div>
</div>