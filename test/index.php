<?php
    include('./includes/class-autoload.inc.php');
    require_once ('./templates/header.php');

    $fruits = new Fruits();
    $fruits = $fruits->getFruit();

    $comments = new Comments();
    $comments = $comments->getComment();
?>
    <div class="container">
        <h1>Fruits</h1>
        <table class="table">
                <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Name</th>
                    <th scope="col">Fruit image</th>
                    <th scope="col">Description</th>
                </tr>
                </thead>
                <tbody>
                <?php foreach ($fruits as $fruit):?>
                <tr>
                    <th scope="row"><?php echo $fruit['id']?></th>
                    <td><?php echo $fruit['title']?></td>
                    <td><img src="images/<?php echo $fruit['image']?>" class="rounded-circle" alt="Cinque Terre" width="100" height="100"></td>
                    <td><?php echo $fruit['description']?></td>
                </tr>
                <?php endforeach;?>
                </tbody>
            </table>
        <br>
        <h1>Comments</h1>
        <br>
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
            <?php foreach ($comments ? $comments : [] as $comment):?>
             <tr>
                 <th scope="row"><?php echo $comment['id']?></th>
                 <td><?php echo $comment['customer_name']?></td>
                 <td><?php echo $comment['customer_email']?></td>
                 <td><?php echo $comment['description_firm']?></td>
                 <td><?php echo $comment['description_products']?></td>
             </tr>
            <?php endforeach;?>
            </tbody>
        </table>
        <form action="comment.process.php" method="post">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" name="customer_name" class="form-control" id="name" aria-describedby="emailHelp">
            </div>
            <div class="form-group">
                <label for="email">Email address</label>
                <input type="email" name="customer_email" class="form-control" id="email" aria-describedby="emailHelp">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            <div class="form-group">
                <label for="description_firm">Description firm</label>
                <input type="text"  name="description_firm" class="form-control" id="description_firm">
            </div> <div class="form-group">
                <label for="description_products">Description products</label>
                <input type="" name="description_products" class="form-control" id="description_products">
            </div>
                <input type="hidden" name="status" value="pending" >
            <button type="submit" name="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>


<?php
require_once ('./templates/footer.php')
?>