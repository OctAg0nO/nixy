{ pkgs, inputs, ... }: {
  imports = [ inputs.sops-nix.homeManagerModules.sops ];

  sops = {
    age.keyFile = "/home/hadi/.config/sops/age/keys.txt";
    defaultSopsFile = ./secrets.yaml;
    secrets = {
      sshconfig = { path = "/home/hadi/.ssh/config"; };
      github-key = { path = "/home/hadi/.ssh/github"; };
      gitlab-key = { path = "/home/hadi/.ssh/gitlab"; };
      jack-key = { path = "/home/hadi/.ssh/jack"; };
      ovpn = { path = "/home/hadi/.ovpn.ovpn"; };
    };
  };

  systemd.user.services.mbsync.Unit.After = [ "sops-nix.service" ];
  home.packages = with pkgs; [ sops age ];
}
