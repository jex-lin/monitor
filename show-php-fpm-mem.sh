#!/bin/bash
ps -Ao pid,%cpu,%mem,rss,comm | head -n 1 && ps -Ao pid,%cpu,%mem,rss,comm | grep php-fpm-7.0
