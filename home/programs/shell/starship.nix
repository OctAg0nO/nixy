{ config, lib, ... }: {
  programs.starship = {
    enable = true;
    settings = {
      add_newline = true;
      format = lib.concatStrings [
        "$directory"
        "$git_branch"
        "$git_state"
        "$git_status"
        "$character"
      ];
      directory = { style = "#${config.lib.stylix.colors.base0D}"; };

      character = {
        success_symbol = "[❯](#${config.lib.stylix.colors.base0D})";
        error_symbol = "[❯](red)";
        vimcmd_symbol = "[❮](cyan)";
      };

      git_branch = {
        symbol = "[](#${config.lib.stylix.colors.base01}) ";
        style =
          "fg:#${config.lib.stylix.colors.base0D} bg:#${config.lib.stylix.colors.base01}";
        format =
          "on [$symbol$branch]($style)[](#${config.lib.stylix.colors.base01}) ";
      };

      git_status = {
        format =
          "[[(*$conflicted$untracked$modified$staged$renamed$deleted)](218)($ahead_behind$stashed)]($style)";
        style = "cyan";
        conflicted = "";
        renamed = "";
        deleted = "";
        stashed = "≡";
      };

      git_state = {
        format = "([$state( $progress_current/$progress_total)]($style)) ";
        style = "bright-black";
      };
    };
  };
}
