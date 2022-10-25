# git workshop
In this session you will explore different git repositories which contain different histories of a file named `out`. You will interact with the file and the git repository to gain a better understanding of how git can solve many workflow problems you may encounter in the final two days of the camp.

Each challenge starts by having you run `make <challenge name>`. This sets up the git repository and prints help information about the new git command you will be using. This information is useful; make sure you read it carefully! It can always be shown again by running `tldr git <sub-command>`

## git log
### why?
Your git repository holds the history of your project. Git log lets you see this history in your terminal.

### challenge
Run `make log`

I can't get a certain song out of my head. The lyrics keep working their way into my work. Can you find out what it is?

#### hint
This one is meant to be easy; you only need to run one command after `make log`!

## git reset
### why?
Have you ever made a mistake? Have you ever wanted to go back to a time before you had made that mistake? Git lets you do that!

## challenge
Run `make reset`

I accidentally deleted my password which used to be in the `out` file. Can you get it back for me?

## git status and git diff
### why?
`git status` is probably one of the commands you will use most often. It will tell you what in your project you have changed since the last commit.

`git diff` is also incredibly useful. It shows you exactly how each file has changed since the last commit. I use it as a sanity check before making a new commit so that I can be sure I've only made the intended changes/haven't forgotten anything.

### challenge
Run `make status`, then `git status`. Look at the output.

Now change the file out. Add another number to it and delete some of the numbers already in it. Run `git status` again. What changed?

Try running `git diff`. What is it trying to tell you?

## git checkout
### why?
Sometimes the version of a file you want to work on is not the most recent one. Commit histories can get very messy and you might want to label special versions of your work. For example, you might want to label versions of your essay as "ready for review by teacher" or "final submission". This lets you, and others, find these special versions easier. In git, these labels are called *tag*s.
### challenge
Run `make checkout`

I've hidden my my favourite food in a tagged commit. Can you tell me what it is?
#### hint
Try running `git log`. This will let you see all commits, and any tags associated with them.

## git blame
### why?
Git blame will tell you when each line was introduced into the project, and what the commit was. This can help you understand what the programmer was thinking while working. In team projects, it can also help you figure out who to ask for help when you don't understand the code.
### challenge
Run `make blame`

Can you find the commit that added the 'bug' to `out`?

## git bisect
### why?
Sometimes you don't know when a bug was introduced. You could have done a lot of development work before testing your code or realised later that you made a mistake. Tracking these kinds of bugs down is hard. Git bisect lets you systematically check your project for the exact moment where you made the mistake.
### challenge
Run `make bisect`

`out` should only have one instance of lol. However, the current commit has 2. Can you find the commit in which the second instance was introduced?

##### Hint
This one is a little more involved. You have 3 problems to solve

1) Find a way of determining whether a commit is 'good' or 'bad'
2) Find a 'bad' commit
3) Find a 'good' commit

Therefore, you have 3 hints!

1) Try running `rg lol out`
2) See 1
3) You need to find some way to go to an earlier commit. Do you know how to browse commit history? Can you move to a specific commit using its commit hash?

## git branch
### why?
Time usually runs in a straight line, but not in git! Here you can save snapshots of the past and try different things from a common starting point. For example, you could take the last working version of your code and try to add a new feature. If you need to work on something else, you can start a new branch and go back to your old work when you're ready.

The branch you see by default on github projects is the master branch. This is also the first branch git will put you in when you start a new project with `git init`

### challenge
Run `make branch`.

I have put my favourite band into a commit in the secret branch. Can you tell me what it is?

## Putting it all together!

Are you still with me? Good! Well done on getting this far. We will now walk through how an edit should be made.

### Challenge
Run `make merge`.

You should see a simple calculator program. Try running it with `./out`. Now try `./out 1 2`. Can you spot the mistake?

Try looking at the file with `bat out` can you spot the line that is wrong?

Is there a release for this program? 

What is the most recent release?

Can you check if the bug exists in the most recent release?

Can you make a new branch in which you will fix the bug? Make sure you call `git switch -c <branch name>` from the latest release and not the latest commit!

Can you make a new commit with your changes?

Can you merge those changes back into the master branch?


## Extension
Look at all the `.setup_<command>.sh` scripts in this directory. Do you understand all the commands that are in them?

Look at the file `makefile`. Do you understand how it works?
