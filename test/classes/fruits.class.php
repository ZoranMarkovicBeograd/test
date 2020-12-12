<?php

    class Fruits extends Dbh {

    public function getFruit()
    {
        $sql = "SELECT * FROM fruits";
        $stmt = $this->connect()->prepare($sql);
        $stmt->execute();

        while ($result = $stmt->fetchAll()){
            return $result;
        }
    }
}