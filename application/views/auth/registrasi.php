<?php      
  $pengaturan=$this->Pengaturan_model->get_by_id_1();
?>
<!DOCTYPE html>
<html>
<head>
  <link href='<?= base_url('assets/dist/img/'.$pengaturan->logo) ?>' rel='icon' type='image/png'/>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title><?= $this->config->item('title')?> <?php echo strtoupper($pengaturan->nama_sekolah) ?></title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <!-- <link rel="stylesheet" href="<?= base_url();?>assets/bower_components/bootstrap/dist/css/bootstrap.min.css"> -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <!-- Font Awesome -->
  <!-- <link rel="stylesheet" href="<?= base_url();?>assets/bower_components/fontawesome/css/all.min.css"> -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
  <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.2/css/fontawesome.min.css" integrity="sha384-X8QTME3FCg1DLb58++lPvsjbQoCT9bp3MsUU3grbIny/3ZwUJkRNO8NPW6zqzuW9" crossorigin="anonymous"> -->
  <!-- Ionicons -->
  <link rel="stylesheet" href="<?= base_url();?>assets/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?= base_url();?>assets/dist/css/AdminLTE.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="<?= base_url();?>assets/plugins/iCheck/square/purple.css">
  <style type="text/css">
    /* div{
      font-size: 14px;
    } */
  .bg{
    background-image: url("<?= base_url('assets/dist/img/'.$pengaturan->bglogin) ?>");
    background-size: cover;
  }
  .kanan{
    background-color: rgba(255, 255, 255, 0.7);
    height: 100%;
  }
  .container-login{
    padding-top: 0;
  }
  
  .logo {
    /* position: absolute;
    left: 20px;
    top: 20px;
    z-index: 2; */
    color: #000;
    -webkit-filter: drop-shadow(5px 5px 5px #222);
    filter: drop-shadow(2px 2px 2px #222);
  } 
  
  .main {
    text-align: center;
    color: #696969;
  }

  #clock > div {
    border-radius: 5px;
    background: #ffa500;
    padding: 5px 5px 0px 5px;
    color: #fff;
    display: inline-block;
  }
  #clock > div > p {
    font-size: 12px;
  }
  #days, #hours, #minutes, #seconds {
    padding: 5px;
    font-size: 15px;
    background: #fb8e00;
    display: inline-block;
    width: 40px;
  }
  span.turn {
    animation: turn 0.7s ease;
  }
  @keyframes turn {
    0% {transform: rotateX(0deg)}
    100% {transform: rotateX(360deg)}
  }  
  </style>
</head>
<body class="bg" style="height: 100%;overflow: hidden;">
    <div class="col-xs-12 kanan d-flex flex-column align-items-center justify-content-center">
      <div class="col-xs-12 col-md-4 bg-white rounded d-flex flex-column align-items-center justify-content-center p-3">
        <div class="login-logo">
          <div class='logo hidden-xs'><img class='img img-responsive' style='max-width:300px;' src="<?= base_url('assets/dist/img/'.$pengaturan->logo) ?>" width='200px'></div>
          <h1><strong>Penerimaan Santri Baru</strong></h1>
          <!-- <h5>version <?= $this->config->item('version')?></h> -->
        </div>
        <div class="container-login ">
        <p class="login-box-msg"><?php echo lang('create_user_subheading');?></p>
      <?php
        if(validation_errors() != ""){
      ?>      
        <div id="infoMessage" class="callout callout-danger"><?php echo validation_errors();?></div>
      <?php } ?>
      <?php echo form_open("auth/proses_registrasi");?>
        <!--
        <div class="form-group has-feedback">
          <label><?php echo lang('create_user_fname_label') ?></label>
          <input type="text" id="first_name" data-toggle="first_name" name="first_name"  class="form-control" placeholder="<?php echo lang('create_user_fname_label') ?>" value="<?php echo set_value('first_name');?>"  autofocus required />
        </div>               
        <div class="form-group has-feedback">
          <label><?php echo lang('create_user_lname_label') ?></label>
          <input type="text" id="last_name" data-toggle="last_name" name="last_name"  class="form-control" placeholder="<?php echo lang('create_user_lname_label') ?>" value="<?php echo set_value('last_name');?>" autofocus required />
        </div>
        -->        
        <!-- <div class="form-group has-feedback">
          <label><?php echo lang('create_user_username_label') ?> <span style="color:red;">*</span></label>
          <input type="text" id="username" data-toggle="username" name="username" class="form-control" placeholder="<?php echo lang('create_user_username_label') ?>" value="<?php echo set_value('username');?>" autofocus required />
        </div> -->
        <div class="form-floating mb-3">
          <input type="text" class="form-control rounded" id="floatingInput" placeholder="Masukkan Username/NISN" name="username" required>
          <label for="floatingInput"><i class="bi bi-envelope-fill"></i> <?php echo lang('create_user_username_label') ?></label>
        </div>
<!--  hapus tanda komentar untuk input email
        <div class="form-group has-feedback">
          <label><?php echo lang('create_user_email_label') ?> <span style="color:red;">*</span></label>
          <input type="email" id="email" data-toggle="email" name="email"  class="form-control" placeholder="<?php echo lang('create_user_email_label') ?>" value="<?php echo set_value('email');?>" autofocus required />
        </div>
ini jg di hapus -->
        <div class="form-floating mb-3">
          <input type="password" class="form-control rounded" id="password" placeholder="Password" name="password" required>
          <label for="password"><i class="bi bi-key-fill"></i><?php echo lang('create_user_password_label') ?></label>
        </div>
        <!-- <div class="form-group has-feedback">
          <label><?php echo lang('create_user_password_label') ?> <span style="color:red;">*</span></label>
          <input type="password" id="password" data-toggle="password" name="password" class="form-control" placeholder="<?php echo lang('create_user_password_label') ?>" value="<?php echo set_value('password');?>" required />
        </div> -->
        <div class="form-floating mb-3">
          <input type="password" class="form-control rounded" id="password_confirm" placeholder="password_confirm" name="password_confirm" required>
          <label for="password_confirm"><i class="bi bi-key-fill"></i><?php echo lang('create_user_password_confirm_label') ?></label>
        </div>
        <!-- <div class="form-group has-feedback">
          <label><?php echo lang('create_user_password_confirm_label') ?> <span style="color:red;">*</span></label>
          <input type="password" id="password_confirm" data-toggle="password_confirm" name="password_confirm" class="form-control" placeholder="<?php echo lang('create_user_password_confirm_label') ?>" value="<?php echo set_value('password_confirm');?>" required />
        </div> -->

        <div class="row">
          <div class="d-flex flex-column">
            <button type="submit" class="btn btn-block bg-green no-border mt-3" id="loginBtn"><?php echo lang('create_user_submit_btn') ?></button>
          </div>
          <!-- <div class="col-xs-6">
            <input type="submit" class="<?= $this->config->item('botton')?> btn-block" id="loginBtn" value="<?php echo lang('create_user_submit_btn') ?>" />
            </div>/.col -->
            <div class="border mt-2 rounded text-center d-flex flex-column">
              <a class="btn btn-block btn-outline-success" href="login" >Login Page</a><br/>
          </div><!-- /.col -->
        </div>
        <?php echo form_close();?>
    </div>
    </div>
  </div>
  
<!-- jQuery 3 -->
<script src="<?= base_url();?>assets/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="<?= base_url();?>assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="<?= base_url();?>assets/plugins/iCheck/icheck.min.js"></script>
<script src="<?= base_url();?>assets/plugins/bootstrap-show-password/bootstrap-show-password.min.js"></script>

<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-purple',
      radioClass: 'icheckbox_flat-green',
      increaseArea: '20%' /* optional */
    });
  });
</script>
</body>
</html>  