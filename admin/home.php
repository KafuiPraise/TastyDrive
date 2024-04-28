<?php
session_start();
if (!isset($_SESSION['login_name'])) {
    header("Location: ./login.php");
    exit;
}
?>
<link rel="stylesheet" href="../../fos/admin/assets/css/admin_home.css" type="text/css">
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-body">
                    <?php echo "Welcome back ".$_SESSION['login_name']."!"  ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>