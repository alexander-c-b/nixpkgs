{ lib, buildPythonPackage, fetchPypi, pygments, dominate, beautifulsoup4, docutils, sphinx }:

buildPythonPackage rec {
  pname = "alectryon";
  owner = "cpitclaudel";
  version = "1.3.1";

  src = fetchPypi {
    inherit pname version;
    sha256 = "sha256:0mca25jv917myb4n91ccpl5fz058aiqsn8cniflwfw5pp6lqnfg7";
  };

  propagatedBuildInputs = [
    pygments
    dominate
    beautifulsoup4
    docutils
    sphinx
  ];

  doCheck = false;

  meta = with lib; {
    homepage = "https://github.com/cpitclaudel/alectryon";
    description = "A collection of tools for writing technical documents that mix Coq code and prose";
    license = licenses.mit;
    maintainers = with maintainers; [ Zimmi48 ];
  };
}
