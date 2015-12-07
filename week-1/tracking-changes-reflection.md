1. How does tracking and adding changes make developers' lives easier? - Tracking changes is when you change the state of the file by editing the context. Adding to the file allows you to add to the file what will be committed. This makes developer's lives easier because it allows them to implement and save changes to a file. 

2. What is a commit? - A commit is a change that you've made at a certain point in the file. When using this command in git, it allows you to save a change with a message describing the changes you've made.

3. What are the best practices for commit messages? - Best practices for commit messages is to have a short description (usually around 50 words) for the commit title, while adding more meaningful information to the body of the message, as well as writing the message in the imperative. Writing the message in the imperative is a good idea as it will allow individuals who view the commit to see what the commit does, rather than what was done when the commit was submitted. 

4. What does the HEAD^ argument mean? - HEAD^ tells you the last commit that you were on. You can also use HEAD to find out other information. For example, HEAD (without the carrot) will tell you the commit you are currently on, and head with a tilde and number following tells you the nth commit from the HEAD (ex. HEAD~3 is the third commit from HEAD)

5. What are the 3 stages of a git change and how do you move a file from one stage to the other? - The three stages of a git change are working, staged, and commit. The working stage is the stage when you can modify files (add, change, remove, move, delete). The staged state tracks the changes made that will go in the next  commit of the file. The commit stage is the final state. It acts like a saving point for the file and allows you to save changes made to the file from the last time a commit was performed up until the current point. 

6. Write a handy cheatsheet of the commands you need to commit your changes?
**git status** - check the file of a status. If you've made modifications typing in this command will allow you to see whether a change has been staged for commit or whether the changes are staged to commit. If you haven't made any changes to the file, you won't see any message shown. 

**git checkout -b [branch_name]** - allows you to make a new branch of a file if you'd like to commit changes outside of the master branch

**git reset --soft HEAD^** - You already commit a file and decide that you'd like to change the file, use this command to move files from the added section back to untracked. 

**git add [file_name]** - Add files to the changes to commit

** git commit -m "[insert_message_here]"** - commit the changes that you've made. Important to include a short message of the changes to the file for the commit  in the imperative tense.  

7. What is a pull request and how do you create and merge one? - A pull request merges code from a different branch into the master branch. In order to create a pull and merge the code, you must first create a new branch using the 'git checkout -b [branch_name]' command. Once the branch is created, follow the normal instructions to create or modify a file, and once finished commit the changes to save them. Once commiting the changes, you need to push the branch to GitHub and create a pull request by logging into your GitHub and clicking the button "compare and pull request" in your repository. Once clicking the button, select the base and comparison branch, base being the master branch, and comparison the other branch created. After selecting the base and comparison, you can click "create pull request" in order to do so. 

In order to merge the pull request, click the "merge pull request" button on the conversation tab and confirm the merge by clicking the respective button on the following page. If you'd like to clean up, once teh pull request has been merged and closed, you can delte the branch. 

8. Why are pull requests preferred when working with teams? - Pull requests are helpful when working on teams as they allow you to separate the changes you've made in the repository in an organized manner. 
