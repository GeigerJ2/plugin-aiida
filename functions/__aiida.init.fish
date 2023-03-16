function __aiida.init
  function # __aiida.create_abbr -d "Create aiida plugin abbreviation"
    set -l name $argv[1]
    set -l body $argv[2..-1]

    # TODO: global scope abbr will be default in fish 3.6.0
    abbr -a -g $name $body
  end

  # Provide a smooth transition from universal to global abbreviations by
  # deleting the old univeral ones.  Can be removed after fish 3.6 is in
  # wide-spread use, i.e. 2024.  __aiida.destroy should also be removed
  # at the same time.
  if set -q __aiida_plugin_initialized
    __aiida.destroy
  end

  # aiida abbreviations
  # __aiida.create_abbr g          aiida
  # __aiida.create_abbr ga         aiida add
  # __aiida.create_abbr gaa        aiida add --all
  # __aiida.create_abbr gau        aiida add --update
  # __aiida.create_abbr gapa       aiida add --patch
  # __aiida.create_abbr gap        aiida apply
  # __aiida.create_abbr gb         aiida branch -vv
  # __aiida.create_abbr gba        aiida branch -a -v
  # __aiida.create_abbr gban       aiida branch -a -v --no-merged
  # __aiida.create_abbr gbd        aiida branch -d
  # __aiida.create_abbr gbD        aiida branch -D
  # __aiida.create_abbr gbl        aiida blame -b -w
  # __aiida.create_abbr gbs        aiida bisect
  # __aiida.create_abbr gbsb       aiida bisect bad
  # __aiida.create_abbr gbsg       aiida bisect good
  # __aiida.create_abbr gbsr       aiida bisect reset
  # __aiida.create_abbr gbss       aiida bisect start
  # __aiida.create_abbr gc         aiida commit -v
  # __aiida.create_abbr gc!        aiida commit -v --amend
  # __aiida.create_abbr gcn!       aiida commit -v --no-edit --amend
  # __aiida.create_abbr gca        aiida commit -v -a
  # __aiida.create_abbr gca!       aiida commit -v -a --amend
  # __aiida.create_abbr gcan!      aiida commit -v -a --no-edit --amend
  # __aiida.create_abbr gcv        aiida commit -v --no-verify
  # __aiida.create_abbr gcav       aiida commit -a -v --no-verify
  # __aiida.create_abbr gcav!      aiida commit -a -v --no-verify --amend
  # __aiida.create_abbr gcm        aiida commit -m
  # __aiida.create_abbr gcam       aiida commit -a -m
  # __aiida.create_abbr gscam      aiida commit -S -a -m
  # __aiida.create_abbr gcfx       aiida commit --fixup
  # __aiida.create_abbr gcf        aiida config --list
  # __aiida.create_abbr gcl        aiida clone
  # __aiida.create_abbr gclean     aiida clean -di
  # __aiida.create_abbr gclean!    aiida clean -dfx
  # __aiida.create_abbr gclean!!   "aiida reset --hard; and aiida clean -dfx"
  # __aiida.create_abbr gcount     aiida shortlog -sn
  # __aiida.create_abbr gcp        aiida cherry-pick
  # __aiida.create_abbr gcpa       aiida cherry-pick --abort
  # __aiida.create_abbr gcpc       aiida cherry-pick --continue
  # __aiida.create_abbr gd         aiida diff
  # __aiida.create_abbr gdca       aiida diff --cached
  # __aiida.create_abbr gds        aiida diff --stat
  # __aiida.create_abbr gdsc       aiida diff --stat --cached
  # __aiida.create_abbr gdw        aiida diff --word-diff
  # __aiida.create_abbr gdwc       aiida diff --word-diff --cached
  # __aiida.create_abbr gdto       aiida difftool
  # __aiida.create_abbr gignore    aiida update-index --assume-unchanged
  # __aiida.create_abbr gf         aiida fetch
  # __aiida.create_abbr gfa        aiida fetch --all --prune
  # __aiida.create_abbr gfm        "aiida fetch origin (__aiida.default_branch) --prune; and aiida merge FETCH_HEAD"
  # __aiida.create_abbr gfo        aiida fetch origin
  # __aiida.create_abbr gl         aiida pull
  # __aiida.create_abbr gll        aiida pull origin
  # __aiida.create_abbr glr        aiida pull --rebase
  # __aiida.create_abbr glg        aiida log --stat
  # __aiida.create_abbr glgg       aiida log --graph
  # __aiida.create_abbr glgga      aiida log --graph --decorate --all
  # __aiida.create_abbr glo        aiida log --oneline --decorate --color
  # __aiida.create_abbr glog       aiida log --oneline --decorate --color --graph
  # __aiida.create_abbr gloga      aiida log --oneline --decorate --color --graph --all
  # __aiida.create_abbr glom       aiida log --oneline --decorate --color \(__aiida.default_branch\)..
  # __aiida.create_abbr glod       aiida log --oneline --decorate --color develop..
  # __aiida.create_abbr gloo       "aiida log --pretty=format:'%C(yellow)%h %Cred%ad %Cblue%an%Cgreen%d %Creset%s' --date=short"
  # __aiida.create_abbr gm         aiida merge
  # __aiida.create_abbr gmt        aiida mergetool --no-prompt
  # __aiida.create_abbr gmom       aiida merge origin/\(__aiida.default_branch\)
  # __aiida.create_abbr gp         aiida push
  # __aiida.create_abbr gp!        aiida push --force-with-lease
  # __aiida.create_abbr gpo        aiida push origin
  # __aiida.create_abbr gpo!       aiida push --force-with-lease origin
  # __aiida.create_abbr gpv        aiida push --no-verify
  # __aiida.create_abbr gpv!       aiida push --no-verify --force-with-lease
  # __aiida.create_abbr ggp!       ggp --force-with-lease
  # __aiida.create_abbr gpu        ggp --set-upstream
  # __aiida.create_abbr gr         aiida remote -vv
  # __aiida.create_abbr gra        aiida remote add
  # __aiida.create_abbr grb        aiida rebase
  # __aiida.create_abbr grba       aiida rebase --abort
  # __aiida.create_abbr grbc       aiida rebase --continue
  # __aiida.create_abbr grbi       aiida rebase --interactive
  # __aiida.create_abbr grbm       aiida rebase \(__aiida.default_branch\)
  # __aiida.create_abbr grbmi      aiida rebase \(__aiida.default_branch\) --interactive
  # __aiida.create_abbr grbmia     aiida rebase \(__aiida.default_branch\) --interactive --autosquash
  # __aiida.create_abbr grbom      "aiida fetch origin (__aiida.default_branch); and aiida rebase FETCH_HEAD"
  # __aiida.create_abbr grbomi     "aiida fetch origin (__aiida.default_branch); and aiida rebase FETCH_HEAD --interactive"
  # __aiida.create_abbr grbomia    "aiida fetch origin (__aiida.default_branch); and aiida rebase FETCH_HEAD --interactive --autosquash"
  # __aiida.create_abbr grbd       aiida rebase develop
  # __aiida.create_abbr grbdi      aiida rebase develop --interactive
  # __aiida.create_abbr grbdia     aiida rebase develop --interactive --autosquash
  # __aiida.create_abbr grbs       aiida rebase --skip
  # __aiida.create_abbr grev       aiida revert
  # __aiida.create_abbr grh        aiida reset
  # __aiida.create_abbr grhh       aiida reset --hard
  # __aiida.create_abbr grhpa      aiida reset --patch
  # __aiida.create_abbr grm        aiida rm
  # __aiida.create_abbr grmc       aiida rm --cached
  # __aiida.create_abbr grmv       aiida remote rename
  # __aiida.create_abbr grpo       aiida remote prune origin
  # __aiida.create_abbr grrm       aiida remote remove
  # __aiida.create_abbr grs        aiida restore
  # __aiida.create_abbr grset      aiida remote set-url
  # __aiida.create_abbr grss       aiida restore --source
  # __aiida.create_abbr grst       aiida restore --staged
  # __aiida.create_abbr grup       aiida remote update
  # __aiida.create_abbr grv        aiida remote -v
  # __aiida.create_abbr gsh        aiida show
  # __aiida.create_abbr gsd        aiida svn dcommit
  # __aiida.create_abbr gsr        aiida svn rebase
  # __aiida.create_abbr gss        aiida status -s
  # __aiida.create_abbr gst        aiida status
  # __aiida.create_abbr gsta       aiida stash
  # __aiida.create_abbr gstd       aiida stash drop
  # __aiida.create_abbr gstl       aiida stash list
  # __aiida.create_abbr gstp       aiida stash pop
  # __aiida.create_abbr gsts       aiida stash show --text
  # __aiida.create_abbr gsu        aiida submodule update
  # __aiida.create_abbr gsur       aiida submodule update --recursive
  # __aiida.create_abbr gsuri      aiida submodule update --recursive --init
  # __aiida.create_abbr gts        aiida tag -s
  # __aiida.create_abbr gtv        aiida tag | sort -V
  # __aiida.create_abbr gsw        aiida switch
  # __aiida.create_abbr gswc       aiida switch --create
  # __aiida.create_abbr gunignore  aiida update-index --no-assume-unchanged
  # __aiida.create_abbr gup        aiida pull --rebase
  # __aiida.create_abbr gupv       aiida pull --rebase -v
  # __aiida.create_abbr gupa       aiida pull --rebase --autostash
  # __aiida.create_abbr gupav      aiida pull --rebase --autostash -v
  # __aiida.create_abbr gwch       aiida whatchanged -p --abbrev-commit --pretty=medium

  # aiida checkout abbreviations
  # __aiida.create_abbr gco        aiida checkout
  # __aiida.create_abbr gcb        aiida checkout -b
  # __aiida.create_abbr gcod       aiida checkout develop
  # __aiida.create_abbr gcom       aiida checkout \(__aiida.default_branch\)

  # aiida flow abbreviations
  # __aiida.create_abbr gfb        aiida flow bugfix
  # __aiida.create_abbr gff        aiida flow feature
  # __aiida.create_abbr gfr        aiida flow release
  # __aiida.create_abbr gfh        aiida flow hotfix
  # __aiida.create_abbr gfs        aiida flow support

  # __aiida.create_abbr gfbs       aiida flow bugfix start
  # __aiida.create_abbr gffs       aiida flow feature start
  # __aiida.create_abbr gfrs       aiida flow release start
  # __aiida.create_abbr gfhs       aiida flow hotfix start
  # __aiida.create_abbr gfss       aiida flow support start

  # __aiida.create_abbr gfbt       aiida flow bugfix track
  # __aiida.create_abbr gfft       aiida flow feature track
  # __aiida.create_abbr gfrt       aiida flow release track
  # __aiida.create_abbr gfht       aiida flow hotfix track
  # __aiida.create_abbr gfst       aiida flow support track

  # __aiida.create_abbr gfp        aiida flow publish

  # aiida worktree abbreviations
  # __aiida.create_abbr gwt        aiida worktree
  # __aiida.create_abbr gwta       aiida worktree add
  # __aiida.create_abbr gwtls      aiida worktree list
  # __aiida.create_abbr gwtlo      aiida worktree lock
  # __aiida.create_abbr gwtmv      aiida worktree move
  # __aiida.create_abbr gwtpr      aiida worktree prune
  # __aiida.create_abbr gwtrm      aiida worktree remove
  # __aiida.create_abbr gwtulo     aiida worktree unlock

  # aiidaLab push options
  # __aiida.create_abbr gmr        ggp --set-upstream -o merge_request.create
  # __aiida.create_abbr gmwps      ggp --set-upstream -o merge_request.create -o merge_request.merge_when_pipeline_succeeds

  # Cleanup declared functions
  functions -e # __aiida.create_abbr
end
