# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?
Version control helps protect software. You make a master version and send a copy of each version to a bunch of people, and then you can merge all edits into a final version. You can manage many edits at once. Allows us to view entire history of revisions and merge them into one file. It is useful because it makes the process seamless and efficient, and the timeline/history shows who did what at what time. 

* What is a branch and why would you use one? 
A branch is created to preserve the working condition of master, so you can work on a copy and merge it back into the master. I would use it to keep the integrity of the master branch intact, and create changes on the branch, which is a copy of the master. 

* What is a commit? What makes a good commit message?
git does not automatically save versions of files. Any time someone wants to make a change and create a “save point,” he or she needs to tell Git the command via a commit. It consists of a unique ID, a message, author, and date. A good message is easily readable and understandable by someone unfamiliar with the change, so the reader can understand why that change was made. It can serve as an index that anyone can refer to if they have questions about a certain change made to the code. 

* What is a merge conflict?
When changes made in different branches conflict then then get resolved (?) to become merged back into the master branch.