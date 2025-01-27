#!/bin/sh
#
# Author:   Dimitris Deyannis
# E-mail:   d.deyannis@gmail.com
# Created:  Mon 27 Jan 2025 @ 00:56:21 +0200
# Modified: Mon 27 Jan 2025 @ 00:56:26 +0200

# Nord colors
BLANK='#00000000'
polar0='#2e3440' 
polar1='#3b4252ff'
polar2='#434c5eff'
polar3='#4c566aff'
snow0='#d8dee9ff'
snow1='#e5e9f0ff'
snow2='#eceff4ff'
frost0='#8fbcbbff'
frost1='#88c0d0ff'
frost2='#81a1c1ff'
frost3='#5e81acff'
aurora0='#bf616aff'
aurora1='#d08770ff'
aurora2='#ebcb8bff'
aurora3='#a3be8cff'
aurora4='#b48eadff'


i3lock \
-e														\
-F -i ~/Pictures/ss.png				\
\
--ind-pos=w/2:h-150						\
--time-size=58								\
--time-pos=1600:970						\
--date-pos=1600:1000					\
\
--ring-width=14.0							\
--inside-color=$BLANK					\
--ring-color=$polar2					\
--line-color=$BLANK						\
--separator-color=$frost1			\
\
--insidever-color=$polar3			\
--ringver-color=$polar1				\
\
--insidewrong-color=$aurora0	\
--ringwrong-color=$aurora1		\
\
--verif-color=$snow2					\
--wrong-color=$aurora2				\
--time-color=$snow2						\
--date-color=$snow2						\
--keyhl-color=$frost1					\
--bshl-color=$frost1					\
\
--screen 1										\
--clock												\
--time-str="%H:%M"						\
--date-str="%A, %d/%m/%Y"			\
