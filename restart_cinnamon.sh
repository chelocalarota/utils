#!/bin/bash
export DISPLAY=:0;
killall -9 cinnamon;
cinnamon --replace &
