<div id="editSizeModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">×</button>
                <h3>Edit Size:</h3>
            </div>
            <div class="modal-body form-horizontal">
               <div class="form-group">
                    <div class="col-sm-3">
                        {!! Form::label('size', 'Size:', ['class' => 'control-label']) !!}
                    </div>
                    <div class="col-sm-9">
                        {!! Form::text('size_edit', null, ['class' => 'form-control', 'id' => 'size_edit']) !!}
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button class="btn cancel" data-dismiss="modal"><i class="fa fa-times"></i> &nbsp; Cancel</button>
                <button class="btn btn-primary change" data-dismiss="modal"><i class="fa fa-check"></i> &nbsp; Change
                </button>
            </div>
        </div>
    </div>
</div>
