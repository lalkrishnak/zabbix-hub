#!/bin/bash
echo "$3" | /usr/bin/mail -s "$2" $1
