## Lab 3.1

### Preparing a Repository for Sharing

This task focuses on the use of declarative languages. 
* Prepare an AWK script that produces a report on a .csv file.
* Prepare a Makefile that whill download data and run the AWK script.
* Prepare instructions for using your repository. 
The repository along with the instructions will be used for Lab 3.3

### Methodology

For this exercise, I used the latest [MovieLens dataset (.csv file)](https://github.com/Mordyfier/CISC3140/blob/master/Lab%202.2/movies.csv) (Last update 9/2018) from https://grouplens.org/datasets/movielens/latest/

I decided to examine how the interest in the Action genre changed among moviemakers (which, presumably, reflects the interests of the audience) in the 70-year period from 1948 to 2018 (the last year the data was updated).

The [script](https://github.com/Mordyfier/CISC3140/blob/master/Lab%202.2/script.sh) I wrote is not a pure `awk` script. I found that the `awk` syntax, unlike when using commands, made it difficult to pattern match in the manner that I wanted or needed to because of how the datafile was structured (The year of release should have been placed in a separate field in my opinion). Overall, the script utilizes `grep` and `awk` iteratively to isolate the movie list for each year, then filter out the Action genre for each year. Through some simple arithmetic, the ratio of action movies released in a given year is computed. Each year's data is output to the terminal and to a raw data [.csv file](https://github.com/Mordyfier/CISC3140/blob/master/Lab%202.2/actiondata.csv).

### Usage

**Prerequisites**: This script assumes Git, `awk`, `wget`, and `make` are installed on your machine. If you're on Windows, the latter two of the three may not be there even if using the Git Bash terminal. The process of installing `wget` and `make` for use in Git Bash is extremely simple, and can be found [here](https://gist.github.com/evanwill/0207876c3243bbb6863e65ec5dc3f058). After installing `wget` and `make`, make sure they're present by typing each utility's name into the terminal. If everything is running correctly, instead of the 'unrecognized command' message, the output will state that the commands have not been passed the right arguments instead, indicating the utilities are installed properly.

Once everything is set, simply download the makefile. You can either [go here](https://raw.githubusercontent.com/Mordyfier/CISC3140/master/Lab%203.1/makefile) and copy paste the text into a new file called `makefile` (no extension), or use the command `wget https://raw.githubusercontent.com/Mordyfier/CISC3140/master/Lab%203.1/makefile` in Git Bash terminal while in your desired directory, which will procure the makefile. You can copy the `wget` command with the URL and paste it in Git terminal by right-clicking, as seen below.

With the makefile on your machine, make sure it's in a directory where you want the output datafile to go. Once ready, navigate to that directory with Git Bash (if you used `wget` to obtain the makefile, you're already there) and simply use the command `make`. The makefile will download the necessary files (the script and the data), then run the script.


### Observations
Based on the results from the script, action movies (this includes any movie that is labeled as 'Action' in the dataset, regardless of whether it's the 'primary' genre) appear to have risen in popularity over time. Over the period examined, the genre began to make up a larger proportion of all the movies in the data set for each year. While for the years 1948-1960, action movies make up less than 10% of all the movies in the data file for their respective years, by the 1970s the ratio of such movies increased to 15-20%. By the time the 21st Century came along, Action movies *played a big role* in the movie industry - between years 2003-2018, the genre failed to comprise more than 20% of all the movies only twice ('06-'07), and averaged out to roughly 24.3% of all the movies<sup>1</sup> in the set, well above the 18.8% average for the whole 70-year interval. 

<sup>1</sup> This is even after removing 2018 for which only partial and somewhat anomalous data is present.

### Limitations
The data provided might not tell the whole story. The MovieLens database appears to mostly focus on user-contributed data. Because of that, the actual proportion of action movies in each year might be different from what is included here. Some of the possible reasons for such a discrepancy:
* The nature of the database (user-contributed data collected in years [1996-2018](https://files.grouplens.org/datasets/movielens/ml-latest-small-README.html)) might lead to more recent movies being overrepresented (since many younger people do not focus on older films). Older movies will need to have been of significantly higher quality to be remembered by the time the data was compiled.
* Moreover, it is possible that the action genre suffers from some additional attribute that makes older movies less palatable for the more modern audience (for example - outdated special effects, which - while they might have been acceptable at the time - pale in comparison to what modern technology can accomplish), further reducing the likelihood that a user will remember the movie and skewing the data towards modern times.

Another potential place for inaccuracy lies in the genre system of the data set. It is possible (and somewhat likely even), that for some of the films in the .csv file, the 'Action' label is secondary (The genres appear to be listed alphabetically, so it might not be feasible to filter the genre based on the ordering.) 

### Sources
https://grouplens.org/datasets/movielens/latest/

https://files.grouplens.org/datasets/movielens/ml-latest-small-README.html

https://gist.github.com/evanwill/0207876c3243bbb6863e65ec5dc3f058 - For adding `wget` and `make` to Git Bash on Windows.
