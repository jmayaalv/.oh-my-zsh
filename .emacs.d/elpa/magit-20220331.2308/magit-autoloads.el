;;; magit-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "git-rebase" "../../../../../.emacs.d/elpa/magit-20220331.2308/git-rebase.el"
;;;;;;  "9613ab523c86e797ba885ac4b67501e4")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/git-rebase.el

(autoload 'git-rebase-current-line "git-rebase" "\
Parse current line into a `git-rebase-action' instance.
If the current line isn't recognized as a rebase line, an
instance with all nil values is returned." nil nil)

(autoload 'git-rebase-mode "git-rebase" "\
Major mode for editing of a Git rebase file.

Rebase files are generated when you run 'git rebase -i' or run
`magit-interactive-rebase'.  They describe how Git should perform
the rebase.  See the documentation for git-rebase (e.g., by
running 'man git-rebase' at the command line) for details.

\(fn)" t nil)

(defconst git-rebase-filename-regexp "/git-rebase-todo\\'")

(add-to-list 'auto-mode-alist (cons git-rebase-filename-regexp #'git-rebase-mode))

;;;### (autoloads "actual autoloads are elsewhere" "git-rebase" "../../../../../.emacs.d/elpa/magit-20220331.2308/git-rebase.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/git-rebase.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "git-rebase" '("git-rebase-" "magit-imenu--rebase-")))

;;;***

;;;***

;;;### (autoloads nil "magit" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit.el"
;;;;;;  "6a58fb7918f2764b09f0f086cae4499c")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit.el

(define-obsolete-variable-alias 'global-magit-file-mode 'magit-define-global-key-bindings "Magit 3.0.0")

(defvar magit-define-global-key-bindings t "\
Whether to bind some Magit commands in the global keymap.

If this variable is non-nil, then the following bindings may
be added to the global keymap.  The default is t.

key             binding
---             -------
C-x g           magit-status
C-x M-g         magit-dispatch
C-c M-g         magit-file-dispatch

These bindings may be added when `after-init-hook' is run.
Each binding is added if and only if at that time no other key
is bound to the same command and no other command is bound to
the same key.  In other words we try to avoid adding bindings
that are unnecessary, as well as bindings that conflict with
other bindings.

Adding the above bindings is delayed until `after-init-hook'
is called to allow users to set the variable anywhere in their
init file (without having to make sure to do so before `magit'
is loaded or autoloaded) and to increase the likelihood that
all the potentially conflicting user bindings have already
been added.

To set this variable use either `setq' or the Custom interface.
Do not use the function `customize-set-variable' because doing
that would cause Magit to be loaded immediately when that form
is evaluated (this differs from `custom-set-variables', which
doesn't load the libraries that define the customized variables).

Setting this variable to nil has no effect if that is done after
the key bindings have already been added.

We recommend that you bind \"C-c g\" instead of \"C-c M-g\" to
`magit-file-dispatch'.  The former is a much better binding
but the \"C-c <letter>\" namespace is strictly reserved for
users; preventing Magit from using it by default.

Also see info node `(magit)Commands for Buffers Visiting Files'.")

(custom-autoload 'magit-define-global-key-bindings "magit" t)

(defun magit-maybe-define-global-key-bindings (&optional force) (when magit-define-global-key-bindings (let ((map (current-global-map))) (dolist (elt '(("C-x g" . magit-status) ("C-x M-g" . magit-dispatch) ("C-c M-g" . magit-file-dispatch))) (let ((key (kbd (car elt))) (def (cdr elt))) (when (or force (not (or (lookup-key map key) (where-is-internal def (make-sparse-keymap) t)))) (define-key map key def)))))))

(if after-init-time (magit-maybe-define-global-key-bindings) (add-hook 'after-init-hook #'magit-maybe-define-global-key-bindings t))
 (autoload 'magit-dispatch "magit" nil t)
 (autoload 'magit-run "magit" nil t)

(autoload 'magit-git-command "magit" "\
Execute COMMAND asynchronously; display output.

Interactively, prompt for COMMAND in the minibuffer. \"git \" is
used as initial input, but can be deleted to run another command.

With a prefix argument COMMAND is run in the top-level directory
of the current working tree, otherwise in `default-directory'.

\(fn COMMAND)" t nil)

(autoload 'magit-git-command-topdir "magit" "\
Execute COMMAND asynchronously; display output.

Interactively, prompt for COMMAND in the minibuffer. \"git \" is
used as initial input, but can be deleted to run another command.

COMMAND is run in the top-level directory of the current
working tree.

\(fn COMMAND)" t nil)

(autoload 'magit-shell-command "magit" "\
Execute COMMAND asynchronously; display output.

Interactively, prompt for COMMAND in the minibuffer.  With a
prefix argument COMMAND is run in the top-level directory of
the current working tree, otherwise in `default-directory'.

\(fn COMMAND)" t nil)

(autoload 'magit-shell-command-topdir "magit" "\
Execute COMMAND asynchronously; display output.

Interactively, prompt for COMMAND in the minibuffer.  COMMAND
is run in the top-level directory of the current working tree.

\(fn COMMAND)" t nil)

(autoload 'magit-version "magit" "\
Return the version of Magit currently in use.
If optional argument PRINT-DEST is non-nil, output
stream (interactively, the echo area, or the current buffer with
a prefix argument), also print the used versions of Magit, Git,
and Emacs to it.

\(fn &optional PRINT-DEST)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-apply" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-apply.el"
;;;;;;  "30d8f0316368789a2cd305e2e4091b07")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-apply.el

(autoload 'magit-stage-file "magit-apply" "\
Stage all changes to FILE.
With a prefix argument or when there is no file at point ask for
the file to be staged.  Otherwise stage the file at point without
requiring confirmation.

\(fn FILE)" t nil)

(autoload 'magit-stage-modified "magit-apply" "\
Stage all changes to files modified in the worktree.
Stage all new content of tracked files and remove tracked files
that no longer exist in the working tree from the index also.
With a prefix argument also stage previously untracked (but not
ignored) files.

\(fn &optional ALL)" t nil)

(autoload 'magit-unstage-file "magit-apply" "\
Unstage all changes to FILE.
With a prefix argument or when there is no file at point ask for
the file to be unstaged.  Otherwise unstage the file at point
without requiring confirmation.

\(fn FILE)" t nil)

(autoload 'magit-unstage-all "magit-apply" "\
Remove all changes from the staging area." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-apply"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-apply.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-apply.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-apply" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-autorevert" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-autorevert.el"
;;;;;;  "f387e7d818e819b8f4a2c89513f9f284")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-autorevert.el

(put 'magit-auto-revert-mode 'globalized-minor-mode t)

(defvar magit-auto-revert-mode (not (or global-auto-revert-mode noninteractive)) "\
Non-nil if Magit-Auto-Revert mode is enabled.
See the `magit-auto-revert-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `magit-auto-revert-mode'.")

(custom-autoload 'magit-auto-revert-mode "magit-autorevert" nil)

(autoload 'magit-auto-revert-mode "magit-autorevert" "\
Toggle Auto-Revert mode in all buffers.
With prefix ARG, enable Magit-Auto-Revert mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Auto-Revert mode is enabled in all buffers where
`magit-turn-on-auto-revert-mode-if-desired' would do it.
See `auto-revert-mode' for more information on Auto-Revert mode.

\(fn &optional ARG)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-autorevert"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-autorevert.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-autorevert.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-autorevert" '("auto-revert-buffer" "magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-base" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-base.el"
;;;;;;  "7a922f9ad86d8844a49e1ddf1d7dabfd")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-base.el

(autoload 'magit-emacs-Q-command "magit-base" "\
Show a shell command that runs an uncustomized Emacs with only Magit loaded.
See info node `(magit)Debugging Tools' for more information." t nil)

(autoload 'Info-follow-nearest-node--magit-gitman "magit-base" "\


\(fn FN &optional FORK)" nil nil)

(advice-add 'Info-follow-nearest-node :around #'Info-follow-nearest-node--magit-gitman)

(advice-add 'org-man-export :around #'org-man-export--magit-gitman)

(autoload 'org-man-export--magit-gitman "magit-base" "\


\(fn FN LINK DESCRIPTION FORMAT)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-base" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-base.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-base.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-base" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-bisect" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-bisect.el"
;;;;;;  "e4a0b4d90eda9d1b1d78957b89dab01e")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-bisect.el
 (autoload 'magit-bisect "magit-bisect" nil t)

(autoload 'magit-bisect-start "magit-bisect" "\
Start a bisect session.

Bisecting a bug means to find the commit that introduced it.
This command starts such a bisect session by asking for a known
good and a known bad commit.  To move the session forward use the
other actions from the bisect transient command (\\<magit-status-mode-map>\\[magit-bisect]).

\(fn BAD GOOD ARGS)" t nil)

(autoload 'magit-bisect-reset "magit-bisect" "\
After bisecting, cleanup bisection state and return to original `HEAD'." t nil)

(autoload 'magit-bisect-good "magit-bisect" "\
While bisecting, mark the current commit as good.
Use this after you have asserted that the commit does not contain
the bug in question." t nil)

(autoload 'magit-bisect-bad "magit-bisect" "\
While bisecting, mark the current commit as bad.
Use this after you have asserted that the commit does contain the
bug in question." t nil)

(autoload 'magit-bisect-mark "magit-bisect" "\
While bisecting, mark the current commit with a bisect term.
During a bisect using alternate terms, commits can still be
marked with `magit-bisect-good' and `magit-bisect-bad', as those
commands map to the correct term (\"good\" to --term-old's value
and \"bad\" to --term-new's).  However, in some cases, it can be
difficult to keep that mapping straight in your head; this
command provides an interface that exposes the underlying terms." t nil)

(autoload 'magit-bisect-skip "magit-bisect" "\
While bisecting, skip the current commit.
Use this if for some reason the current commit is not a good one
to test.  This command lets Git choose a different one." t nil)

(autoload 'magit-bisect-run "magit-bisect" "\
Bisect automatically by running commands after each step.

Unlike `git bisect run' this can be used before bisecting has
begun.  In that case it behaves like `git bisect start; git
bisect run'.

\(fn CMDLINE &optional BAD GOOD ARGS)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-bisect"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-bisect.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-bisect.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-bisect" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-blame" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-blame.el"
;;;;;;  "6f800f1a3970092ca46e8bcd013be882")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-blame.el
 (autoload 'magit-blame-echo "magit-blame" nil t)
 (autoload 'magit-blame-addition "magit-blame" nil t)
 (autoload 'magit-blame-removal "magit-blame" nil t)
 (autoload 'magit-blame-reverse "magit-blame" nil t)
 (autoload 'magit-blame "magit-blame" nil t)

;;;### (autoloads "actual autoloads are elsewhere" "magit-blame"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-blame.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-blame.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-blame" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-bookmark" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-bookmark.el"
;;;;;;  "74785ea745ea60851c05b1aa04f7fa61")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-bookmark.el

(autoload 'magit--handle-bookmark "magit-bookmark" "\
Open a bookmark created by `magit--make-bookmark'.
Call the `magit-*-setup-buffer' function of the the major-mode
with the variables' values as arguments, which were recorded by
`magit--make-bookmark'.  Ignore `magit-display-buffer-function'.

\(fn BOOKMARK)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-bookmark"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-bookmark.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-bookmark.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-bookmark" '("magit--make-bookmark")))

;;;***

;;;***

;;;### (autoloads nil "magit-branch" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-branch.el"
;;;;;;  "20474adbddbb1e27e7389d3ff70e2914")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-branch.el
 (autoload 'magit-branch "magit" nil t)

(autoload 'magit-checkout "magit-branch" "\
Checkout REVISION, updating the index and the working tree.
If REVISION is a local branch, then that becomes the current
branch.  If it is something else, then `HEAD' becomes detached.
Checkout fails if the working tree or the staging area contain
changes.

\(git checkout REVISION).

\(fn REVISION &optional ARGS)" t nil)

(autoload 'magit-branch-create "magit-branch" "\
Create BRANCH at branch or revision START-POINT.

\(fn BRANCH START-POINT)" t nil)

(autoload 'magit-branch-and-checkout "magit-branch" "\
Create and checkout BRANCH at branch or revision START-POINT.

\(fn BRANCH START-POINT &optional ARGS)" t nil)

(autoload 'magit-branch-or-checkout "magit-branch" "\
Hybrid between `magit-checkout' and `magit-branch-and-checkout'.

Ask the user for an existing branch or revision.  If the user
input actually can be resolved as a branch or revision, then
check that out, just like `magit-checkout' would.

Otherwise create and checkout a new branch using the input as
its name.  Before doing so read the starting-point for the new
branch.  This is similar to what `magit-branch-and-checkout'
does.

\(fn ARG &optional START-POINT)" t nil)

(autoload 'magit-branch-checkout "magit-branch" "\
Checkout an existing or new local branch.

Read a branch name from the user offering all local branches and
a subset of remote branches as candidates.  Omit remote branches
for which a local branch by the same name exists from the list
of candidates.  The user can also enter a completely new branch
name.

- If the user selects an existing local branch, then check that
  out.

- If the user selects a remote branch, then create and checkout
  a new local branch with the same name.  Configure the selected
  remote branch as push target.

- If the user enters a new branch name, then create and check
  that out, after also reading the starting-point from the user.

In the latter two cases the upstream is also set.  Whether it is
set to the chosen START-POINT or something else depends on the
value of `magit-branch-adjust-remote-upstream-alist', just like
when using `magit-branch-and-checkout'.

\(fn BRANCH &optional START-POINT)" t nil)

(autoload 'magit-branch-orphan "magit-branch" "\
Create and checkout an orphan BRANCH with contents from revision START-POINT.

\(fn BRANCH START-POINT)" t nil)

(autoload 'magit-branch-spinout "magit-branch" "\
Create new branch from the unpushed commits.
Like `magit-branch-spinoff' but remain on the current branch.
If there are any uncommitted changes, then behave exactly like
`magit-branch-spinoff'.

\(fn BRANCH &optional FROM)" t nil)

(autoload 'magit-branch-spinoff "magit-branch" "\
Create new branch from the unpushed commits.

Create and checkout a new branch starting at and tracking the
current branch.  That branch in turn is reset to the last commit
it shares with its upstream.  If the current branch has no
upstream or no unpushed commits, then the new branch is created
anyway and the previously current branch is not touched.

This is useful to create a feature branch after work has already
began on the old branch (likely but not necessarily \"master\").

If the current branch is a member of the value of option
`magit-branch-prefer-remote-upstream' (which see), then the
current branch will be used as the starting point as usual, but
the upstream of the starting-point may be used as the upstream
of the new branch, instead of the starting-point itself.

If optional FROM is non-nil, then the source branch is reset
to `FROM~', instead of to the last commit it shares with its
upstream.  Interactively, FROM is only ever non-nil, if the
region selects some commits, and among those commits, FROM is
the commit that is the fewest commits ahead of the source
branch.

The commit at the other end of the selection actually does not
matter, all commits between FROM and `HEAD' are moved to the new
branch.  If FROM is not reachable from `HEAD' or is reachable
from the source branch's upstream, then an error is raised.

\(fn BRANCH &optional FROM)" t nil)

(autoload 'magit-branch-reset "magit-branch" "\
Reset a branch to the tip of another branch or any other commit.

When the branch being reset is the current branch, then do a
hard reset.  If there are any uncommitted changes, then the user
has to confirm the reset because those changes would be lost.

This is useful when you have started work on a feature branch but
realize it's all crap and want to start over.

When resetting to another branch and a prefix argument is used,
then also set the target branch as the upstream of the branch
that is being reset.

\(fn BRANCH TO &optional SET-UPSTREAM)" t nil)

(autoload 'magit-branch-delete "magit-branch" "\
Delete one or multiple branches.
If the region marks multiple branches, then offer to delete
those, otherwise prompt for a single branch to be deleted,
defaulting to the branch at point.

\(fn BRANCHES &optional FORCE)" t nil)

(autoload 'magit-branch-rename "magit-branch" "\
Rename the branch named OLD to NEW.

With a prefix argument FORCE, rename even if a branch named NEW
already exists.

If `branch.OLD.pushRemote' is set, then unset it.  Depending on
the value of `magit-branch-rename-push-target' (which see) maybe
set `branch.NEW.pushRemote' and maybe rename the push-target on
the remote.

\(fn OLD NEW &optional FORCE)" t nil)

(autoload 'magit-branch-shelve "magit-branch" "\
Shelve a BRANCH.
Rename \"refs/heads/BRANCH\" to \"refs/shelved/BRANCH\",
and also rename the respective reflog file.

\(fn BRANCH)" t nil)

(autoload 'magit-branch-unshelve "magit-branch" "\
Unshelve a BRANCH
Rename \"refs/shelved/BRANCH\" to \"refs/heads/BRANCH\",
and also rename the respective reflog file.

\(fn BRANCH)" t nil)
 (autoload 'magit-branch-configure "magit-branch" nil t)

;;;### (autoloads "actual autoloads are elsewhere" "magit-branch"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-branch.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-branch.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-branch" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-bundle" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-bundle.el"
;;;;;;  "d6c5e892d5717ae06ca8947ce9f4f9b4")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-bundle.el
 (autoload 'magit-bundle "magit-bundle" nil t)
 (autoload 'magit-bundle-import "magit-bundle" nil t)

(autoload 'magit-bundle-create-tracked "magit-bundle" "\
Create and track a new bundle.

\(fn FILE TAG BRANCH REFS ARGS)" t nil)

(autoload 'magit-bundle-update-tracked "magit-bundle" "\
Update a bundle that is being tracked using TAG.

\(fn TAG)" t nil)

(autoload 'magit-bundle-verify "magit-bundle" "\
Check whether FILE is valid and applies to the current repository.

\(fn FILE)" t nil)

(autoload 'magit-bundle-list-heads "magit-bundle" "\
List the refs in FILE.

\(fn FILE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-bundle"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-bundle.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-bundle.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-bundle" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-clone" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-clone.el"
;;;;;;  "4e3e9531ac709be1a5411738700dc654")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-clone.el
 (autoload 'magit-clone "magit-clone" nil t)

(autoload 'magit-clone-regular "magit-clone" "\
Create a clone of REPOSITORY in DIRECTORY.
Then show the status buffer for the new repository.

\(fn REPOSITORY DIRECTORY ARGS)" t nil)

(autoload 'magit-clone-shallow "magit-clone" "\
Create a shallow clone of REPOSITORY in DIRECTORY.
Then show the status buffer for the new repository.
With a prefix argument read the DEPTH of the clone;
otherwise use 1.

\(fn REPOSITORY DIRECTORY ARGS DEPTH)" t nil)

(autoload 'magit-clone-shallow-since "magit-clone" "\
Create a shallow clone of REPOSITORY in DIRECTORY.
Then show the status buffer for the new repository.
Exclude commits before DATE, which is read from the
user.

\(fn REPOSITORY DIRECTORY ARGS DATE)" t nil)

(autoload 'magit-clone-shallow-exclude "magit-clone" "\
Create a shallow clone of REPOSITORY in DIRECTORY.
Then show the status buffer for the new repository.
Exclude commits reachable from EXCLUDE, which is a
branch or tag read from the user.

\(fn REPOSITORY DIRECTORY ARGS EXCLUDE)" t nil)

(autoload 'magit-clone-bare "magit-clone" "\
Create a bare clone of REPOSITORY in DIRECTORY.
Then show the status buffer for the new repository.

\(fn REPOSITORY DIRECTORY ARGS)" t nil)

(autoload 'magit-clone-mirror "magit-clone" "\
Create a mirror of REPOSITORY in DIRECTORY.
Then show the status buffer for the new repository.

\(fn REPOSITORY DIRECTORY ARGS)" t nil)

(autoload 'magit-clone-sparse "magit-clone" "\
Clone REPOSITORY into DIRECTORY and create a sparse checkout.

\(fn REPOSITORY DIRECTORY ARGS)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-clone"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-clone.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-clone.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-clone" '("magit-clone-")))

;;;***

;;;***

;;;### (autoloads nil "magit-commit" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-commit.el"
;;;;;;  "f1e87e987ef7a0ece053410d0d4d2012")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-commit.el
 (autoload 'magit-commit "magit-commit" nil t)

(autoload 'magit-commit-create "magit-commit" "\
Create a new commit on `HEAD'.
With a prefix argument, amend to the commit at `HEAD' instead.

\(git commit [--amend] ARGS)

\(fn &optional ARGS)" t nil)

(autoload 'magit-commit-amend "magit-commit" "\
Amend the last commit.

\(git commit --amend ARGS)

\(fn &optional ARGS)" t nil)

(autoload 'magit-commit-extend "magit-commit" "\
Amend the last commit, without editing the message.

With a prefix argument keep the committer date, otherwise change
it.  The option `magit-commit-extend-override-date' can be used
to inverse the meaning of the prefix argument.  
\(git commit
--amend --no-edit)

\(fn &optional ARGS OVERRIDE-DATE)" t nil)

(autoload 'magit-commit-reword "magit-commit" "\
Reword the last commit, ignoring staged changes.

With a prefix argument keep the committer date, otherwise change
it.  The option `magit-commit-reword-override-date' can be used
to inverse the meaning of the prefix argument.

Non-interactively respect the optional OVERRIDE-DATE argument
and ignore the option.

\(git commit --amend --only)

\(fn &optional ARGS OVERRIDE-DATE)" t nil)

(autoload 'magit-commit-fixup "magit-commit" "\
Create a fixup commit.

With a prefix argument the target COMMIT has to be confirmed.
Otherwise the commit at point may be used without confirmation
depending on the value of option `magit-commit-squash-confirm'.

\(fn &optional COMMIT ARGS)" t nil)

(autoload 'magit-commit-squash "magit-commit" "\
Create a squash commit, without editing the squash message.

With a prefix argument the target COMMIT has to be confirmed.
Otherwise the commit at point may be used without confirmation
depending on the value of option `magit-commit-squash-confirm'.

If you want to immediately add a message to the squash commit,
then use `magit-commit-augment' instead of this command.

\(fn &optional COMMIT ARGS)" t nil)

(autoload 'magit-commit-augment "magit-commit" "\
Create a squash commit, editing the squash message.

With a prefix argument the target COMMIT has to be confirmed.
Otherwise the commit at point may be used without confirmation
depending on the value of option `magit-commit-squash-confirm'.

\(fn &optional COMMIT ARGS)" t nil)

(autoload 'magit-commit-instant-fixup "magit-commit" "\
Create a fixup commit targeting COMMIT and instantly rebase.

\(fn &optional COMMIT ARGS)" t nil)

(autoload 'magit-commit-instant-squash "magit-commit" "\
Create a squash commit targeting COMMIT and instantly rebase.

\(fn &optional COMMIT ARGS)" t nil)

(autoload 'magit-commit-reshelve "magit-commit" "\
Change the committer date and possibly the author date of `HEAD'.

The current time is used as the initial minibuffer input and the
original author or committer date is available as the previous
history element.

Both the author and the committer dates are changes, unless one
of the following is true, in which case only the committer date
is updated:
- You are not the author of the commit that is being reshelved.
- The command was invoked with a prefix argument.
- Non-interactively if UPDATE-AUTHOR is nil.

\(fn DATE UPDATE-AUTHOR &optional ARGS)" t nil)

(autoload 'magit-commit-absorb-modules "magit-commit" "\
Spread modified modules across recent commits.

\(fn PHASE COMMIT)" t nil)
 (autoload 'magit-commit-absorb "magit-commit" nil t)
 (autoload 'magit-commit-autofixup "magit-commit" nil t)

;;;### (autoloads "actual autoloads are elsewhere" "magit-commit"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-commit.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-commit.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-commit" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-diff" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-diff.el"
;;;;;;  "be2177af4ea4dbaa28f1c8602ccfcc84")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-diff.el
 (autoload 'magit-diff "magit-diff" nil t)
 (autoload 'magit-diff-refresh "magit-diff" nil t)

(autoload 'magit-diff-dwim "magit-diff" "\
Show changes for the thing at point.

\(fn &optional ARGS FILES)" t nil)

(autoload 'magit-diff-range "magit-diff" "\
Show differences between two commits.

REV-OR-RANGE should be a range or a single revision.  If it is a
revision, then show changes in the working tree relative to that
revision.  If it is a range, but one side is omitted, then show
changes relative to `HEAD'.

If the region is active, use the revisions on the first and last
line of the region as the two sides of the range.  With a prefix
argument, instead of diffing the revisions, choose a revision to
view changes along, starting at the common ancestor of both
revisions (i.e., use a \"...\" range).

\(fn REV-OR-RANGE &optional ARGS FILES)" t nil)

(autoload 'magit-diff-working-tree "magit-diff" "\
Show changes between the current working tree and the `HEAD' commit.
With a prefix argument show changes between the working tree and
a commit read from the minibuffer.

\(fn &optional REV ARGS FILES)" t nil)

(autoload 'magit-diff-staged "magit-diff" "\
Show changes between the index and the `HEAD' commit.
With a prefix argument show changes between the index and
a commit read from the minibuffer.

\(fn &optional REV ARGS FILES)" t nil)

(autoload 'magit-diff-unstaged "magit-diff" "\
Show changes between the working tree and the index.

\(fn &optional ARGS FILES)" t nil)

(autoload 'magit-diff-unmerged "magit-diff" "\
Show changes that are being merged.

\(fn &optional ARGS FILES)" t nil)

(autoload 'magit-diff-while-committing "magit-diff" "\
While committing, show the changes that are about to be committed.
While amending, invoking the command again toggles between
showing just the new changes or all the changes that will
be committed.

\(fn &optional ARGS)" t nil)

(autoload 'magit-diff-buffer-file "magit-diff" "\
Show diff for the blob or file visited in the current buffer.

When the buffer visits a blob, then show the respective commit.
When the buffer visits a file, then show the differenced between
`HEAD' and the working tree.  In both cases limit the diff to
the file or blob." t nil)

(autoload 'magit-diff-paths "magit-diff" "\
Show changes between any two files on disk.

\(fn A B)" t nil)

(autoload 'magit-show-commit "magit-diff" "\
Visit the revision at point in another buffer.
If there is no revision at point or with a prefix argument prompt
for a revision.

\(fn REV &optional ARGS FILES MODULE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-diff" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-diff.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-diff.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-diff" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-ediff" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-ediff.el"
;;;;;;  "552d5d5fabd675494da924995424ddd0")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-ediff.el
 (autoload 'magit-ediff "magit-ediff" nil)

(autoload 'magit-ediff-resolve "magit-ediff" "\
Resolve outstanding conflicts in FILE using Ediff.
FILE has to be relative to the top directory of the repository.

In the rare event that you want to manually resolve all
conflicts, including those already resolved by Git, use
`ediff-merge-revisions-with-ancestor'.

\(fn FILE)" t nil)

(autoload 'magit-ediff-stage "magit-ediff" "\
Stage and unstage changes to FILE using Ediff.
FILE has to be relative to the top directory of the repository.

\(fn FILE)" t nil)

(autoload 'magit-ediff-compare "magit-ediff" "\
Compare REVA:FILEA with REVB:FILEB using Ediff.

FILEA and FILEB have to be relative to the top directory of the
repository.  If REVA or REVB is nil, then this stands for the
working tree state.

If the region is active, use the revisions on the first and last
line of the region.  With a prefix argument, instead of diffing
the revisions, choose a revision to view changes along, starting
at the common ancestor of both revisions (i.e., use a \"...\"
range).

\(fn REVA REVB FILEA FILEB)" t nil)

(autoload 'magit-ediff-dwim "magit-ediff" "\
Compare, stage, or resolve using Ediff.
This command tries to guess what file, and what commit or range
the user wants to compare, stage, or resolve using Ediff.  It
might only be able to guess either the file, or range or commit,
in which case the user is asked about the other.  It might not
always guess right, in which case the appropriate `magit-ediff-*'
command has to be used explicitly.  If it cannot read the user's
mind at all, then it asks the user for a command to run." t nil)

(autoload 'magit-ediff-show-staged "magit-ediff" "\
Show staged changes using Ediff.

This only allows looking at the changes; to stage, unstage,
and discard changes using Ediff, use `magit-ediff-stage'.

FILE must be relative to the top directory of the repository.

\(fn FILE)" t nil)

(autoload 'magit-ediff-show-unstaged "magit-ediff" "\
Show unstaged changes using Ediff.

This only allows looking at the changes; to stage, unstage,
and discard changes using Ediff, use `magit-ediff-stage'.

FILE must be relative to the top directory of the repository.

\(fn FILE)" t nil)

(autoload 'magit-ediff-show-working-tree "magit-ediff" "\
Show changes between `HEAD' and working tree using Ediff.
FILE must be relative to the top directory of the repository.

\(fn FILE)" t nil)

(autoload 'magit-ediff-show-commit "magit-ediff" "\
Show changes introduced by COMMIT using Ediff.

\(fn COMMIT)" t nil)

(autoload 'magit-ediff-show-stash "magit-ediff" "\
Show changes introduced by STASH using Ediff.
`magit-ediff-show-stash-with-index' controls whether a
three-buffer Ediff is used in order to distinguish changes in the
stash that were staged.

\(fn STASH)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-ediff"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-ediff.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-ediff.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-ediff" '("magit-ediff-")))

;;;***

;;;***

;;;### (autoloads nil "magit-extras" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-extras.el"
;;;;;;  "9d9d2315baf92456e397dd8b5c60de24")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-extras.el
 (autoload 'magit-git-mergetool "magit-extras" nil t)

(autoload 'magit-run-git-gui-blame "magit-extras" "\
Run `git gui blame' on the given FILENAME and COMMIT.
Interactively run it for the current file and the `HEAD', with a
prefix or when the current file cannot be determined let the user
choose.  When the current buffer is visiting FILENAME instruct
blame to center around the line point is on.

\(fn COMMIT FILENAME &optional LINENUM)" t nil)

(autoload 'magit-run-git-gui "magit-extras" "\
Run `git gui' for the current git repository." t nil)

(autoload 'magit-run-gitk "magit-extras" "\
Run `gitk' in the current repository." t nil)

(autoload 'magit-run-gitk-branches "magit-extras" "\
Run `gitk --branches' in the current repository." t nil)

(autoload 'magit-run-gitk-all "magit-extras" "\
Run `gitk --all' in the current repository." t nil)

(autoload 'ido-enter-magit-status "magit-extras" "\
Drop into `magit-status' from file switching.

This command does not work in Emacs 26.1.
See https://github.com/magit/magit/issues/3634
and https://debbugs.gnu.org/cgi/bugreport.cgi?bug=31707.

To make this command available use something like:

  (add-hook \\='ido-setup-hook
            (lambda ()
              (define-key ido-completion-map
                (kbd \"C-x g\") \\='ido-enter-magit-status)))

Starting with Emacs 25.1 the Ido keymaps are defined just once
instead of every time Ido is invoked, so now you can modify it
like pretty much every other keymap:

  (define-key ido-common-completion-map
    (kbd \"C-x g\") \\='ido-enter-magit-status)" t nil)

(autoload 'magit-project-status "magit-extras" "\
Run `magit-status' in the current project's root." t nil)

(autoload 'magit-dired-jump "magit-extras" "\
Visit file at point using Dired.
With a prefix argument, visit in another window.  If there
is no file at point, then instead visit `default-directory'.

\(fn &optional OTHER-WINDOW)" t nil)

(autoload 'magit-dired-log "magit-extras" "\
Show log for all marked files, or the current file.

\(fn &optional FOLLOW)" t nil)

(autoload 'magit-dired-am-apply-patches "magit-extras" "\
In Dired, apply the marked (or next ARG) files as patches.
If inside a repository, then apply in that.  Otherwise prompt
for a repository.

\(fn REPO &optional ARG)" t nil)

(autoload 'magit-do-async-shell-command "magit-extras" "\
Open FILE with `dired-do-async-shell-command'.
Interactively, open the file at point.

\(fn FILE)" t nil)

(autoload 'magit-previous-line "magit-extras" "\
Like `previous-line' but with Magit-specific shift-selection.

Magit's selection mechanism is based on the region but selects an
area that is larger than the region.  This causes `previous-line'
when invoked while holding the shift key to move up one line and
thereby select two lines.  When invoked inside a hunk body this
command does not move point on the first invocation and thereby
it only selects a single line.  Which inconsistency you prefer
is a matter of preference.

\(fn &optional ARG TRY-VSCROLL)" t nil)

(function-put 'magit-previous-line 'interactive-only '"use `forward-line' with negative argument instead.")

(autoload 'magit-next-line "magit-extras" "\
Like `next-line' but with Magit-specific shift-selection.

Magit's selection mechanism is based on the region but selects
an area that is larger than the region.  This causes `next-line'
when invoked while holding the shift key to move down one line
and thereby select two lines.  When invoked inside a hunk body
this command does not move point on the first invocation and
thereby it only selects a single line.  Which inconsistency you
prefer is a matter of preference.

\(fn &optional ARG TRY-VSCROLL)" t nil)

(function-put 'magit-next-line 'interactive-only 'forward-line)

(autoload 'magit-clean "magit-extras" "\
Remove untracked files from the working tree.
With a prefix argument also remove ignored files,
with two prefix arguments remove ignored files only.

\(git clean -f -d [-x|-X])

\(fn &optional ARG)" t nil)

(autoload 'magit-generate-changelog "magit-extras" "\
Insert ChangeLog entries into the current buffer.

The entries are generated from the diff being committed.
If prefix argument, AMENDING, is non-nil, include changes
in HEAD as well as staged changes in the diff to check.

\(fn &optional AMENDING)" t nil)

(autoload 'magit-add-change-log-entry "magit-extras" "\
Find change log file and add date entry and item for current change.
This differs from `add-change-log-entry' (which see) in that
it acts on the current hunk in a Magit buffer instead of on
a position in a file-visiting buffer.

\(fn &optional WHOAMI FILE-NAME OTHER-WINDOW)" t nil)

(autoload 'magit-add-change-log-entry-other-window "magit-extras" "\
Find change log file in other window and add entry and item.
This differs from `add-change-log-entry-other-window' (which see)
in that it acts on the current hunk in a Magit buffer instead of
on a position in a file-visiting buffer.

\(fn &optional WHOAMI FILE-NAME)" t nil)

(autoload 'magit-edit-line-commit "magit-extras" "\
Edit the commit that added the current line.

With a prefix argument edit the commit that removes the line,
if any.  The commit is determined using `git blame' and made
editable using `git rebase --interactive' if it is reachable
from `HEAD', or by checking out the commit (or a branch that
points at it) otherwise.

\(fn &optional TYPE)" t nil)

(autoload 'magit-diff-edit-hunk-commit "magit-extras" "\
From a hunk, edit the respective commit and visit the file.

First visit the file being modified by the hunk at the correct
location using `magit-diff-visit-file'.  This actually visits a
blob.  When point is on a diff header, not within an individual
hunk, then this visits the blob the first hunk is about.

Then invoke `magit-edit-line-commit', which uses an interactive
rebase to make the commit editable, or if that is not possible
because the commit is not reachable from `HEAD' by checking out
that commit directly.  This also causes the actual worktree file
to be visited.

Neither the blob nor the file buffer are killed when finishing
the rebase.  If that is undesirable, then it might be better to
use `magit-rebase-edit-command' instead of this command.

\(fn FILE)" t nil)

(autoload 'magit-reshelve-since "magit-extras" "\
Change the author and committer dates of the commits since REV.

Ask the user for the first reachable commit whose dates should
be changed.  Then read the new date for that commit.  The initial
minibuffer input and the previous history element offer good
values.  The next commit will be created one minute later and so
on.

This command is only intended for interactive use and should only
be used on highly rearranged and unpublished history.

If KEYID is non-nil, then use that to sign all reshelved commits.
Interactively use the value of the \"--gpg-sign\" option in the
list returned by `magit-rebase-arguments'.

\(fn REV KEYID)" t nil)

(autoload 'magit-pop-revision-stack "magit-extras" "\
Insert a representation of a revision into the current buffer.

Pop a revision from the `magit-revision-stack' and insert it into
the current buffer according to `magit-pop-revision-stack-format'.
Revisions can be put on the stack using `magit-copy-section-value'
and `magit-copy-buffer-revision'.

If the stack is empty or with a prefix argument, instead read a
revision in the minibuffer.  By using the minibuffer history this
allows selecting an item which was popped earlier or to insert an
arbitrary reference or revision without first pushing it onto the
stack.

When reading the revision from the minibuffer, then it might not
be possible to guess the correct repository.  When this command
is called inside a repository (e.g. while composing a commit
message), then that repository is used.  Otherwise (e.g. while
composing an email) then the repository recorded for the top
element of the stack is used (even though we insert another
revision).  If not called inside a repository and with an empty
stack, or with two prefix arguments, then read the repository in
the minibuffer too.

\(fn REV TOPLEVEL)" t nil)

(autoload 'magit-copy-section-value "magit-extras" "\
Save the value of the current section for later use.

Save the section value to the `kill-ring', and, provided that
the current section is a commit, branch, or tag section, push
the (referenced) revision to the `magit-revision-stack' for use
with `magit-pop-revision-stack'.

When `magit-copy-revision-abbreviated' is non-nil, save the
abbreviated revision to the `kill-ring' and the
`magit-revision-stack'.

When the current section is a branch or a tag, and a prefix
argument is used, then save the revision at its tip to the
`kill-ring' instead of the reference name.

When the region is active, then save that to the `kill-ring',
like `kill-ring-save' would, instead of behaving as described
above.  If a prefix argument is used and the region is within
a hunk, then strip the diff marker column and keep only either
the added or removed lines, depending on the sign of the prefix
argument.

\(fn ARG)" t nil)

(autoload 'magit-copy-buffer-revision "magit-extras" "\
Save the revision of the current buffer for later use.

Save the revision shown in the current buffer to the `kill-ring'
and push it to the `magit-revision-stack'.

This command is mainly intended for use in `magit-revision-mode'
buffers, the only buffers where it is always unambiguous exactly
which revision should be saved.

Most other Magit buffers usually show more than one revision, in
some way or another, so this command has to select one of them,
and that choice might not always be the one you think would have
been the best pick.

In such buffers it is often more useful to save the value of
the current section instead, using `magit-copy-section-value'.

When the region is active, then save that to the `kill-ring',
like `kill-ring-save' would, instead of behaving as described
above.

When `magit-copy-revision-abbreviated' is non-nil, save the
abbreviated revision to the `kill-ring' and the
`magit-revision-stack'." t nil)

(autoload 'magit-display-repository-buffer "magit-extras" "\
Display a Magit buffer belonging to the current Git repository.
The buffer is displayed using `magit-display-buffer', which see.

\(fn BUFFER)" t nil)

(autoload 'magit-switch-to-repository-buffer "magit-extras" "\
Switch to a Magit buffer belonging to the current Git repository.

\(fn BUFFER)" t nil)

(autoload 'magit-switch-to-repository-buffer-other-window "magit-extras" "\
Switch to a Magit buffer belonging to the current Git repository.

\(fn BUFFER)" t nil)

(autoload 'magit-switch-to-repository-buffer-other-frame "magit-extras" "\
Switch to a Magit buffer belonging to the current Git repository.

\(fn BUFFER)" t nil)

(autoload 'magit-abort-dwim "magit-extras" "\
Abort current operation.
Depending on the context, this will abort a merge, a rebase, a
patch application, a cherry-pick, a revert, or a bisect." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-extras"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-extras.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-extras.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-extras" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-fetch" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-fetch.el"
;;;;;;  "ff1d36de761371d2d5cce693ecf611a4")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-fetch.el
 (autoload 'magit-fetch "magit-fetch" nil t)
 (autoload 'magit-fetch-from-pushremote "magit-fetch" nil t)
 (autoload 'magit-fetch-from-upstream "magit-fetch" nil t)

(autoload 'magit-fetch-other "magit-fetch" "\
Fetch from another repository.

\(fn REMOTE ARGS)" t nil)

(autoload 'magit-fetch-branch "magit-fetch" "\
Fetch a BRANCH from a REMOTE.

\(fn REMOTE BRANCH ARGS)" t nil)

(autoload 'magit-fetch-refspec "magit-fetch" "\
Fetch a REFSPEC from a REMOTE.

\(fn REMOTE REFSPEC ARGS)" t nil)

(autoload 'magit-fetch-all "magit-fetch" "\
Fetch from all remotes.

\(fn ARGS)" t nil)

(autoload 'magit-fetch-all-prune "magit-fetch" "\
Fetch from all remotes, and prune.
Prune remote tracking branches for branches that have been
removed on the respective remote." t nil)

(autoload 'magit-fetch-all-no-prune "magit-fetch" "\
Fetch from all remotes." t nil)
 (autoload 'magit-fetch-modules "magit-fetch" nil t)

;;;### (autoloads "actual autoloads are elsewhere" "magit-fetch"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-fetch.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-fetch.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-fetch" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-files" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-files.el"
;;;;;;  "fcdf2d572a77a9f0e917723a1190038a")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-files.el

(autoload 'magit-find-file "magit-files" "\
View FILE from REV.
Switch to a buffer visiting blob REV:FILE, creating one if none
already exists.  If prior to calling this command the current
buffer and/or cursor position is about the same file, then go
to the line and column corresponding to that location.

\(fn REV FILE)" t nil)

(autoload 'magit-find-file-other-window "magit-files" "\
View FILE from REV, in another window.
Switch to a buffer visiting blob REV:FILE, creating one if none
already exists.  If prior to calling this command the current
buffer and/or cursor position is about the same file, then go to
the line and column corresponding to that location.

\(fn REV FILE)" t nil)

(autoload 'magit-find-file-other-frame "magit-files" "\
View FILE from REV, in another frame.
Switch to a buffer visiting blob REV:FILE, creating one if none
already exists.  If prior to calling this command the current
buffer and/or cursor position is about the same file, then go to
the line and column corresponding to that location.

\(fn REV FILE)" t nil)
 (autoload 'magit-file-dispatch "magit" nil t)

(autoload 'magit-blob-visit-file "magit-files" "\
View the file from the worktree corresponding to the current blob.
When visiting a blob or the version from the index, then go to
the same location in the respective file in the working tree." t nil)

(autoload 'magit-file-checkout "magit-files" "\
Checkout FILE from REV.

\(fn REV FILE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-files"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-files.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-files.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-files" '("magit-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "magit-git" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-git.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-git.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-git" '("magit-")))

;;;***

;;;### (autoloads nil "magit-gitignore" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-gitignore.el"
;;;;;;  "8263e52e4d6420e752f97cf47676054f")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-gitignore.el
 (autoload 'magit-gitignore "magit-gitignore" nil t)

(autoload 'magit-gitignore-in-topdir "magit-gitignore" "\
Add the Git ignore RULE to the top-level \".gitignore\" file.
Since this file is tracked, it is shared with other clones of the
repository.  Also stage the file.

\(fn RULE)" t nil)

(autoload 'magit-gitignore-in-subdir "magit-gitignore" "\
Add the Git ignore RULE to a \".gitignore\" file in DIRECTORY.
Prompt the user for a directory and add the rule to the
\".gitignore\" file in that directory.  Since such files are
tracked, they are shared with other clones of the repository.
Also stage the file.

\(fn RULE DIRECTORY)" t nil)

(autoload 'magit-gitignore-in-gitdir "magit-gitignore" "\
Add the Git ignore RULE to \"$GIT_DIR/info/exclude\".
Rules in that file only affects this clone of the repository.

\(fn RULE)" t nil)

(autoload 'magit-gitignore-on-system "magit-gitignore" "\
Add the Git ignore RULE to the file specified by `core.excludesFile'.
Rules that are defined in that file affect all local repositories.

\(fn RULE)" t nil)

(autoload 'magit-skip-worktree "magit-gitignore" "\
Call \"git update-index --skip-worktree -- FILE\".

\(fn FILE)" t nil)

(autoload 'magit-no-skip-worktree "magit-gitignore" "\
Call \"git update-index --no-skip-worktree -- FILE\".

\(fn FILE)" t nil)

(autoload 'magit-assume-unchanged "magit-gitignore" "\
Call \"git update-index --assume-unchanged -- FILE\".

\(fn FILE)" t nil)

(autoload 'magit-no-assume-unchanged "magit-gitignore" "\
Call \"git update-index --no-assume-unchanged -- FILE\".

\(fn FILE)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-gitignore"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-gitignore.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-gitignore.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-gitignore" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-log" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-log.el"
;;;;;;  "c8a3c8c23c30437f7d52d54d12ae08b2")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-log.el
 (autoload 'magit-log "magit-log" nil t)
 (autoload 'magit-log-refresh "magit-log" nil t)

(autoload 'magit-log-current "magit-log" "\
Show log for the current branch.
When `HEAD' is detached or with a prefix argument show log for
one or more revs read from the minibuffer.

\(fn REVS &optional ARGS FILES)" t nil)

(autoload 'magit-log-head "magit-log" "\
Show log for `HEAD'.

\(fn &optional ARGS FILES)" t nil)

(autoload 'magit-log-related "magit-log" "\
Show log for the current branch, its upstream and its push target.
When the upstream is a local branch, then also show its own
upstream.  When `HEAD' is detached, then show log for that, the
previously checked out branch and its upstream and push-target.

\(fn REVS &optional ARGS FILES)" t nil)

(autoload 'magit-log-other "magit-log" "\
Show log for one or more revs read from the minibuffer.
The user can input any revision or revisions separated by a
space, or even ranges, but only branches and tags, and a
representation of the commit at point, are available as
completion candidates.

\(fn REVS &optional ARGS FILES)" t nil)

(autoload 'magit-log-branches "magit-log" "\
Show log for all local branches and `HEAD'.

\(fn &optional ARGS FILES)" t nil)

(autoload 'magit-log-matching-branches "magit-log" "\
Show log for all branches matching PATTERN and `HEAD'.

\(fn PATTERN &optional ARGS FILES)" t nil)

(autoload 'magit-log-matching-tags "magit-log" "\
Show log for all tags matching PATTERN and `HEAD'.

\(fn PATTERN &optional ARGS FILES)" t nil)

(autoload 'magit-log-all-branches "magit-log" "\
Show log for all local and remote branches and `HEAD'.

\(fn &optional ARGS FILES)" t nil)

(autoload 'magit-log-all "magit-log" "\
Show log for all references and `HEAD'.

\(fn &optional ARGS FILES)" t nil)

(autoload 'magit-log-buffer-file "magit-log" "\
Show log for the blob or file visited in the current buffer.
With a prefix argument or when `--follow' is an active log
argument, then follow renames.  When the region is active,
restrict the log to the lines that the region touches.

\(fn &optional FOLLOW BEG END)" t nil)

(autoload 'magit-log-trace-definition "magit-log" "\
Show log for the definition at point.

\(fn FILE FN REV)" t nil)

(autoload 'magit-log-merged "magit-log" "\
Show log for the merge of COMMIT into BRANCH.

More precisely, find merge commit M that brought COMMIT into
BRANCH, and show the log of the range \"M^1..M\".  If COMMIT is
directly on BRANCH, then show approximately twenty surrounding
commits instead.

This command requires git-when-merged, which is available from
https://github.com/mhagger/git-when-merged.

\(fn COMMIT BRANCH &optional ARGS FILES)" t nil)

(autoload 'magit-log-move-to-parent "magit-log" "\
Move to the Nth parent of the current commit.

\(fn &optional N)" t nil)
 (autoload 'magit-shortlog "magit-log" nil t)

(autoload 'magit-shortlog-since "magit-log" "\
Show a history summary for commits since REV.

\(fn REV ARGS)" t nil)

(autoload 'magit-shortlog-range "magit-log" "\
Show a history summary for commit or range REV-OR-RANGE.

\(fn REV-OR-RANGE ARGS)" t nil)

(autoload 'magit-cherry "magit-log" "\
Show commits in a branch that are not merged in the upstream branch.

\(fn HEAD UPSTREAM)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-log" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-log.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-log.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-log" '("magit-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "magit-margin"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-margin.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-margin.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-margin" '("magit-")))

;;;***

;;;### (autoloads nil "magit-merge" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-merge.el"
;;;;;;  "74da402566a106d0950195c076e4b31c")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-merge.el
 (autoload 'magit-merge "magit" nil t)

(autoload 'magit-merge-plain "magit-merge" "\
Merge commit REV into the current branch; using default message.

Unless there are conflicts or a prefix argument is used create a
merge commit using a generic commit message and without letting
the user inspect the result.  With a prefix argument pretend the
merge failed to give the user the opportunity to inspect the
merge.

\(git merge --no-edit|--no-commit [ARGS] REV)

\(fn REV &optional ARGS NOCOMMIT)" t nil)

(autoload 'magit-merge-editmsg "magit-merge" "\
Merge commit REV into the current branch; and edit message.
Perform the merge and prepare a commit message but let the user
edit it.

\(git merge --edit --no-ff [ARGS] REV)

\(fn REV &optional ARGS)" t nil)

(autoload 'magit-merge-nocommit "magit-merge" "\
Merge commit REV into the current branch; pretending it failed.
Pretend the merge failed to give the user the opportunity to
inspect the merge and change the commit message.

\(git merge --no-commit --no-ff [ARGS] REV)

\(fn REV &optional ARGS)" t nil)

(autoload 'magit-merge-into "magit-merge" "\
Merge the current branch into BRANCH and remove the former.

Before merging, force push the source branch to its push-remote,
provided the respective remote branch already exists, ensuring
that the respective pull-request (if any) won't get stuck on some
obsolete version of the commits that are being merged.  Finally
if `forge-branch-pullreq' was used to create the merged branch,
then also remove the respective remote branch.

\(fn BRANCH &optional ARGS)" t nil)

(autoload 'magit-merge-absorb "magit-merge" "\
Merge BRANCH into the current branch and remove the former.

Before merging, force push the source branch to its push-remote,
provided the respective remote branch already exists, ensuring
that the respective pull-request (if any) won't get stuck on some
obsolete version of the commits that are being merged.  Finally
if `forge-branch-pullreq' was used to create the merged branch,
then also remove the respective remote branch.

\(fn BRANCH &optional ARGS)" t nil)

(autoload 'magit-merge-squash "magit-merge" "\
Squash commit REV into the current branch; don't create a commit.

\(git merge --squash REV)

\(fn REV)" t nil)

(autoload 'magit-merge-preview "magit-merge" "\
Preview result of merging REV into the current branch.

\(fn REV)" t nil)

(autoload 'magit-merge-abort "magit-merge" "\
Abort the current merge operation.

\(git merge --abort)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-merge"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-merge.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-merge.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-merge" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-mode" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-mode.el"
;;;;;;  "a2821689edda9b3aca80d2fccfc88c0a")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-mode.el

(autoload 'magit-info "magit-mode" "\
Visit the Magit manual." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-mode" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-mode.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-mode.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-mode" '("disable-magit-save-buffers" "magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-notes" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-notes.el"
;;;;;;  "d0568af613eb2ddc727461da5292f18a")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-notes.el
 (autoload 'magit-notes "magit" nil t)

;;;### (autoloads "actual autoloads are elsewhere" "magit-notes"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-notes.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-notes.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-notes" '("magit-notes-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "magit-obsolete"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-obsolete.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-obsolete.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-obsolete" '("magit--magit-popup-warning")))

;;;***

;;;### (autoloads nil "magit-patch" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-patch.el"
;;;;;;  "5ab573809933ad43a7aeabecc3b56980")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-patch.el
 (autoload 'magit-patch "magit-patch" nil t)
 (autoload 'magit-patch-create "magit-patch" nil t)
 (autoload 'magit-patch-apply "magit-patch" nil t)

(autoload 'magit-patch-save "magit-patch" "\
Write current diff into patch FILE.

What arguments are used to create the patch depends on the value
of `magit-patch-save-arguments' and whether a prefix argument is
used.

If the value is the symbol `buffer', then use the same arguments
as the buffer.  With a prefix argument use no arguments.

If the value is a list beginning with the symbol `exclude', then
use the same arguments as the buffer except for those matched by
entries in the cdr of the list.  The comparison is done using
`string-prefix-p'.  With a prefix argument use the same arguments
as the buffer.

If the value is a list of strings (including the empty list),
then use those arguments.  With a prefix argument use the same
arguments as the buffer.

Of course the arguments that are required to actually show the
same differences as those shown in the buffer are always used.

\(fn FILE &optional ARG)" t nil)

(autoload 'magit-request-pull "magit-patch" "\
Request upstream to pull from your public repository.

URL is the url of your publicly accessible repository.
START is a commit that already is in the upstream repository.
END is the last commit, usually a branch name, which upstream
is asked to pull.  START has to be reachable from that commit.

\(fn URL START END)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-patch"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-patch.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-patch.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-patch" '("magit-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "magit-process"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-process.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-process.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-process" '("magit-" "tramp-sh-handle-")))

;;;***

;;;### (autoloads nil "magit-pull" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-pull.el"
;;;;;;  "8f1d757fd6190fa221eae0e2bba6a2c1")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-pull.el
 (autoload 'magit-pull "magit-pull" nil t)
 (autoload 'magit-pull-from-pushremote "magit-pull" nil t)
 (autoload 'magit-pull-from-upstream "magit-pull" nil t)

(autoload 'magit-pull-branch "magit-pull" "\
Pull from a branch read in the minibuffer.

\(fn SOURCE ARGS)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-pull" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-pull.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-pull.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-pull" '("magit-pull-")))

;;;***

;;;***

;;;### (autoloads nil "magit-push" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-push.el"
;;;;;;  "18f903b8ca5da65c2ce46b90eafd0b01")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-push.el
 (autoload 'magit-push "magit-push" nil t)
 (autoload 'magit-push-current-to-pushremote "magit-push" nil t)
 (autoload 'magit-push-current-to-upstream "magit-push" nil t)

(autoload 'magit-push-current "magit-push" "\
Push the current branch to a branch read in the minibuffer.

\(fn TARGET ARGS)" t nil)

(autoload 'magit-push-other "magit-push" "\
Push an arbitrary branch or commit somewhere.
Both the source and the target are read in the minibuffer.

\(fn SOURCE TARGET ARGS)" t nil)

(autoload 'magit-push-refspecs "magit-push" "\
Push one or multiple REFSPECS to a REMOTE.
Both the REMOTE and the REFSPECS are read in the minibuffer.  To
use multiple REFSPECS, separate them with commas.  Completion is
only available for the part before the colon, or when no colon
is used.

\(fn REMOTE REFSPECS ARGS)" t nil)

(autoload 'magit-push-matching "magit-push" "\
Push all matching branches to another repository.
If multiple remotes exist, then read one from the user.
If just one exists, use that without requiring confirmation.

\(fn REMOTE &optional ARGS)" t nil)

(autoload 'magit-push-tags "magit-push" "\
Push all tags to another repository.
If only one remote exists, then push to that.  Otherwise prompt
for a remote, offering the remote configured for the current
branch as default.

\(fn REMOTE &optional ARGS)" t nil)

(autoload 'magit-push-tag "magit-push" "\
Push a tag to another repository.

\(fn TAG REMOTE &optional ARGS)" t nil)

(autoload 'magit-push-notes-ref "magit-push" "\
Push a notes ref to another repository.

\(fn REF REMOTE &optional ARGS)" t nil)
 (autoload 'magit-push-implicitly "magit-push" nil t)

(autoload 'magit-push-to-remote "magit-push" "\
Push to REMOTE without using an explicit refspec.
The REMOTE is read in the minibuffer.

This command simply runs \"git push -v [ARGS] REMOTE\".  ARGS
are the arguments specified in the popup buffer.  No refspec
arguments are used.  Instead the behavior depends on at least
these Git variables: `push.default', `remote.pushDefault',
`branch.<branch>.pushRemote', `branch.<branch>.remote',
`branch.<branch>.merge', and `remote.<remote>.push'.

\(fn REMOTE ARGS)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-push" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-push.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-push.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-push" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-reflog" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-reflog.el"
;;;;;;  "82a932cdcc0692495148ddd5f7a9d06d")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-reflog.el

(autoload 'magit-reflog-current "magit-reflog" "\
Display the reflog of the current branch.
If `HEAD' is detached, then show the reflog for that instead." t nil)

(autoload 'magit-reflog-other "magit-reflog" "\
Display the reflog of a branch or another ref.

\(fn REF)" t nil)

(autoload 'magit-reflog-head "magit-reflog" "\
Display the `HEAD' reflog." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-reflog"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-reflog.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-reflog.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-reflog" '("magit-reflog-")))

;;;***

;;;***

;;;### (autoloads nil "magit-refs" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-refs.el"
;;;;;;  "3eb6d40fa76c60e8e26dad6ad539effd")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-refs.el
 (autoload 'magit-show-refs "magit-refs" nil t)

(autoload 'magit-show-refs-head "magit-refs" "\
List and compare references in a dedicated buffer.
Compared with `HEAD'.

\(fn &optional ARGS)" t nil)

(autoload 'magit-show-refs-current "magit-refs" "\
List and compare references in a dedicated buffer.
Compare with the current branch or `HEAD' if it is detached.

\(fn &optional ARGS)" t nil)

(autoload 'magit-show-refs-other "magit-refs" "\
List and compare references in a dedicated buffer.
Compared with a branch read from the user.

\(fn &optional REF ARGS)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-refs" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-refs.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-refs.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-refs" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-remote" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-remote.el"
;;;;;;  "b5ff4c4e0166dfde0431fddd03054d5b")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-remote.el
 (autoload 'magit-remote "magit-remote" nil t)

(autoload 'magit-remote-add "magit-remote" "\
Add a remote named REMOTE and fetch it.

\(fn REMOTE URL &optional ARGS)" t nil)

(autoload 'magit-remote-rename "magit-remote" "\
Rename the remote named OLD to NEW.

\(fn OLD NEW)" t nil)

(autoload 'magit-remote-remove "magit-remote" "\
Delete the remote named REMOTE.

\(fn REMOTE)" t nil)

(autoload 'magit-remote-prune "magit-remote" "\
Remove stale remote-tracking branches for REMOTE.

\(fn REMOTE)" t nil)

(autoload 'magit-remote-prune-refspecs "magit-remote" "\
Remove stale refspecs for REMOTE.

A refspec is stale if there no longer exists at least one branch
on the remote that would be fetched due to that refspec.  A stale
refspec is problematic because its existence causes Git to refuse
to fetch according to the remaining non-stale refspecs.

If only stale refspecs remain, then offer to either delete the
remote or to replace the stale refspecs with the default refspec.

Also remove the remote-tracking branches that were created due to
the now stale refspecs.  Other stale branches are not removed.

\(fn REMOTE)" t nil)

(autoload 'magit-remote-set-head "magit-remote" "\
Set the local representation of REMOTE's default branch.
Query REMOTE and set the symbolic-ref refs/remotes/<remote>/HEAD
accordingly.  With a prefix argument query for the branch to be
used, which allows you to select an incorrect value if you fancy
doing that.

\(fn REMOTE &optional BRANCH)" t nil)

(autoload 'magit-remote-unset-head "magit-remote" "\
Unset the local representation of REMOTE's default branch.
Delete the symbolic-ref \"refs/remotes/<remote>/HEAD\".

\(fn REMOTE)" t nil)

(autoload 'magit-remote-unshallow "magit-remote" "\
Convert a shallow remote into a full one.
If only a single refspec is set and it does not contain a
wildcard, then also offer to replace it with the standard
refspec.

\(fn REMOTE)" t nil)
 (autoload 'magit-remote-configure "magit-remote" nil t)

;;;### (autoloads "actual autoloads are elsewhere" "magit-remote"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-remote.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-remote.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-remote" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-repos" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-repos.el"
;;;;;;  "1869a04cc81790c5c4bdcd7743580ee4")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-repos.el

(autoload 'magit-list-repositories "magit-repos" "\
Display a list of repositories.

Use the options `magit-repository-directories' to control which
repositories are displayed." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-repos"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-repos.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-repos.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-repos" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-reset" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-reset.el"
;;;;;;  "3ccbf5cb470306249f6513351e725109")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-reset.el
 (autoload 'magit-reset "magit" nil t)

(autoload 'magit-reset-mixed "magit-reset" "\
Reset the `HEAD' and index to COMMIT, but not the working tree.

\(git reset --mixed COMMIT)

\(fn COMMIT)" t nil)

(autoload 'magit-reset-soft "magit-reset" "\
Reset the `HEAD' to COMMIT, but not the index and working tree.

\(git reset --soft REVISION)

\(fn COMMIT)" t nil)

(autoload 'magit-reset-hard "magit-reset" "\
Reset the `HEAD', index, and working tree to COMMIT.

\(git reset --hard REVISION)

\(fn COMMIT)" t nil)

(autoload 'magit-reset-keep "magit-reset" "\
Reset the `HEAD' and index to COMMIT, while keeping uncommitted changes.

\(git reset --keep REVISION)

\(fn COMMIT)" t nil)

(autoload 'magit-reset-index "magit-reset" "\
Reset the index to COMMIT.
Keep the `HEAD' and working tree as-is, so if COMMIT refers to the
head this effectively unstages all changes.

\(git reset COMMIT .)

\(fn COMMIT)" t nil)

(autoload 'magit-reset-worktree "magit-reset" "\
Reset the worktree to COMMIT.
Keep the `HEAD' and index as-is.

\(fn COMMIT)" t nil)

(autoload 'magit-reset-quickly "magit-reset" "\
Reset the `HEAD' and index to COMMIT, and possibly the working tree.
With a prefix argument reset the working tree otherwise don't.

\(git reset --mixed|--hard COMMIT)

\(fn COMMIT &optional HARD)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-reset"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-reset.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-reset.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-reset" '("magit-reset-")))

;;;***

;;;***

;;;### (autoloads nil "magit-sequence" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-sequence.el"
;;;;;;  "e6c64de4ea4ae61b7a290d54ea6c8edc")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-sequence.el

(autoload 'magit-sequencer-continue "magit-sequence" "\
Resume the current cherry-pick or revert sequence." t nil)

(autoload 'magit-sequencer-skip "magit-sequence" "\
Skip the stopped at commit during a cherry-pick or revert sequence." t nil)

(autoload 'magit-sequencer-abort "magit-sequence" "\
Abort the current cherry-pick or revert sequence.
This discards all changes made since the sequence started." t nil)
 (autoload 'magit-cherry-pick "magit-sequence" nil t)

(autoload 'magit-cherry-copy "magit-sequence" "\
Copy COMMITS from another branch onto the current branch.
Prompt for a commit, defaulting to the commit at point.  If
the region selects multiple commits, then pick all of them,
without prompting.

\(fn COMMITS &optional ARGS)" t nil)

(autoload 'magit-cherry-apply "magit-sequence" "\
Apply the changes in COMMITS but do not commit them.
Prompt for a commit, defaulting to the commit at point.  If
the region selects multiple commits, then apply all of them,
without prompting.

\(fn COMMITS &optional ARGS)" t nil)

(autoload 'magit-cherry-harvest "magit-sequence" "\
Move COMMITS from another BRANCH onto the current branch.
Remove the COMMITS from BRANCH and stay on the current branch.
If a conflict occurs, then you have to fix that and finish the
process manually.

\(fn COMMITS BRANCH &optional ARGS)" t nil)

(autoload 'magit-cherry-donate "magit-sequence" "\
Move COMMITS from the current branch onto another existing BRANCH.
Remove COMMITS from the current branch and stay on that branch.
If a conflict occurs, then you have to fix that and finish the
process manually.  `HEAD' is allowed to be detached initially.

\(fn COMMITS BRANCH &optional ARGS)" t nil)

(autoload 'magit-cherry-spinout "magit-sequence" "\
Move COMMITS from the current branch onto a new BRANCH.
Remove COMMITS from the current branch and stay on that branch.
If a conflict occurs, then you have to fix that and finish the
process manually.

\(fn COMMITS BRANCH START-POINT &optional ARGS)" t nil)

(autoload 'magit-cherry-spinoff "magit-sequence" "\
Move COMMITS from the current branch onto a new BRANCH.
Remove COMMITS from the current branch and checkout BRANCH.
If a conflict occurs, then you have to fix that and finish
the process manually.

\(fn COMMITS BRANCH START-POINT &optional ARGS)" t nil)
 (autoload 'magit-revert "magit-sequence" nil t)

(autoload 'magit-revert-and-commit "magit-sequence" "\
Revert COMMIT by creating a new commit.
Prompt for a commit, defaulting to the commit at point.  If
the region selects multiple commits, then revert all of them,
without prompting.

\(fn COMMIT &optional ARGS)" t nil)

(autoload 'magit-revert-no-commit "magit-sequence" "\
Revert COMMIT by applying it in reverse to the worktree.
Prompt for a commit, defaulting to the commit at point.  If
the region selects multiple commits, then revert all of them,
without prompting.

\(fn COMMIT &optional ARGS)" t nil)
 (autoload 'magit-am "magit-sequence" nil t)

(autoload 'magit-am-apply-patches "magit-sequence" "\
Apply the patches FILES.

\(fn &optional FILES ARGS)" t nil)

(autoload 'magit-am-apply-maildir "magit-sequence" "\
Apply the patches from MAILDIR.

\(fn &optional MAILDIR ARGS)" t nil)

(autoload 'magit-am-continue "magit-sequence" "\
Resume the current patch applying sequence." t nil)

(autoload 'magit-am-skip "magit-sequence" "\
Skip the stopped at patch during a patch applying sequence." t nil)

(autoload 'magit-am-abort "magit-sequence" "\
Abort the current patch applying sequence.
This discards all changes made since the sequence started." t nil)
 (autoload 'magit-rebase "magit-sequence" nil t)
 (autoload 'magit-rebase-onto-pushremote "magit-sequence" nil t)
 (autoload 'magit-rebase-onto-upstream "magit-sequence" nil t)

(autoload 'magit-rebase-branch "magit-sequence" "\
Rebase the current branch onto a branch read in the minibuffer.
All commits that are reachable from `HEAD' but not from the
selected branch TARGET are being rebased.

\(fn TARGET ARGS)" t nil)

(autoload 'magit-rebase-subset "magit-sequence" "\
Rebase a subset of the current branch's history onto a new base.
Rebase commits from START to `HEAD' onto NEWBASE.
START has to be selected from a list of recent commits.

\(fn NEWBASE START ARGS)" t nil)

(autoload 'magit-rebase-interactive "magit-sequence" "\
Start an interactive rebase sequence.

\(fn COMMIT ARGS)" t nil)

(autoload 'magit-rebase-autosquash "magit-sequence" "\
Combine squash and fixup commits with their intended targets.

\(fn ARGS)" t nil)

(autoload 'magit-rebase-edit-commit "magit-sequence" "\
Edit a single older commit using rebase.

\(fn COMMIT ARGS)" t nil)

(autoload 'magit-rebase-reword-commit "magit-sequence" "\
Reword a single older commit using rebase.

\(fn COMMIT ARGS)" t nil)

(autoload 'magit-rebase-remove-commit "magit-sequence" "\
Remove a single older commit using rebase.

\(fn COMMIT ARGS)" t nil)

(autoload 'magit-rebase-continue "magit-sequence" "\
Restart the current rebasing operation.
In some cases this pops up a commit message buffer for you do
edit.  With a prefix argument the old message is reused as-is.

\(fn &optional NOEDIT)" t nil)

(autoload 'magit-rebase-skip "magit-sequence" "\
Skip the current commit and restart the current rebase operation." t nil)

(autoload 'magit-rebase-edit "magit-sequence" "\
Edit the todo list of the current rebase operation." t nil)

(autoload 'magit-rebase-abort "magit-sequence" "\
Abort the current rebase operation, restoring the original branch." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-sequence"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-sequence.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-sequence.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-sequence" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-sparse-checkout" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-sparse-checkout.el"
;;;;;;  "c24f22f0fef4b7dede58ce8a170e679c")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-sparse-checkout.el
 (autoload 'magit-sparse-checkout "magit-sparse-checkout" nil t)

(autoload 'magit-sparse-checkout-enable "magit-sparse-checkout" "\
Convert the working tree to a sparse checkout.

\(fn &optional ARGS)" t nil)

(autoload 'magit-sparse-checkout-set "magit-sparse-checkout" "\
Restrict working tree to DIRECTORIES.
To extend rather than override the currently configured
directories, call `magit-sparse-checkout-add' instead.

\(fn DIRECTORIES)" t nil)

(autoload 'magit-sparse-checkout-add "magit-sparse-checkout" "\
Add DIRECTORIES to the working tree.
To override rather than extend the currently configured
directories, call `magit-sparse-checkout-set' instead.

\(fn DIRECTORIES)" t nil)

(autoload 'magit-sparse-checkout-reapply "magit-sparse-checkout" "\
Reapply the sparse checkout rules to the working tree.
Some operations such as merging or rebasing may need to check out
files that aren't included in the sparse checkout.  Call this
command to reset to the sparse checkout state." t nil)

(autoload 'magit-sparse-checkout-disable "magit-sparse-checkout" "\
Convert sparse checkout to full checkout.
Note that disabling the sparse checkout does not clear the
configured directories.  Call `magit-sparse-checkout-enable' to
restore the previous sparse checkout." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-sparse-checkout"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-sparse-checkout.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-sparse-checkout.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-sparse-checkout" '("magit-sparse-checkout-")))

;;;***

;;;***

;;;### (autoloads nil "magit-stash" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-stash.el"
;;;;;;  "8cf32fb372351b65a10f61d4e7a194c4")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-stash.el
 (autoload 'magit-stash "magit-stash" nil t)

(autoload 'magit-stash-both "magit-stash" "\
Create a stash of the index and working tree.
Untracked files are included according to infix arguments.
One prefix argument is equivalent to `--include-untracked'
while two prefix arguments are equivalent to `--all'.

\(fn MESSAGE &optional INCLUDE-UNTRACKED)" t nil)

(autoload 'magit-stash-index "magit-stash" "\
Create a stash of the index only.
Unstaged and untracked changes are not stashed.  The stashed
changes are applied in reverse to both the index and the
worktree.  This command can fail when the worktree is not clean.
Applying the resulting stash has the inverse effect.

\(fn MESSAGE)" t nil)

(autoload 'magit-stash-worktree "magit-stash" "\
Create a stash of unstaged changes in the working tree.
Untracked files are included according to infix arguments.
One prefix argument is equivalent to `--include-untracked'
while two prefix arguments are equivalent to `--all'.

\(fn MESSAGE &optional INCLUDE-UNTRACKED)" t nil)

(autoload 'magit-stash-keep-index "magit-stash" "\
Create a stash of the index and working tree, keeping index intact.
Untracked files are included according to infix arguments.
One prefix argument is equivalent to `--include-untracked'
while two prefix arguments are equivalent to `--all'.

\(fn MESSAGE &optional INCLUDE-UNTRACKED)" t nil)

(autoload 'magit-snapshot-both "magit-stash" "\
Create a snapshot of the index and working tree.
Untracked files are included according to infix arguments.
One prefix argument is equivalent to `--include-untracked'
while two prefix arguments are equivalent to `--all'.

\(fn &optional INCLUDE-UNTRACKED)" t nil)

(autoload 'magit-snapshot-index "magit-stash" "\
Create a snapshot of the index only.
Unstaged and untracked changes are not stashed." t nil)

(autoload 'magit-snapshot-worktree "magit-stash" "\
Create a snapshot of unstaged changes in the working tree.
Untracked files are included according to infix arguments.
One prefix argument is equivalent to `--include-untracked'
while two prefix arguments are equivalent to `--all'.

\(fn &optional INCLUDE-UNTRACKED)" t nil)
 (autoload 'magit-stash-push "magit-stash" nil t)

(autoload 'magit-stash-apply "magit-stash" "\
Apply a stash to the working tree.
Try to preserve the stash index.  If that fails because there
are staged changes, apply without preserving the stash index.

\(fn STASH)" t nil)

(autoload 'magit-stash-pop "magit-stash" "\
Apply a stash to the working tree and remove it from stash list.
Try to preserve the stash index.  If that fails because there
are staged changes, apply without preserving the stash index
and forgo removing the stash.

\(fn STASH)" t nil)

(autoload 'magit-stash-drop "magit-stash" "\
Remove a stash from the stash list.
When the region is active offer to drop all contained stashes.

\(fn STASH)" t nil)

(autoload 'magit-stash-clear "magit-stash" "\
Remove all stashes saved in REF's reflog by deleting REF.

\(fn REF)" t nil)

(autoload 'magit-stash-branch "magit-stash" "\
Create and checkout a new BRANCH from STASH.

\(fn STASH BRANCH)" t nil)

(autoload 'magit-stash-branch-here "magit-stash" "\
Create and checkout a new BRANCH and apply STASH.
The branch is created using `magit-branch-and-checkout', using the
current branch or `HEAD' as the start-point.

\(fn STASH BRANCH)" t nil)

(autoload 'magit-stash-format-patch "magit-stash" "\
Create a patch from STASH

\(fn STASH)" t nil)

(autoload 'magit-stash-list "magit-stash" "\
List all stashes in a buffer." t nil)

(autoload 'magit-stash-show "magit-stash" "\
Show all diffs of a stash in a buffer.

\(fn STASH &optional ARGS FILES)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-stash"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-stash.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-stash.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-stash" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-status" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-status.el"
;;;;;;  "e5e14f28fc2a0667f9d34191ebafb1d6")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-status.el

(autoload 'magit-init "magit-status" "\
Initialize a Git repository, then show its status.

If the directory is below an existing repository, then the user
has to confirm that a new one should be created inside.  If the
directory is the root of the existing repository, then the user
has to confirm that it should be reinitialized.

Non-interactively DIRECTORY is (re-)initialized unconditionally.

\(fn DIRECTORY)" t nil)

(autoload 'magit-status "magit-status" "\
Show the status of the current Git repository in a buffer.

If the current directory isn't located within a Git repository,
then prompt for an existing repository or an arbitrary directory,
depending on option `magit-repository-directories', and show the
status of the selected repository instead.

* If that option specifies any existing repositories, then offer
  those for completion and show the status buffer for the
  selected one.

* Otherwise read an arbitrary directory using regular file-name
  completion.  If the selected directory is the top-level of an
  existing working tree, then show the status buffer for that.

* Otherwise offer to initialize the selected directory as a new
  repository.  After creating the repository show its status
  buffer.

These fallback behaviors can also be forced using one or more
prefix arguments:

* With two prefix arguments (or more precisely a numeric prefix
  value of 16 or greater) read an arbitrary directory and act on
  it as described above.  The same could be accomplished using
  the command `magit-init'.

* With a single prefix argument read an existing repository, or
  if none can be found based on `magit-repository-directories',
  then fall back to the same behavior as with two prefix
  arguments.

\(fn &optional DIRECTORY CACHE)" t nil)

(defalias 'magit #'magit-status "\
An alias for `magit-status' for better discoverability.

Instead of invoking this alias for `magit-status' using
\"M-x magit RET\", you should bind a key to `magit-status'
and read the info node `(magit)Getting Started', which
also contains other useful hints.")

(autoload 'magit-status-here "magit-status" "\
Like `magit-status' but with non-nil `magit-status-goto-file-position'." t nil)

(autoload 'magit-status-quick "magit-status" "\
Show the status of the current Git repository, maybe without refreshing.

If the status buffer of the current Git repository exists but
isn't being displayed in the selected frame, then display it
without refreshing it.

If the status buffer is being displayed in the selected frame,
then also refresh it.

Prefix arguments have the same meaning as for `magit-status',
and additionally cause the buffer to be refresh.

To use this function instead of `magit-status', add this to your
init file: (global-set-key (kbd \"C-x g\") 'magit-status-quick)." t nil)

(autoload 'magit-status-setup-buffer "magit-status" "\


\(fn &optional DIRECTORY)" nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-status"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-status.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-status.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-status" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-submodule" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-submodule.el"
;;;;;;  "5c6587b1fa5cb6dda7ebb83f07620ecb")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-submodule.el
 (autoload 'magit-submodule "magit-submodule" nil t)
 (autoload 'magit-submodule-add "magit-submodule" nil t)

(autoload 'magit-submodule-read-name-for-path "magit-submodule" "\


\(fn PATH &optional PREFER-SHORT)" nil nil)
 (autoload 'magit-submodule-register "magit-submodule" nil t)
 (autoload 'magit-submodule-populate "magit-submodule" nil t)
 (autoload 'magit-submodule-update "magit-submodule" nil t)
 (autoload 'magit-submodule-synchronize "magit-submodule" nil t)
 (autoload 'magit-submodule-unpopulate "magit-submodule" nil t)

(autoload 'magit-submodule-remove "magit-submodule" "\
Unregister MODULES and remove their working directories.

For safety reasons, do not remove the gitdirs and if a module has
uncommitted changes, then do not remove it at all.  If a module's
gitdir is located inside the working directory, then move it into
the gitdir of the superproject first.

With the \"--force\" argument offer to remove dirty working
directories and with a prefix argument offer to delete gitdirs.
Both actions are very dangerous and have to be confirmed.  There
are additional safety precautions in place, so you might be able
to recover from making a mistake here, but don't count on it.

\(fn MODULES ARGS TRASH-GITDIRS)" t nil)

(autoload 'magit-insert-modules "magit-submodule" "\
Insert submodule sections.
Hook `magit-module-sections-hook' controls which module sections
are inserted, and option `magit-module-sections-nested' controls
whether they are wrapped in an additional section." nil nil)

(autoload 'magit-insert-modules-overview "magit-submodule" "\
Insert sections for all modules.
For each section insert the path and the output of `git describe --tags',
or, failing that, the abbreviated HEAD commit hash." nil nil)

(autoload 'magit-insert-modules-unpulled-from-upstream "magit-submodule" "\
Insert sections for modules that haven't been pulled from the upstream.
These sections can be expanded to show the respective commits." nil nil)

(autoload 'magit-insert-modules-unpulled-from-pushremote "magit-submodule" "\
Insert sections for modules that haven't been pulled from the push-remote.
These sections can be expanded to show the respective commits." nil nil)

(autoload 'magit-insert-modules-unpushed-to-upstream "magit-submodule" "\
Insert sections for modules that haven't been pushed to the upstream.
These sections can be expanded to show the respective commits." nil nil)

(autoload 'magit-insert-modules-unpushed-to-pushremote "magit-submodule" "\
Insert sections for modules that haven't been pushed to the push-remote.
These sections can be expanded to show the respective commits." nil nil)

(autoload 'magit-list-submodules "magit-submodule" "\
Display a list of the current repository's submodules." t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-submodule"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-submodule.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-submodule.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-submodule" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-subtree" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-subtree.el"
;;;;;;  "1f834fb1a28eecc5a03a5e368a0b803c")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-subtree.el
 (autoload 'magit-subtree "magit-subtree" nil t)
 (autoload 'magit-subtree-import "magit-subtree" nil t)
 (autoload 'magit-subtree-export "magit-subtree" nil t)

(autoload 'magit-subtree-add "magit-subtree" "\
Add REF from REPOSITORY as a new subtree at PREFIX.

\(fn PREFIX REPOSITORY REF ARGS)" t nil)

(autoload 'magit-subtree-add-commit "magit-subtree" "\
Add COMMIT as a new subtree at PREFIX.

\(fn PREFIX COMMIT ARGS)" t nil)

(autoload 'magit-subtree-merge "magit-subtree" "\
Merge COMMIT into the PREFIX subtree.

\(fn PREFIX COMMIT ARGS)" t nil)

(autoload 'magit-subtree-pull "magit-subtree" "\
Pull REF from REPOSITORY into the PREFIX subtree.

\(fn PREFIX REPOSITORY REF ARGS)" t nil)

(autoload 'magit-subtree-push "magit-subtree" "\
Extract the history of the subtree PREFIX and push it to REF on REPOSITORY.

\(fn PREFIX REPOSITORY REF ARGS)" t nil)

(autoload 'magit-subtree-split "magit-subtree" "\
Extract the history of the subtree PREFIX.

\(fn PREFIX COMMIT ARGS)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-subtree"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-subtree.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-subtree.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-subtree" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-tag" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-tag.el"
;;;;;;  "eb9c25b3dfef90023fdf329374114046")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-tag.el
 (autoload 'magit-tag "magit" nil t)

(autoload 'magit-tag-create "magit-tag" "\
Create a new tag with the given NAME at REV.
With a prefix argument annotate the tag.

\(git tag [--annotate] NAME REV)

\(fn NAME REV &optional ARGS)" t nil)

(autoload 'magit-tag-delete "magit-tag" "\
Delete one or more tags.
If the region marks multiple tags (and nothing else), then offer
to delete those, otherwise prompt for a single tag to be deleted,
defaulting to the tag at point.

\(git tag -d TAGS)

\(fn TAGS)" t nil)

(autoload 'magit-tag-prune "magit-tag" "\
Offer to delete tags missing locally from REMOTE, and vice versa.

\(fn TAGS REMOTE-TAGS REMOTE)" t nil)

(autoload 'magit-tag-release "magit-tag" "\
Create a release tag for `HEAD'.

Assume that release tags match `magit-release-tag-regexp'.

If `HEAD's message matches `magit-release-commit-regexp', then
base the tag on the version string specified by that.  Otherwise
prompt for the name of the new tag using the highest existing
tag as initial input and leaving it to the user to increment the
desired part of the version string.

If `--annotate' is enabled, then prompt for the message of the
new tag.  Base the proposed tag message on the message of the
highest tag, provided that that contains the corresponding
version string and substituting the new version string for that.
Otherwise propose something like \"Foo-Bar 1.2.3\", given, for
example, a TAG \"v1.2.3\" and a repository located at something
like \"/path/to/foo-bar\".

\(fn TAG MSG &optional ARGS)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-tag" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-tag.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-tag.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-tag" '("magit-")))

;;;***

;;;***

;;;### (autoloads "actual autoloads are elsewhere" "magit-transient"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-transient.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-transient.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-transient" '("magit-")))

;;;***

;;;### (autoloads nil "magit-wip" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-wip.el"
;;;;;;  "bb36e75c0b098a5c9d871b1e51458b95")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-wip.el

(defvar magit-wip-mode nil "\
Non-nil if Magit-Wip mode is enabled.
See the `magit-wip-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `magit-wip-mode'.")

(custom-autoload 'magit-wip-mode "magit-wip" nil)

(autoload 'magit-wip-mode "magit-wip" "\
Save uncommitted changes to work-in-progress refs.

If called interactively, enable Magit-Wip mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

Whenever appropriate (i.e. when dataloss would be a possibility
otherwise) this mode causes uncommitted changes to be committed
to dedicated work-in-progress refs.

For historic reasons this mode is implemented on top of four
other `magit-wip-*' modes, which can also be used individually,
if you want finer control over when the wip refs are updated;
but that is discouraged.

\(fn &optional ARG)" t nil)

(put 'magit-wip-after-save-mode 'globalized-minor-mode t)

(defvar magit-wip-after-save-mode nil "\
Non-nil if Magit-Wip-After-Save mode is enabled.
See the `magit-wip-after-save-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `magit-wip-after-save-mode'.")

(custom-autoload 'magit-wip-after-save-mode "magit-wip" nil)

(autoload 'magit-wip-after-save-mode "magit-wip" "\
Toggle Magit-Wip-After-Save-Local mode in all buffers.
With prefix ARG, enable Magit-Wip-After-Save mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Magit-Wip-After-Save-Local mode is enabled in all buffers where
`magit-wip-after-save-local-mode-turn-on' would do it.
See `magit-wip-after-save-local-mode' for more information on Magit-Wip-After-Save-Local mode.

\(fn &optional ARG)" t nil)

(defvar magit-wip-after-apply-mode nil "\
Non-nil if Magit-Wip-After-Apply mode is enabled.
See the `magit-wip-after-apply-mode' command
for a description of this minor mode.")

(custom-autoload 'magit-wip-after-apply-mode "magit-wip" nil)

(autoload 'magit-wip-after-apply-mode "magit-wip" "\
Commit to work-in-progress refs.

If called interactively, enable Magit-Wip-After-Apply mode if ARG
is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

After applying a change using any \"apply variant\"
command (apply, stage, unstage, discard, and reverse) commit the
affected files to the current wip refs.  For each branch there
may be two wip refs; one contains snapshots of the files as found
in the worktree and the other contains snapshots of the entries
in the index.

\(fn &optional ARG)" t nil)

(defvar magit-wip-before-change-mode nil "\
Non-nil if Magit-Wip-Before-Change mode is enabled.
See the `magit-wip-before-change-mode' command
for a description of this minor mode.")

(custom-autoload 'magit-wip-before-change-mode "magit-wip" nil)

(autoload 'magit-wip-before-change-mode "magit-wip" "\
Commit to work-in-progress refs before certain destructive changes.

If called interactively, enable Magit-Wip-Before-Change mode if
ARG is positive, and disable it if ARG is zero or negative.  If
called from Lisp, also enable the mode if ARG is omitted or nil,
and toggle it if ARG is `toggle'; disable the mode otherwise.

Before invoking a revert command or an \"apply variant\"
command (apply, stage, unstage, discard, and reverse) commit the
affected tracked files to the current wip refs.  For each branch
there may be two wip refs; one contains snapshots of the files
as found in the worktree and the other contains snapshots of the
entries in the index.

Only changes to files which could potentially be affected by the
command which is about to be called are committed.

\(fn &optional ARG)" t nil)

(autoload 'magit-wip-commit-initial-backup "magit-wip" "\
Before saving, commit current file to a worktree wip ref.

The user has to add this function to `before-save-hook'.

Commit the current state of the visited file before saving the
current buffer to that file.  This backs up the same version of
the file as `backup-buffer' would, but stores the backup in the
worktree wip ref, which is also used by the various Magit Wip
modes, instead of in a backup file as `backup-buffer' would.

This function ignores the variables that affect `backup-buffer'
and can be used along-side that function, which is recommended
because this function only backs up files that are tracked in
a Git repository." nil nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-wip" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-wip.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-wip.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-wip" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil "magit-worktree" "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-worktree.el"
;;;;;;  "2a26e3e423ad3e9b58b29e40e3157dfb")
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-worktree.el
 (autoload 'magit-worktree "magit-worktree" nil t)

(autoload 'magit-worktree-checkout "magit-worktree" "\
Checkout BRANCH in a new worktree at PATH.

\(fn PATH BRANCH)" t nil)

(autoload 'magit-worktree-branch "magit-worktree" "\
Create a new BRANCH and check it out in a new worktree at PATH.

\(fn PATH BRANCH START-POINT &optional FORCE)" t nil)

(autoload 'magit-worktree-move "magit-worktree" "\
Move WORKTREE to PATH.

\(fn WORKTREE PATH)" t nil)

;;;### (autoloads "actual autoloads are elsewhere" "magit-worktree"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-worktree.el"
;;;;;;  (0 0 0 0))
;;; Generated autoloads from ../../../../../.emacs.d/elpa/magit-20220331.2308/magit-worktree.el

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "magit-worktree" '("magit-")))

;;;***

;;;***

;;;### (autoloads nil nil ("../../../../../.emacs.d/elpa/magit-20220331.2308/git-rebase.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-apply.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-autoloads.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-autorevert.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-base.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-bisect.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-blame.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-bookmark.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-branch.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-bundle.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-clone.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-commit.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-core.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-diff.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-ediff.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-extras.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-fetch.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-files.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-git.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-gitignore.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-log.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-margin.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-merge.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-mode.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-notes.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-obsolete.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-patch.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-pkg.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-process.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-pull.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-push.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-reflog.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-refs.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-remote.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-repos.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-reset.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-sequence.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-sparse-checkout.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-stash.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-status.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-submodule.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-subtree.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-tag.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-transient.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-wip.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit-worktree.el"
;;;;;;  "../../../../../.emacs.d/elpa/magit-20220331.2308/magit.el")
;;;;;;  (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; magit-autoloads.el ends here
