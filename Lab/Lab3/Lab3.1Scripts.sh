echo -e "The following movies have been evaluated based on the popularity of action movies by year 1988-2018 from the data obtained from MovieLens:\n"
echo "year, movie_count, action_count, percentage_of_all" > actiondata.csv

# The script implements through all the years in the range to produce the report for each year

for i in {1988..2018}
do	# grep filters current year's movies and sends them all to a text file
	grep "($i)" movies.csv > currentyear.txt
	# awk command to obtain the number of lines in the file - in this case, number of current year's movies
	totalcount=`awk 'END { print NR }' currentyear.txt`
	# awk filter - only lines that include 'Action' will be counted
	awk '/Action/ {print}' currentyear.txt > action.txt
	# number of action movies
	count1=`awk 'END { print NR }' action.txt`
	# Division by 0 protection
	if [ $count == "0" ]
	then
		actionperc=0
	else	
		# percentage of Action movies in a given year
		actionperc=`echo "$count $totalcount" | awk '{printf "%.1f\n", ($1/$2)*100}'`
	fi
	echo "The year is $i, all movies: $totalcount, number of action movies: $count, percentage: $actionperc%"
	# The data is also output to a new .csv file 		
	echo "$i, $totalcount, $count, $actionperc" >> actiondata.csv
done

totalcount=`awk 'END { print NR }' movies.csv`
awk '/Action/ {print}' movies.csv > action.txt
count=`awk 'END { print NR }' action.txt`
actionperc=`echo "$count $totalcount" | awk '{printf "%.1f\n", ($1/$2)*100}'`

echo -e "Total movies in years 1988-2018: $totalcount
\nTotal action movies in years 1948-2018: $count 
\nPercentage of action movies in years 1988-2018: $actionperc%"
