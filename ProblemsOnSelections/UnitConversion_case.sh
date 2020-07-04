#!/bin/bash -x
echo "feet-inch, feet-meter, inch-feet, meter-feet"
read -p "enter number and any one of the conversions listed above: " num conv

case $conv in
	feet-inch) echo "$(($num*12)) in";;
	feet-meter) echo "$(($num/3)) m";;
	inch-feet) echo "$(($num/12)) ft";;
	meter-feet) echo "$(($num*3)) ft";;
	*) echo "conversion not found";;
esac
