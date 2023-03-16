# Remove legacy hooks to prevent errors when upgrading.
# This can be removed when we cleanup other universal abbr code.
functions -e _aiida_install _aiida_update _aiida_uninstall

# fisher initialization, protected as omf also tries to run it.
set -q fisher_path; or set -l fisher_path $__fish_config_dir
if test -f $fisher_path/functions/__aiida.init.fish
  source $fisher_path/functions/__aiida.init.fish
  __aiida.init
end
