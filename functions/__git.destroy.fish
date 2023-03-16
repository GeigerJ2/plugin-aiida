function __aiida.destroy
  for ab in $__aiida_plugin_abbreviations
    abbr -e $ab
  end
  set -Ue __aiida_plugin_abbreviations
  set -Ue __aiida_plugin_initialized
end
