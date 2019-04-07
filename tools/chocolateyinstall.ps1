$ErrorActionPreference	= 'Stop';
$toolsDir	= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'marcs-updater'
$fileType	= 'exe'
$url	= 'https://updater.marc-hoersken.de/download/release/rev/9b2a43f9b73cdfde42d77aaa2a1e2195ef324229/261/Marcs%20Updater.exe'
$url64bit	= $url
$softwareName	= 'Marcs*'
$checksum	= 'D517B66443ADBD16AE8AB66CA9BC6E341900EE6C1F7EA983299D61B3A387D271'
$checksumType	= 'sha256'
$checksum64	= $checksum
$checksumType64	= $checksumType
$silentArgs	= '/SP- /VERYSILENT /CLOSEAPLICATIONS /RESTARTAPPLICATIONS'
$validExitCodes		= @(0)

	$packageArgs = @{
	  packageName   	= $env:ChocolateyPackageName
	  fileType			= $fileType
	  url				= $url
	  url64bit			= $url64bit
	  unzipLocation 	= $toolsDir
	  checksum      	= $checksum
	  checksumType		= $checksumType
	  checksum64      	= $checksum64
	  checksumType64	= $checksumType64
	  silentArgs		= $silentArgs
	  validExitCodes	= $validExitCodes  
	}

Install-ChocolateyPackage @packageArgs
