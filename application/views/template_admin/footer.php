<footer class="main-footer">
    <div class="text-center">
        Copyright &copy; 2020 <div class="bullet"></div> Created By <a href="#">Wildan Dawam Bash</a>
    </div>
</footer>
</div>
</div>

<!-- General JS Scripts -->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
    integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
</script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.nicescroll/3.7.6/jquery.nicescroll.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<script src="../assets/js/stisla.js"></script>

<!-- Datatables -->
<script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>


<!-- Template JS File -->
<script src="<?php echo base_url('assets/assets_stisla') ?>/assets/js/scripts.js"></script>
<script src="<?php echo base_url('assets/assets_stisla') ?>/assets/js/custom.js"></script>

<!-- Page Specific JS File -->
<script src="<?php echo base_url('assets/assets_stisla') ?>/assets/js/page/index-0.js"></script>

<script src="https://cdn.datatables.net/buttons/1.6.1/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.flash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.print.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.html5.min.js"></script>

<script>
$(document).on('click', '#btnPrint', function(){
   $(".buttons-print")[0].click(); //trigger the click event
});

$(document).ready(function() {
    $('#all_table').DataTable();
} );

$(document).ready(function() {
    $('#all_table2').DataTable();
} );

$(document).ready(function() {
    $('#mobil').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                text: '<i class="fas fa-print"> Print</i>',
                extend: 'print',
                exportOptions: {
                    columns: [ 0, 2, 3, 4, 5 ]
                },
                className: 'btn btn-success'
            }
        ]
    } );
} );

$(document).ready(function() {
    $('#transaksi').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                text: '<i class="fas fa-print"> Print</i>',
                extend: 'print',
                exportOptions: {
                    columns: [ 0, 1, 2, 3, 4, 5 ]
                },
                className: 'btn btn-success'
            }
        ]
    } );
} );

$(document).ready(function() {
    $('#user').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            {
                text: '<i class="fas fa-print"> Print</i>',
                extend: 'print',
                exportOptions: {
                    columns: [ 0, 1, 2, 3, 4, 5, 6, 7 ]
                },
                className: 'btn btn-success'
            }
        ]
    } );
} );
</script>


<!-- DateTimePicker -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.full.min.js">
</script>
<script>
$('.picker').datetimepicker({
    timepicker: true,
    datepicker: true,
    format: 'd-m-Y H:i', // formatDate
    hours12: false,
    minDate: 0,
    step: 30
});

function disable()
{
 document.onkeydown = function (e) 
 {
  return false;
 }
}
</script>
<!-- END DateTimePicker -->






</body>

</html>