#!/bin/bash
echo `date` >> php-fpm-mem-usage.log
ps -Ao pid,%cpu,%mem,rss,comm | head -n 1 && ps -Ao pid,%cpu,%mem,rss,comm | grep php-fpm-7.0 >> php-fpm-mem-usage.log
echo >> php-fpm-mem-usage.log
