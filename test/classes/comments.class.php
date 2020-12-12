<?php
class Comments extends Dbh {

    public function getComment()
    {
        $sql = "SELECT * FROM comments WHERE status = 'approved'";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute();

        while ($result = $stmt->fetchAll()){
            return $result;
        }
    }

    public function getCommentPending()
    {
        $sql = "SELECT * FROM comments WHERE status = 'pending'";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute();

        while ($result = $stmt->fetchAll()){
            return $result;
        }
    }

    public function addComment($customerName, $customerEmail, $descriptionFirm, $descriptionProducts, $status)
    {
        $sql = "INSERT INTO comments(customer_name, customer_email, description_firm, description_products, status)
                VALUES (?, ?, ?, ?, ? )";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute([$customerName, $customerEmail, $descriptionFirm, $descriptionProducts, $status]);

        header("location: {$_SERVER['HTTP_REFERER']}");
    }

    public function allowedPost($id)
    {
        $sql = "UPDATE comments SET status = \"approved\" WHERE id = $id";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute();

        header("location: {$_SERVER['HTTP_REFERER']}");
    }
}
