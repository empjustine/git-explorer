[
  {
    "left": "workspace",
    "right": "index",
    "direction": "status",
    "command": "status",
    "documentation": "Displays paths that have differences between the index file and the current HEAD commit, paths that have differences between the workspace and the index file, and paths in the workspace that are not tracked by git."
  },
  {
    "left": "workspace",
    "right": "index",
    "direction": "status",
    "command": "diff",
    "documentation": "Displays the differences not added to the index."
  },
  {
    "left": "workspace",
    "right": "local repository",
    "direction": "status",
    "command": "diff <branch_name> or <commit>",
    "documentation": "View the changes you have in your workspace relative to the named <commit>.\nYou can use HEAD to compare it with the latest commit, or a branch name to compare with the tip of a different branch"
  },
  {
    "left": "workspace",
    "right": "index",
    "direction": "up",
    "command": "add <file... or dir...>",
    "documentation": "Adds the current content of new or modified files to the index, thus staging that content for inclusion in the next commit."
  },
  {
    "left": "workspace",
    "right": "index",
    "direction": "up",
    "command": "add -u",
    "documentation": "Adds the current content of modified (NOT NEW) files to the index. This is similar to what 'git commit -a' does in preparation for making a commit."
  },
  {
    "left": "workspace",
    "right": "index",
    "direction": "up",
    "command": "add --interactive",
    "documentation": "Add modified contents in the workspace interactively to the index."
  },
  {
    "left": "workspace",
    "right": "index",
    "direction": "up",
    "command": "rm <file...>",
    "documentation": "Remove file in the workspace and the index."
  },
  {
    "left": "workspace",
    "right": "local repository",
    "direction": "up",
    "command": "commit -a -m 'msg'",
    "documentation": "Commit all files changed since your last commit, except untracked files (ie. all files that are already listed in the index).\nRemove files in the index that have been removed from the workspace."
  },
  {
    "left": "workspace",
    "right": "index",
    "direction": "dn",
    "command": "checkout <file...> or <dir...>",
    "documentation": "Updates the file or directory in the workspace, overwriting any local changes. Does NOT switch branches."
  },
  {
    "left": "index",
    "right": "index",
    "direction": "status",
    "command": "reset HEAD <file1> <file2> ...",
    "documentation": "Remove the specified files from the next commit.\nResets the index but not the working tree (i.e., the changed files are preserved but not marked for commit) and\nreports what has not been updated."
  },
  {
    "left": "index",
    "right": "local repository",
    "direction": "dn",
    "command": "reset --soft HEAD^",
    "documentation": "Undo the last commit, leaving changes in the the index."
  },
  {
    "left": "workspace",
    "right": "local repository",
    "direction": "dn",
    "command": "reset --hard",
    "documentation": "Matches the workspace and index to the local tree.\nWARNING: Any changes to tracked files in the working tree since commit are lost.\nUse this if merging has resulted in conflicts and you'd like to start over. Pass ORIG_HEAD to undo the most recent successful merge and any changes after."
  },
  {
    "left": "workspace",
    "right": "local repository",
    "direction": "dn",
    "command": "checkout <branch>",
    "documentation": "Switches branches by updating the index and workspace to reflect the specified branch, <branch>, and updating HEAD to be <branch>."
  },
  {
    "left": "workspace",
    "right": "local repository",
    "direction": "dn",
    "command": "checkout -b <name of new branch>",
    "documentation": "Create a branch and switch to it"
  },
  {
    "left": "workspace",
    "right": "local repository",
    "direction": "dn",
    "command": "merge <branch_name> or <commit>",
    "documentation": "Merge changes from <branch_name> into current branch. Use --no-commit to leave changes uncommitted."
  },
  {
    "left": "workspace",
    "right": "local repository",
    "direction": "dn",
    "command": "rebase <upstream>",
    "documentation": "Reverts all commits since the current branch diverged from <upstream>, and then re-applies them one-by-one on top of changes from the HEAD of <upstream>."
  },
  {
    "left": "workspace",
    "right": "local repository",
    "direction": "dn",
    "command": "revert <rev>",
    "documentation": "Reverse commit specified by <rev> and commit the result.\nThis requires your working tree to be clean (no modifications from the HEAD commit)."
  },
  {
    "left": "index",
    "right": "local repository",
    "direction": "status",
    "command": "diff --cached",
    "documentation": "View the changes you staged vs the latest commit. Can pass a <commit> to see changes relative to it."
  },
  {
    "left": "index",
    "right": "local repository",
    "direction": "up",
    "command": "commit -m 'msg'",
    "documentation": "Stores the current contents of the index in a new commit along with a log message from the user describing the changes."
  },
  {
    "left": "index",
    "right": "local repository",
    "direction": "up",
    "command": "commit --amend",
    "documentation": "Modify the last commit with the current index changes."
  },
  {
    "left": "local repository",
    "right": "local repository",
    "direction": "status",
    "command": "log",
    "documentation": "Show recent commits, most recent on top. Options:\n\t--decorate with branch and tag names on appropriate commits\n\t--stat with stats (files changed, insertions, and deletions)\n\t--author=foo only by a certain author\n\t--after=\"MMM DD YYYY\" ex. (\"Jun 20 2008\") only commits after a certain date\n\t--before=\"MMM DD YYYY\" only commits that occur before a certain date\n\t--merge only the commits involved in the current merge conflicts"
  },
  {
    "left": "local repository",
    "right": "local repository",
    "direction": "status",
    "command": "diff <commit>..<commit>",
    "documentation": "View the changes between two arbitrary commits"
  },
  {
    "left": "local repository",
    "right": "local repository",
    "direction": "status",
    "command": "branch",
    "documentation": "list all existing branches"
  },
  {
    "left": "local repository",
    "right": "local repository",
    "direction": "status",
    "command": "branch -d <branch_name>",
    "documentation": "Delete an specified branch. Use -D to force."
  },
  {
    "left": "local repository",
    "right": "upstream repository",
    "direction": "dn",
    "command": "branch --track <new> <remote/branch>",
    "documentation": "Create a new local branch that tracks a remote branch."
  },
  {
    "left": "workspace",
    "right": "upstream repository",
    "direction": "dn",
    "command": "clone <repo>",
    "documentation": "Download the repository specified by <repo> and checkout HEAD of the master branch."
  },
  {
    "left": "workspace",
    "right": "upstream repository",
    "direction": "dn",
    "command": "pull <repo> <refspec>",
    "documentation": "Fetch changes from the remote repo and merge them into the current branch."
  },
  {
    "left": "local repository",
    "right": "upstream repository",
    "direction": "dn",
    "command": "fetch <repo> <refspec>",
    "documentation": "Download objects and refs from another repository."
  },
  {
    "left": "local repository",
    "right": "upstream repository",
    "direction": "up",
    "command": "push",
    "documentation": "update the server with your commits across all branches that are *COMMON* between your local copy and the server.\nLocal branches that were never pushed to the server in the first place are not shared"
  },
  {
    "left": "local repository",
    "right": "upstream repository",
    "direction": "up",
    "command": "push origin <branch>",
    "documentation": "Push new (or existing) branch to remote repository"
  },
  {
    "left": "local repository",
    "right": "upstream repository",
    "direction": "up",
    "command": "push origin <branch>:<branch>",
    "documentation": "Push new branch to remote repository with a different name"
  },
  {
    "left": "upstream repository",
    "right": "upstream repository",
    "direction": "status",
    "command": "branch -r",
    "documentation": "List remote branches"
  },
  {
    "left": "upstream repository",
    "right": "upstream repository",
    "direction": "status",
    "command": "push origin :<branch>",
    "documentation": "Remove a remote branch"
  },
  {
    "left": "workspace",
    "right": "workspace",
    "direction": "status",
    "command": "clean",
    "documentation": "Cleans the working tree by recursively removing files that are not under version control, starting from the current directory."
  },
  {
    "left": "stash",
    "right": "workspace",
    "direction": "dn",
    "command": "stash save <name>",
    "documentation": "Stashes current changes. Can provide a name."
  },
  {
    "left": "stash",
    "right": "workspace",
    "direction": "status",
    "command": "stash list",
    "documentation": "Show all stashed changes"
  },
  {
    "left": "stash",
    "right": "workspace",
    "direction": "up",
    "command": "stash apply <name>",
    "documentation": "Move changes from the specified stash into the workspace. The latest stash is the default."
  },
  {
    "left": "stash",
    "right": "workspace",
    "direction": "up",
    "command": "stash pop",
    "documentation": "Applies the changes from the last (or specified) stash and then removes the given stash."
  }
]
