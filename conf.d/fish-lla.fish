function __fish_lla_install --on-event fish-lla_install
    alias --save l "lla --icons"
    alias --save ll "lla --icons --long"
    alias --save lg "lla --icons --git"
    alias --save lt "lla --icons --tree"
    alias --save lb "lla --icons --table"
    alias --save lr "lla --icons --grid"
    alias --save ls "lla --icons --sizemap --include-dirs"
    alias --save lh "lla --icons --timeline"
end

function __fish_lla_update --on-event fish-lla_update
    __fish_lla_uninstall
    __fish_lla_install
end

function __fish_lla_uninstall --on-event fish-lla_uninstall
    functions --erase l
    functions --erase ll
    functions --erase lg
    functions --erase lt
    functions --erase lb
    functions --erase lr
    functions --erase ls
    functions --erase lh
end
