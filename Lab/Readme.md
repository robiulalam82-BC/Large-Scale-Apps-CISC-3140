
# SVN Repository Instructions

## Reference Sheet
|  | Git  | Subversion|
|--|--|-- |
| Documentation | https://git-scm.com/docs | https://svnbook.red-bean.com/ |
| Quickistart | https://www.linuxjournal.com/content/git-quick-start-guide | https://subversion.apache.org/quick-start |
| Creating New Repository | git init | svnadmin create \<repo name> |
| Adding Files | git add \<filename.extension> | svn add \<filename.extension> |
| Commiting Files | git commit -m "\<commit message>"  | svn commit -m "\<commit message>"|
| Pushing Files | git push \<remote> \<branch> | - |
| Pulling Files | git pull \<options> \<repository>  | svn update |
| Cloning Repository | git clone | svn checkout URL[@REV]... [PATH]  e.g `svn checkout file:///var/svn/repos/test_mine` |
| Review Changes | git status |svn diff  |
