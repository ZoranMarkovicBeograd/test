<?php
    include('includes/class-autoload.inc.php');

$comments = new Comments();

    if (isset($_POST['submit'])) {
        $customerName = $_POST['customer_name'];
        $customerEmail = $_POST['customer_email'];
        $descriptionFirm = $_POST['description_firm'];
        $descriptionProducts = $_POST['description_products'];
        $status = $_POST['status'];

        $comments->addComment($customerName, $customerEmail, $descriptionFirm, $descriptionProducts, $status);

    } else{
        $id = $_GET['id'];

        $comments->allowedPost($id);
    }