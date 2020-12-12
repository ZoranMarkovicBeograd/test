<?php
include('./includes/class-autoload.inc.php');
require_once ('./templates/header.php');

$comments = new Comments();
$comments = $comments->getCommentPending();
?>
    <h1>Comments</h1>
    <br>
    <a class="btn btn-primary" href="index.php" role="button">Go to index</a>
    <br>
    <br>
    <form action="comment.process.php" method="get">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Name</th>
                <th scope="col">Email</th>
                <th scope="col">Description firm</th>
                <th scope="col">Description products</th>
            </tr>
            </thead>
            <tbody>
            <?php foreach ($comments ? $comments : []  as $comment):?>
                <tr>
                    <th scope="row"><?php echo $comment['id']?></th>
                    <td><?php echo $comment['customer_name']?></td>
                    <td><?php echo $comment['customer_email']?></td>
                    <td><?php echo $comment['description_firm']?></td>
                    <td><?php echo $comment['description_products']?></td>
                    <td><a href="comment.process.php?id=<?=$comment['id']?>">Allow comment</a></td>
                </tr>
            <?php endforeach;?>
            </tbody>
        </table>
<?php
require_once ('./templates/footer.php')
?>