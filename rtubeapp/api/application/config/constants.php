<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
|--------------------------------------------------------------------------
| Display Debug backtrace
|--------------------------------------------------------------------------
|
| If set to TRUE, a backtrace will be displayed along with php errors. If
| error_reporting is disabled, the backtrace will not display, regardless
| of this setting
|
*/
defined('SHOW_DEBUG_BACKTRACE') OR define('SHOW_DEBUG_BACKTRACE', TRUE);

/*
|--------------------------------------------------------------------------
| File and Directory Modes
|--------------------------------------------------------------------------
|
| These prefs are used when checking and setting modes when working
| with the file system.  The defaults are fine on servers with proper
| security, but you may wish (or even need) to change the values in
| certain environments (Apache running a separate process for each
| user, PHP under CGI with Apache suEXEC, etc.).  Octal values should
| always be used to set the mode correctly.
|
*/
defined('FILE_READ_MODE')  OR define('FILE_READ_MODE', 0644);
defined('FILE_WRITE_MODE') OR define('FILE_WRITE_MODE', 0666);
defined('DIR_READ_MODE')   OR define('DIR_READ_MODE', 0755);
defined('DIR_WRITE_MODE')  OR define('DIR_WRITE_MODE', 0755);

/*
|--------------------------------------------------------------------------
| File Stream Modes
|--------------------------------------------------------------------------
|
| These modes are used when working with fopen()/popen()
|
*/
defined('FOPEN_READ')                           OR define('FOPEN_READ', 'rb');
defined('FOPEN_READ_WRITE')                     OR define('FOPEN_READ_WRITE', 'r+b');
defined('FOPEN_WRITE_CREATE_DESTRUCTIVE')       OR define('FOPEN_WRITE_CREATE_DESTRUCTIVE', 'wb'); // truncates existing file data, use with care
defined('FOPEN_READ_WRITE_CREATE_DESTRUCTIVE')  OR define('FOPEN_READ_WRITE_CREATE_DESTRUCTIVE', 'w+b'); // truncates existing file data, use with care
defined('FOPEN_WRITE_CREATE')                   OR define('FOPEN_WRITE_CREATE', 'ab');
defined('FOPEN_READ_WRITE_CREATE')              OR define('FOPEN_READ_WRITE_CREATE', 'a+b');
defined('FOPEN_WRITE_CREATE_STRICT')            OR define('FOPEN_WRITE_CREATE_STRICT', 'xb');
defined('FOPEN_READ_WRITE_CREATE_STRICT')       OR define('FOPEN_READ_WRITE_CREATE_STRICT', 'x+b');

/*
|--------------------------------------------------------------------------
| Exit Status Codes
|--------------------------------------------------------------------------
|
| Used to indicate the conditions under which the script is exit()ing.
| While there is no universal standard for error codes, there are some
| broad conventions.  Three such conventions are mentioned below, for
| those who wish to make use of them.  The CodeIgniter defaults were
| chosen for the least overlap with these conventions, while still
| leaving room for others to be defined in future versions and user
| applications.
|
| The three main conventions used for determining exit status codes
| are as follows:
|
|    Standard C/C++ Library (stdlibc):
|       http://www.gnu.org/software/libc/manual/html_node/Exit-Status.html
|       (This link also contains other GNU-specific conventions)
|    BSD sysexits.h:
|       http://www.gsp.com/cgi-bin/man.cgi?section=3&topic=sysexits
|    Bash scripting:
|       http://tldp.org/LDP/abs/html/exitcodes.html
|
*/
defined('EXIT_SUCCESS')        OR define('EXIT_SUCCESS', 0); // no errors
defined('EXIT_ERROR')          OR define('EXIT_ERROR', 1); // generic error
defined('EXIT_CONFIG')         OR define('EXIT_CONFIG', 3); // configuration error
defined('EXIT_UNKNOWN_FILE')   OR define('EXIT_UNKNOWN_FILE', 4); // file not found
defined('EXIT_UNKNOWN_CLASS')  OR define('EXIT_UNKNOWN_CLASS', 5); // unknown class
defined('EXIT_UNKNOWN_METHOD') OR define('EXIT_UNKNOWN_METHOD', 6); // unknown class member
defined('EXIT_USER_INPUT')     OR define('EXIT_USER_INPUT', 7); // invalid user input
defined('EXIT_DATABASE')       OR define('EXIT_DATABASE', 8); // database error
defined('EXIT__AUTO_MIN')      OR define('EXIT__AUTO_MIN', 9); // lowest automatically-assigned error code
defined('EXIT__AUTO_MAX')      OR define('EXIT__AUTO_MAX', 125); // highest automatically-assigned error code

//$api_path= "http://preview56.24x7a2z.com/gemsbihar/ver1";

$gender = array(
    '1' => 'Male',
    '0' => 'Female',
    '2' => 'Nill'
  );

$childgender = array(
    '1' => 'Male',
    '2' => 'Female'
  );
  $part_india = array(
    '1' => 'North India',
    '2' => 'South India',
    '0' => 'Nill'
  );
   $marital_status = array(
    '3' => 'Divorced',
    '2' => 'Married',
     '6' => 'Married but living separate',
    '1' => 'Single', 
    '4' => 'Widow',
    '5' => 'Widower',
    '0' => 'Nill'
  );
  $identities = array(
    '2' => 'Board Member',
    '3' => 'Non-Board Member',
    '1' => 'Trustee',
    '0' => 'Nill'
  );
  $emtypes = array(
    '1' => 'Cross Cultural',
    '2' => 'Native',
    '0' => 'Nill'
  );

  $blood_group = array(
    '1' => 'A+',
    '2' => 'O+',
    '3' => 'B+',
    '4' => 'AB+',
    '5' => 'A-',
    '6' => 'O-',
    '7' => 'B-',
    '8' => 'AB-',
    '0' => 'Nill'
  );

  $age_group = array(
    '0' => '0+',
    '1' => '10+',
    '2' => '20+',
    '3' => '30+',
    '4' => '40+',
    '5' => '50+',
    '6' => '60+',
    '7' => '70+',
    '8' => '80+',
    '9' => '90+',
    '10' => '100+'
  );

  $family_position = array( 
    '0' => 'Nill',
    '1' => '1',
    '2' => '2',
    '3' => '3',
    '4' => '4',
    '5' => '5',
    '6' => '6',
    '7' => '7',
    '8' => '8',
    '9' => '9',
    '10' => '10',
    '11' => '11',
    '12' => '12',
    '13' => '13',
    '14' => '14',
    '15' => '15',
    '16' => '16',
    '17' => '17',
    '18' => '18',
    '19' => '19',
    '20' => '20'
  );

  $corrective_action = array( 
    '1'=> 'Verbal Warning/ Counseling',
    '2'=> 'Written warning',
    '3'=> 'Suspension',
    '4'=> 'Termination',
    '0' => 'Nill'
  );

  $missionaryallotstatus= array( 
    '1'=> 'Allotted',
    '2'=> 'Re-allotted',
    '3'=> 'Waiting for Re-allotment',
    '4'=> 'Not yet allotted',
    '0' => 'Nill'
  );


  $categorysponsor= array(
    '1'=>'Worker Support',
    '2'=>'Child Support',
    '0' => 'Nill'
  );

  $languages= array(
    '1'=>'Tamil',
    '2'=>'English',
    '3'=>'Hindi',
    '0' => 'Nill'
  );

  $dedication_needed= array(
    '0'=>'Nill',
    '1'=>'Not Dedicated',
    '2'=>'Dedicated'
  );

  $missionary_prefrence= array(
    '0'=>'Nill',
    '1'=>'North Indian',
    '2'=>'South Indian'
  );

  $months= array(
    '1'=>'Jan',
    '2'=>'Feb',
    '3'=>'Mar',
    '4'=>'Apr',
    '5'=>'May',
    '6'=>'Jun',
    '7'=>'Jul',
    '8'=>'Aug',
    '9'=>'Sep',
    '10'=>'Oct',
    '11'=>'Nov',
    '12'=>'Dec'
  );