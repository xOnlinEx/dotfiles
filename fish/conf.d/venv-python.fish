function auto_venv --on-variable PWD
    if test -f .venv/bin/activate.fish
        source .venv/bin/activate.fish
    else if set -q VIRTUAL_ENV
        deactivate
    end
end
