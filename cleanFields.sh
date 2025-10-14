#!/bin/bash

while IFS=',' read -r col1 col2 col3 col4 col5 col6
do
    if [[ $col1 =~ ^[0-9]+$ ]]; then
        if [[ $col2 =~ ^[A-Za-z]+[[:space:]][A-Za-z]+$ ]]; then
            if [[ $col3 =~ ^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$ ]]; then
                if [[ $col4 -gt 0 ]]; then
                    if [[ $col5 =~ ^[A-Za-z]+([[:space:]]*[A-Za-z]*)$ ]]; then
                        if [[ $col6 =~ ^[A-Za-z0-9_]+$ ]]; then
                            printf '%s,%s,%s,%s,%s,%s\n' \
                                "$col1" "$col2" "$col3" "$col4" "$col5" "$col6" >> result.csv
                        fi
                    fi
                fi
            fi
        fi
    fi
done < input.csv
