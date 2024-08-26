{ pkgs }: {
    deps = [
      pkgs.pandoc
      pkgs.texlive.combined.scheme-small
      pkgs.python39Packages.pip
      pkgs.editorconfig-checker
      pkgs.python311Packages.pytest
      pkgs.python310Packages.pytest
      pkgs.vim
    ];
}
