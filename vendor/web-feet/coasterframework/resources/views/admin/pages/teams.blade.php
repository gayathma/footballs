<div class="row textbox">
    <div class="col-sm-6">
        <h1>Teams List</h1>
    </div>
</div>

<div class="table-responsive">
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>#</th>
            <th>Grassroots Team Name</th>
            <th>Age Group</th>
            <th>Post Code</th>
            <th>Contact Name</th>
            <th>Position</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Code</th>
            <th>Comments</th>
        </tr>
        </thead>
        <tbody>
        @foreach ($teams as $team)
            <tr id="team_{!! $team->id !!}">
                <td>{!! $team->id !!}</td>
                <td>{!! $team->team_name !!}</td>
                <td>{!! $team->age_group !!}</td>
                <td>{!! $team->postcode !!}</td>
                <td>{!! $team->first_name.' '.$team->last_name !!}</td>
                <td>{!! $team->position !!}</td>
                <td>{!! $team->email !!}</td>
                <td>{!! $team->phone !!}</td>
                <td>{!! $team->code !!}</td>
                <td>{!! $team->comments !!}</td>
            </tr>
        @endforeach
        </tbody>
    </table>
</div>
