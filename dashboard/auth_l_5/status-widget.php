<ul class="stats">
    <li class='blue'>
        <i class="icon-money"></i>
        <div class="details">
									<span class="big">INR
                                        <?php
                                        $date = date('Y-m');
                                        $query = "SELECT * FROM subsciption WHERE  paid_date LIKE '$date%'";

                                        //echo $query;
                                        $result = mysqli_query($con, $query);
                                        $revenue = 0;
                                        if (mysqli_affected_rows($con) != 0) {
                                            while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
                                                $revenue = $row['paid'] + $revenue;
                                            }
                                        }
                                        echo $revenue;
                                        ?></span>
            <span>Paid Income This Month</span>
        </div>
    </li>
    <li class='blue'>
        <i class="icon-bolt"></i>
        <div class="details">
									<span class="big">
                                        <?php
                                        $date = date('Y-m');
                                        $query = "SELECT COUNT(*) FROM user_data WHERE wait='no'";

                                        //echo $query;
                                        $result = mysqli_query($con, $query);
                                        $i = 1;
                                        if (mysqli_affected_rows($con) != 0) {
                                            while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
                                                echo $row['COUNT(*)'];
                                            }
                                        }
                                        $i = 1;
                                        ?>
                                    </span>
            <span>Total Members </span>
        </div>
    </li>
    <li class='blue'>
        <i class="icon-shopping-cart"></i>
        <div class="details">
									<span class="big">
                                        <?php
                                        $date = date('Y-m');
                                        $query = "select COUNT(*) from user_data WHERE joining LIKE '$date%'";

                                        //echo $query;
                                        $result = mysqli_query($con, $query);
                                        $i = 1;
                                        if (mysqli_affected_rows($con) != 0) {
                                            while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
                                                echo $row['COUNT(*)'];
                                            }
                                        }
                                        $i = 1;
                                        ?>
                                    </span>
            <span>Joined This Month</span>
        </div>
    </li>
    <li class='blue'>
        <i class="icon-money"></i>
        <div class="details">
									<span class="big">INR <?php
                                        $date = date('Y-m');
                                        $query = "select * from subsciption WHERE  paid_date LIKE '$date%'";

                                        //echo $query;
                                        $result = mysqli_query($con, $query);
                                        $revenue = 0;
                                        if (mysqli_affected_rows($con) != 0) {
                                            while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
                                                $revenue = $row['total'] + $revenue;
                                            }
                                        }
                                        echo $revenue;
                                        ?></span>
            <span>Income This Month</span>
        </div>
    </li>
    <li class='blue'>
        <i class="icon-calendar"></i>
        <div class="details">
            <span class="big"></span>
            <span><?php
                echo date('Z');
                ?></span>
        </div>
    </li>
</ul>