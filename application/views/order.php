<div class="content-wrapper">
    <section class="content-header">
        <h1>Užsakymai</h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <h3 class="box-title">Užsakymų sąrašas</h3>
                    </div>
                    <div class="box-body">
                        <table id="comments" class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>Id</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Phone</th>
                                <th>Title</th>
                                <th>Date</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php foreach($orders as $order){
                                echo "<tr>";
                                echo "<td>".$order->id."</td>";
                                echo "<td>".$order->name."</td>";
                                echo "<td>".$order->email."</td>";
                                echo "<td>".$order->phone."</td>";
                                echo "<td>".$books[$order->book_id]->title."</td>";
                                echo "<td>".$order->date."</td>";
                                echo "</tr>";
                            } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

    </section>
</div>
<script>
    $(document).ready(function(){
        $('#comments').DataTable();
    });
</script>