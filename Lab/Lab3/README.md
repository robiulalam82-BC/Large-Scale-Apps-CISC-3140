## Lab 3.1

### Preparing a Repository for Sharing

This task focuses on the use of declarative languages. 
* Prepare an AWK script that produces a report on a .csv file.
* Prepare a Makefile that whill download data and run the AWK script.
* Prepare instructions for using your repository. 




### Limitations
The data provided might not tell the whole story. The MovieLens database appears to mostly focus on user-contributed data. Because of that, the actual proportion of action movies in each year might be different from what is included here. Some of the possible reasons for such a discrepancy:
* The nature of the database (user-contributed data collected in years [1988-2018](https://files.grouplens.org/datasets/movielens/ml-latest-small-README.html)) might lead to more recent movies being overrepresented (since many younger people do not focus on older films). Older movies will need to have been of significantly higher quality to be remembered by the time the data was compiled.
* Moreover, it is possible that the action genre suffers from some additional attribute that makes older movies less palatable for the more modern audience (for example - outdated special effects, which - while they might have been acceptable at the time - pale in comparison to what modern technology can accomplish), further reducing the likelihood that a user will remember the movie and skewing the data towards modern times.

Another potential place for inaccuracy lies in the genre system of the data set. It is possible (and somewhat likely even), that for some of the films in the .csv file, the 'Action' label is secondary (The genres appear to be listed alphabetically, so it might not be feasible to filter the genre based on the ordering.) 

### Sources
https://grouplens.org/datasets/movielens/latest/

https://files.grouplens.org/datasets/movielens/ml-latest-small-README.html

https://gist.github.com/evanwill/0207876c3243bbb6863e65ec5dc3f058 - For adding `wget` and `make` to Git Bash on Windows.
