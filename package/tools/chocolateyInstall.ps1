$elasticsearch_version = $env:ChocolateyPackageVersion

Install-ChocolateyZipPackage 'elasticsearch' "https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-$($elasticsearch_version).zip" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

Install-ChocolateyPath "$(Split-Path -parent $MyInvocation.MyCommand.Definition)\elasticsearch-$($elasticsearch_version)\bin"

elasticsearch-service.bat install
