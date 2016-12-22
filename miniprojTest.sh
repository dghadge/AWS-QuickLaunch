#!/bin/bash

rm -rf spec; rm Rakefile

if ! which expect > /dev/null; then
   echo -e "expect : Command not found! Please Install\c"
fi

if ! which rake > /dev/null; then
   echo -e "rake : Command not found! Please Install\c"
fi

instance_ip=`terraform output IP`

echo $instance_ip

./miniprojCreateTest.sh $instance_ip

cp -f sample_spec.rb spec/$instance_ip/.

rake spec
