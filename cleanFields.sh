while IFS=",", read -r col1 col2 col3 col4 col5 col6
do
    if [$col1 =~ "\d+"]; then
		if [$col2 =~ "\w+\s\w+"]; then
			if [$col3 =~ "/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/"]; then
				if [$col4 -gt $0]; then
					if [$col5 =~ "\w+\s*\w+"]; then
						if [$col6 =~ \w+]; then
							printf "$col1,$col2,$col3,$col4,$col5,$col6" >> result.csv
						fi
					fi
				fi
			fi
		fi
	fi
done