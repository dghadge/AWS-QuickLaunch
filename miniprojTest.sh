#!/bin/bash

instance_ip=`terraform output IP`

echo $instance_ip

./miniprojCreateTest.sh $instance_ip

cp -f sample_spec.rb spec/$instance_ip/.

rake spec
