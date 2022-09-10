<script type="text/javascript">
  $("#listuser").DataTable(
  );

  function confirmdelete(linkdelete) {
    alertify.confirm("Apakah anda yakin akan  menghapus dong data tersebut?", function() {
    location.href = linkdelete;
    }, function() {
      alertify.error("Penghapusan data dibatalkan.");
    });
    $(".ajs-header").html("Konfirmasi");
      return false;
    }
</script>

<!-- member list -->
<script type="text/javascript">
            $(document).ready(function() {
                $.fn.dataTableExt.oApi.fnPagingInfo = function(oSettings)
                {
                    return {
                        "iStart": oSettings._iDisplayStart,
                        "iEnd": oSettings.fnDisplayEnd(),
                        "iLength": oSettings._iDisplayLength,
                        "iTotal": oSettings.fnRecordsTotal(),
                        "iFilteredTotal": oSettings.fnRecordsDisplay(),
                        "iPage": Math.ceil(oSettings._iDisplayStart / oSettings._iDisplayLength),
                        "iTotalPages": Math.ceil(oSettings.fnRecordsDisplay() / oSettings._iDisplayLength)
                    };
                };

                var t = $("#mytableActivation").DataTable({
                    initComplete: function() {
                        var api = this.api();
                        $('#mytable_filter input')
                                .off('.DT')
                                .on('keyup.DT', function(e) {
                                    if (e.keyCode != 13) {
                                        api.search(this.value).draw();
                            }
                        });
                    },
                    oLanguage: {
                        sProcessing: "loading..."
                    },
                    scrollCollapse : true,
                    processing: true,
                    serverSide: true,
                    ajax: {"url": "activation/json", "type": "POST"},
                    columns: [
                         {
                            "data": "id",
                            "orderable": false,
                            "className" : "text-center"
                        },
                        {
                            "data": "id",
                            "orderable": false
                        },
                            // {"data": "ip_address"},
                            {"data": "username"},
                            {"data": "last_name"},                            
                            // {"data": "fullname"},
                            // {"data": "password"},
                            // {"data": "salt"},
                            // {"data": "email"},
                            // {"data": "activation_code"},
                            // {"data": "forgotten_password_code"},
                            // {"data": "forgotten_password_time"},
                            // {"data": "remember_code"},
                            // {"data": "created_on"},
                            // {"data": "last_login"},
                            // {"data": "active"},
                            {"data": "tujuan"},
                            // {"data": "phone"},
                        {
                            "data" : "action",
                            "orderable": false,
                            "className" : "text-center"
                        },
                        {
                            "data" : "activation",
                            "orderable": false,
                            "className" : "text-center"
                        }
                    ],
                    columnDefs: [
                        {
                            className: "text-center",
                            targets: 0,
                            checkboxes: {
                                selectRow: true,
                            }
                        }

                    ],
                    select:{
                        style: 'multi'
                    },
                    order: [[1, 'desc']],
                    rowCallback: function(row, data, iDisplayIndex) {
                        var fullname = `${data.first_name} ${data.last_name == null ? '':data.last_name}`
                        var info = this.fnPagingInfo();
                        var page = info.iPage;
                        var length = info.iLength;
                        var index = page * length + (iDisplayIndex + 1);
                        $('td:eq(3)', row).html(fullname);
                        $('td:eq(1)', row).html(index);
                        if (data.activation_code !== 200) {
                            $('td:eq(5)', row).html('<div class="btn btn-warning">Peserta belum Aktif</div>');
                            // $('td:eq(5)', row).html('<button href="" onclick="return confirmdelete(activation/aktivasi/'+data.id+')" class="btn btn-primary">Aktivasi</button>');
                            $('td:eq(6)', row).html('<a href="activation/aktivasi/'+data.id+'" class="btn btn-primary">Aktivasi</a>');
                        }else{
                            $('td:eq(5)', row).html('<div class="btn btn-success">Peserta sudah Aktif</div>');
                            $('td:eq(6)', row).html('<a href="activation/deaktivasi/'+data.id+'" class="btn btn-danger">Deaktivasi</a>');
                        }
                    }
                });
                $('#myform').keypress(function(e){
                    if ( e.which == 13 ) return false;

                });
                 $("#aktivasi").on('click', function(e){
                    var form = this
                    var rowsel = t.column(0).checkboxes.selected();
                    $.each(rowsel, function(index, rowId){
                        $(form).append(
                            $('<input>').attr('type','hidden').attr('name','id[]').val(rowId)
                        )
                    });

                    if(rowsel.join(",") == ""){
                        alertify.alert('', 'Tidak ada data terpilih!', function(){ });

                    }else{
                        var prompt =  alertify.confirm('Apakah anda yakin akan mengaktifkan data tersebut?', 'Apakah anda yakin akan mengaktifkan data tersebut?').set('labels', {ok:'Yakin', cancel:'Batal!'}).set('onok',function(closeEvent){
                            $.ajax({
                                url: "activation/aktifbulk",
                                type: "post",
                                data: "msg = "+rowsel.join(",") ,
                                success: function (response) {
                                    if(response == true){
                                        location.reload();
                                    }
                                },
                                error: function(jqXHR, textStatus, errorThrown) {
                                   console.log(textStatus, errorThrown);
                                }
                            });

                        });
                    }
                    $(".ajs-header").html("Konfirmasi");
                });
                 $("#deaktivasi").on('click', function(e){
                    var form = this
                    var rowsel = t.column(0).checkboxes.selected();
                    $.each(rowsel, function(index, rowId){
                        $(form).append(
                            $('<input>').attr('type','hidden').attr('name','id[]').val(rowId)
                        )
                    });

                    if(rowsel.join(",") == ""){
                        alertify.alert('', 'Tidak ada data terpilih!', function(){ });

                    }else{
                        var prompt =  alertify.confirm('Apakah anda yakin akan mengdeaktifkan data tersebut?', 'Apakah anda yakin akan mengaktifkan data tersebut?').set('labels', {ok:'Yakin', cancel:'Batal!'}).set('onok',function(closeEvent){
                            $.ajax({
                                url: "activation/deaktvasibulk",
                                type: "post",
                                data: "msg = "+rowsel.join(",") ,
                                success: function (response) {
                                    if(response == true){
                                        location.reload();
                                    }
                                },
                                error: function(jqXHR, textStatus, errorThrown) {
                                   console.log(textStatus, errorThrown);
                                }
                            });

                        });
                    }
                    $(".ajs-header").html("Konfirmasi");
                });
            });
            // function confirmdelete(linkaktivasi) {
            //   alertify.confirm("Apakah anda yakin akan  mengaktifkan data tersebut?", function() {
            //     location.href = linkaktivasi;
            //   }, function() {
            //     alertify.error("Penghapusan data dibatalkan.");
            //   });
            //   $(".ajs-header").html("Konfirmasi");
            //   return false;
            // }
</script>