#!/usr/bin/env bash
#
# GMT 中文社区 logo
#
gmt begin gmt-china-logo pdf,jpg,PNG,eps
    gmt coast -Rd -JI110/10c -Dc -A10000 -G230/230/230 -S160/175/217
    gmt plot CN-border-L1.gmt -Gred
    echo 110 -20 GMT/China | gmt text -F+f35p,19,0/0/100
gmt end

# 方形版本的 logo
gmt begin gmt-china-logo-square PNG A+n
    gmt set PS_MEDIA 10cx10c
    gmt coast -Rd -JI110/10c -Dc -A10000 -G230/230/230 -S160/175/217 -Xc -Yc
    gmt plot CN-border-L1.gmt -Gred
    echo 110 -20 GMT/China | gmt text -F+f35p,19,0/0/100
gmt end

# 将 GMT logo 与 GMT 中文社区 logo 放一起
gmt begin gmt-china-combined-logo png,pdf
    gmt basemap -R0/16/0/4 -Jx1c -B+n
    gmt logo -DjTL+w8c
    echo 8.8 2.5 + | gmt text -F+f50p,1,lightred
    gmt image gmt-china-logo.eps -DjTR+w6.25c
gmt end
rm gmt-china-logo.eps
