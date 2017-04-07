#! /bin/bash

echo "Hello World. I am Bash"

if [[ -z $a || -z $b ]]; then
  echo 'No parameters passed to calculate the sum.'
else 
  val=`expr $a + $b`
  echo "Sum of $a & $b is $val"
fi

goldval=`curl --silent https://rate-exchange-1.appspot.com/currency\?from=USD\&to=INR | jq ".rate"`
echo "Today's currency rate : 1 USD = $goldval INR"

echo "Bash Bye Bye from Sree!"
