if status is-interactive
    # Commands to run in interactive sessions can go here
end

# brew
set -gx PATH /home/linuxbrew/.linuxbrew/bin $PATH

# show system info on startup
neofetch

# set py to python3
alias py="python3"

# set cl to clear
alias cl="clear -x"

# alias ls to exa
alias ls="exa --all --classify --icons --group-directories-first"

# activate rtx
fish_add_path -g /home/linuxbrew/.linuxbrew/Cellar/rtx/1.30.6/bin
set -gx RTX_SHELL fish

function rtx
  if test (count $argv) -eq 0
    command rtx
    return
  end

  set command $argv[1]
  set -e argv[1]

  switch "$command"
  case deactivate shell
    source (command rtx "$command" $argv|psub)
  case '*'
    command rtx "$command" $argv
  end
end

function __rtx_env_eval --on-event fish_prompt --description 'Update rtx environment when changing directories';
    rtx hook-env -s fish | source;

    if test "$rtx_fish_mode" != "disable_arrow";
        function __rtx_cd_hook --on-variable PWD --description 'Update rtx environment when changing directories';
            if test "$rtx_fish_mode" = "eval_after_arrow";
                set -g __rtx_env_again 0;
            else;
                rtx hook-env -s fish | source;
            end;
        end;
    end;
end;

function __rtx_env_eval_2 --on-event fish_preexec --description 'Update rtx environment when changing directories';
    if set -q __rtx_env_again;
        set -e __rtx_env_again;
        rtx hook-env -s fish | source;
        echo;
    end;

    functions --erase __rtx_cd_hook;
end;

# use startship promt
starship init fish | source
