function _tide_item_aiida
    
    if set -q AIIDA_PATH
        set CONFIG_PATH "$AIIDA_PATH/.aiida/config.json"
    else
        set CONFIG_PATH "$HOME/.aiida/config.json"
    end

    if test -f $CONFIG_PATH
        # Extract the content after ":", then replace " and , with nothing
        set aiida_profile (grep "default_profile" $CONFIG_PATH | cut -d':' -f2- | sed 's/[",]//g;s/ //g' 2>/dev/null)
    else
        set aiida_profile (grep "_profile" $CONFIG_PATH | cut -d':' -f2- | sed 's/[",]//g;s/ //g' 2>/dev/null)
    end

    if set -q aiida_profile
        _tide_print_item aiida "🔬 $aiida_profile"
    end

end
