##
## EPITECH PROJECT, 2023
## B-SYN-200-LYN-2-1-automakefile-elias.abassi
## File description:
## skip-synthesis
##

#!/bin/bash

start_string="$1"

ls -l | awk -v str="$start_string" '
    BEGIN { OFS="\t" }
    $NF ~ "^"str { print $3, $NF }
'

exit 0