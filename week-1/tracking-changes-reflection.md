#How does tracking and adding changes make developer's lives easier?

Tracking and adding changes makes developers lives easier because they are able to organize their changes and ensure that they can go back to a change in any point in time and understand their rationale for making the change as well as keep the code that they are adding and taking away from seperate from the master in case something goes wrong.

##What is a commit?

A commit is similar to a save point.  It a snapshot of a point in time when you are working that you are able to return to.  It is useful for developers because they can organize their changes into commits and catalog their changes so that if something goes wrong, they can restore a previous commit.

###What are the best practices for commit messages
Commit messages should be in the present tense and they should have a subject line similar to an email which is 50 characters or less and then more detail beneath that if you need to expound on the topic more.

####What does the HEAD^ argument mean?
The HEAD^ argument takes you back to a previous commit.  You can add anumber after HEAD to jump back that number of commits.

#####What are the 3 stages of a git change and how do you move from one stage to another.
The three stages are working, stage, and commit.  You move from working to stage by saving the progress of what you are editing in your working directory and then from stage to commit by using the git add <change> command.

######Write a handy cheatsheet of the commands you need to commit your changes
git status - check the staus of what you branch you are in
git branch -b <branch> make a new branch
git add . - add a stage to commit
git push origin <branch> push your branch to GitHub

#######What is a pull request and how do you create and merge one?
A pull request is a way to integrade branches that developers have worked on into the master.  You create a pull request through GitHub and it is good practice to merge it there.  You can also merge your branch to your local master by using the merge functionality in git.

########Why are pull requests preferred when working with teams?
They are preferred because someone can be in charge of what ultimately goes into the master and has a chance to review the code.  This allows the other developers to focus on working on things and then letting the upstream developer go over what is being changed.