<div class="content-wrapper">
    <section class="content-header">
        <h1>Knyga</h1>
    </section>
    <section class="content" id="product">
        <?php foreach($books as $book){ ?>
            <div class="book">
                <h2 id="<?php echo $book->id; ?>"><?php echo $book->title; ?></h2>
                <p class="meta"><?php echo "Autorius: ".$book->author . ", Literatūros žanras: " . $book->genre; ?></p>
                <p class="desc">Aprašymas:<br/><?php echo $book->description; ?></p>
                <div class="orderIt">Užsisakyti</div>
            </div>
        <?php } ?>
    </section>
</div>
<div class="popUpBg">
    <div class="popUpWrapper">
        <h3>Užsakymo formą</h3>
        <p>Norėdami užsakyti šią knygą užpildykite formą apačioje.</p>
        <p class="notice"></p>
        <form>
            <input type="hidden" name="book_id" >
            <input type="text" placeholder="Vardas" name="name">
            <input type="email" placeholder="El. paštas" name="email" >
            <input type="number" placeholder="telefonas" name="phone">
        </form>
        <div class="buttons">
            <div class="btn btn-danger" id="cancel">Atšaukti</div>
            <div class="btn btn-success" id="submit">Siųsti</div>
        </div>
    </div>
</div>
<script>
$(document).ready(function(){
    $("#submit").on("click", function(){
        if(!is_empty()){
            $.ajax({
                method: "POST",
                url: "<?php echo base_url(); ?>",
                data: $("form").serialize(),
                success: function (data) {
                    $(".notice").html(data);
                    if(data.indexOf("knyga") != -1){
                    }
                    if(data.indexOf("telefonas") != -1){
                        $("input[name='phone']").css("border", "1px solid #be1e24");
                    }
                    if(data.indexOf("paštas") != -1){
                        $("input[name='email']").css("border", "1px solid #be1e24");
                    }
                    if(data.indexOf("vardas") != -1){
                        $("input[name='name']").css("border", "1px solid #be1e24");
                    }
                    if(data.indexOf("sėkmingai") != -1){
                        $("form, #submit").hide();
                        $(".notice").css("color", "#00a65a");
                        $("#cancel").removeClass("btn-danger");
                        $("#cancel").addClass("btn-success");
                        $("#cancel").text("Ačiū!");
                    }
                },
            });
        }
    });

    function is_empty(){
        var empty = "";
        $("form input").each(function(){
            if($(this).attr("name") != "book_id"){
                if($(this).val() == ''){
                    $(this).css("border", "1px solid #be1e24");
                    empty += "<i class='fa fa-exclamation-circle' aria-hidden='true'></i> Laukelis "+$(this).attr("placeholder")+" yra privalomas<br>";
                }
                else{
                    $(this).css("border", "1px solid #eee");
                }
            }
        });
        if(empty != ""){
            //$("#formH2").show();
            //$(".alert").remove();
            $(".notice").html(empty);
            return true;
        }
        return false;
    }
});
</script>