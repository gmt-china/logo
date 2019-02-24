#!/bin/bash
#
# GMT中文社区logo
#
gmt begin gmt-china-logo pdf,jpg,PNG
gmt coast -Rd -JI110/10c -Dc -A10000 -G230/230/230 -S160/175/217
gmt coast -ECN+g204/204/204 -EHK+g204/204/204 -ETW+g204/204/204 -EMO+g204/204/204
echo 110 -20 GMT/China | gmt text -F+f35p,19,0/0/100
gmt end

# 方形版本的logo
PS=gmt-china-logo-square.ps
gmt set PS_MEDIA 10cx10c
gmt pscoast -Rd -JI110/10c -Dc -A10000 -G230/230/230 -S160/175/217 -Xc -Yc -K > $PS
gmt pscoast -J -R -ECN+g204/204/204 -EHK+g204/204/204 -ETW+g204/204/204 -EMO+g204/204/204 -K -O >> $PS
echo 110 -20 GMT/China | gmt pstext -J -R -F+f35p,19,0/0/100 -O >> $PS
gmt psconvert -P -TG -Z $PS
rm gmt.*
