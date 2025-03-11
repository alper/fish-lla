function __fish_lla_install --on-event fish-lla_install
    set -Ux __FISH_LLA_BASE_ALIASES l ll lg lt lb lr ls lh

    set -Ux __FISH_LLA_ALIASES

    set -Ux LLA_STANDARD_OPTIONS --icons

    # Options for the base aliases
    set -Ux LLA_L_OPTIONS
    set -Ux LLA_LL_OPTIONS --long
    set -Ux LLA_LG_OPTIONS --git --long
    set -Ux LLA_LT_OPTIONS --tree
    set -Ux LLA_LB_OPTIONS --table
    set -Ux LLA_LR_OPTIONS --grid
    set -Ux LLA_LS_OPTIONS --sizemap
    set -Ux LLA_LH_OPTIONS --timeline

    for a in $__FISH_LLA_BASE_ALIASES
        set -l opt_name (string join '_' "LLA" (string upper $a) "OPTIONS")

        alias --save "$a" "lla \$LLA_STANDARD_OPTIONS \$$opt_name"

        set -a __FISH_LLA_ALIASES "$a"
    end
end

function __fish_lla_update --on-event fish-lla_update
    __fish_lla_uninstall
    __fish_lla_install
end

function __fish_lla_uninstall --on-event fish-lla_uninstall
    set --erase LLA_STANDARD_OPTIONS

    for a in $__FISH_LLA_ALIASES
        functions --erase $a
    end

    set --erase __FISH_LLA_BASE_ALIASES
    set --erase __FISH_LLA_ALIASES
end
