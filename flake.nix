{
  description = "A python development environment";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        p = nixpkgs.legacyPackages.${system};
        pythonEnv = p.python311.withPackages (ps: [
          ps.fastapi
          ps.uvicorn
          ps.debugpy
        ]);
      in
        {
          devShells = rec {
            default = p.mkShell {
              packages = [
                pythonEnv
                p.nodejs_20
              ];
            };
          };
        }
    );
}
