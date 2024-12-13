{ buildNpmPackage, lib, vite, typescript }:
buildNpmPackage {
  name = "SimplePixel-flipdot";
  src = lib.cleanSource ./.;
  npmDepsHash = "sha256-2rvk0WPaKVTp6or9WAPsNLl2gUy+GlET4lQG4wK/fZw=";
  buildPhase = ''
    npx tsc
  '';
  installPhase = ''
    mkdir $out
    cp index.html $out
    cp -r index.css default.css tutorial.css *.js *.js.map munro.ttf icons $out/
  '';
}
