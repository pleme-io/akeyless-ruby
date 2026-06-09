{
  description = "Akeyless Ruby SDK - auto-generated Ruby gem for the Akeyless API";

  inputs = {
    nixpkgs.follows = "substrate/nixpkgs";
    substrate = {
      url = "github:pleme-io/substrate";
    };
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = inputs:
    (import "${inputs.substrate}/lib/repo-flake.nix" {
      inherit (inputs) nixpkgs flake-utils;
    }) {
      self = inputs.self;
      language = "ruby";
      description = "Akeyless Ruby SDK - auto-generated Ruby gem for the Akeyless API";
    };
}
