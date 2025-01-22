cask "archi" do
  version "5.4.3"
  sha256 :no_check
  url "https://www.archimatetool.com/downloads/archi/#{version}/Archi-Mac-Silicon-#{version}.dmg"
  name "archi"
  desc "The Open Source modelling toolkit for creating ArchiMate models and sketches. Used by Enterprise Architects everywhere."
  homepage "https://www.archimatetool.com/"

  app "Archi.app"
end
