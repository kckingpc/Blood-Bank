<?php

$PRODUCTION = false;
define('PRODUCTION', $PRODUCTION);

$BASE_URL = (PRODUCTION) ? "http://nazishfraz.co.nf/blood_bank" : "http://localhost/nazish/blood_bank";

define('BASE_URL', $BASE_URL);




 
$HOSTNAME = (PRODUCTION) ? "" : "localhost";
$USERNAME = (PRODUCTION) ? "" : "root";
$PASSWORD = (PRODUCTION) ? "" : "";
$DATABASE = (PRODUCTION) ? "" : "blood_bank";
$PREFIX   = (PRODUCTION) ? "" : "bb_";

define('HOSTNAME', $HOSTNAME);
define('USERNAME', $USERNAME);
define('PASSWORD', $PASSWORD);
define('DATABASE', $DATABASE);
define('PREFIX'  , $PREFIX);

define('MAINTENANCE_MODE', false);
define('ENCRYPTION_KEY', '');

define('EMAIL_API', '');


?>