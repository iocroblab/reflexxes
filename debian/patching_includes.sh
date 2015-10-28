#!/bin/bash

for p in *.h; do
	echo "Searching $p, creating the list"
	files="$(grep -lRF $p ../src/*)"
	for f in $files; do
		echo "Patching $f"
		sed -i "s/include <$p>/include <Reflexxes\/$p>/" $f ;
	done
done
