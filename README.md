<b>FLDigi Comma-to-Dot Converter</b>

A simple utility script that converts decimal commas (,) to decimal dots (.) in FLDigi log files.

Why?
FLDigi on some systems (especially with European locale settings) exports signal reports, frequencies, or other numeric values using a comma as the decimal separator (e.g. 14,075).
Many other amateur radio logging programs (Log4OM, DXLab, Ham Radio Deluxe, Cloudlog, etc.) expect the dot (.) as the decimal separator and fail to import such files correctly.This script fixes the problem automatically.

I need only 20 and 40 band so in my case i use this syntax:


<b>sed -i 's/14,/14./g' "$plik"<br>
sed -i 's/7,/7./g' "$plik"</b>

USE:

./Comma-to-Dot.sh YourFile
