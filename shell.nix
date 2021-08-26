let
  pkgs = import <nixpkgs> { };
in
with pkgs;
pkgs.mkShell {
  buildInputs = [
    pkgs.python38Packages.virtualenv
  ];
  shellHook = ''
    # fixes libstdc++ issues and libgl.so issues
    export LD_LIBRARY_PATH=${stdenv.cc.cc.lib}/lib/:/run/opengl-driver/lib/
    # fixes xcb issues :
    export QT_PLUGIN_PATH=${qt5.qtbase}/${qt5.qtbase.qtPluginPrefix}
    . venv/bin/activate
  '';
}
