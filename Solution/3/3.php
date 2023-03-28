<?php
function Tuesday_between_two_dates($date1, $date2)
{
  if (validateDate($date1) || validateDate($date2)){
      $first = DateTime::createFromFormat('d-m-Y', $date1);
      $second = DateTime::createFromFormat('d-m-Y', $date2);
      if($date1 > $date2) {
          return Tuesday_between_two_dates($date2, $date1);
        }
        else{
          return floor($first->diff($second)->days/7);
        }
    }
    else{
      return 'даты не действительны';
    }
}
function validateDate($date, $format = 'd-m-Y')
{
    $d = DateTime::createFromFormat($format, $date);
    return $d && $d->format($format) == $date;
}
$date1 = '06-03-2023';
$date2 = '15-04-2023';
echo 'Количество вторников с '.$date1.' по '. $date2. ' : '.Tuesday_between_two_dates($date1, $date2);