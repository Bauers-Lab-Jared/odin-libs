{
  stdenv,
  fetchFromGitHub,
}:
stdenv.mkDerivation {
  pname = "WaffleLib";
  version = "0.1";
  src = fetchFromGitHub {
    owner = "Bauers-Lab-Jared";
    repo = "odin-waffle";
    rev = "367e1c7fab0831a0562e8655d704e12526c984ca";
    hash = "sha256-jaEN3u1EjhyYPBix3ChEpniWros3myJfX7QNcQkqWV0=";
  };

  unpackPhase = "";
  configurePhase = ":";
  buildPhase = ":";
  preInstall = "";
  postInstall = "";
  addonInfo = null;

  installPhase = ''
    runHook preInstall

    target=$out/
    #mkdir -p $out/
    cp -r ./WaffleLib/ $target

    runHook postInstall
  '';
}
