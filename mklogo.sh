#!/usr/bin/env bash
#
# GMT 中文社区 logo
#
gmt begin gmt-china-logo pdf,jpg,PNG
	gmt coast -Rd -JI110/10c -Dc -A10000 -G230/230/230 -S160/175/217
	gmt coast -ECN+g204/204/204 -EHK+g204/204/204 -ETW+g204/204/204 -EMO+g204/204/204
	echo 110 -20 GMT/China | gmt text -F+f35p,19,0/0/100
gmt end

# 方形版本的 logo
gmt begin gmt-china-logo-square PNG A+n
	gmt set PS_MEDIA 10cx10c
	gmt coast -Rd -JI110/10c -Dc -A10000 -G230/230/230 -S160/175/217 -Xc -Yc
	gmt coast -ECN+g204/204/204 -EHK+g204/204/204 -ETW+g204/204/204 -EMO+g204/204/204
	echo 110 -20 GMT/China | gmt text -F+f35p,19,0/0/100
gmt end
