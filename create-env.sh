#!/bin/bash
cont_count=$1
echo "creating $cont_count containers.."
sleep 2;
for i in `seq $cont_count`
do
	echo "=============================="
    echo "Creating www.month$i container.."
    sleep 1
   sudo docker run --name www.month$i -d -it --rm mano8888/newdoc /bin/bash
    echo "www.month$i container has been created!"
	echo "=============================="
done
