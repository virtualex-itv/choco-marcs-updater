$ErrorActionPreference	= 'Stop';
$toolsDir	= "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$packageName	= 'marcs-updater'
$fileType	= 'exe'
$url	= 'https://updater.marc-hoersken.de/download/release/rev/e798c3fabefa1fd51ebdb8d05da6a66f673ca568/283/Marcs%20Updater.exe'
$url64bit	= $url
$softwareName	= 'Marcs*'
$checksum	= '75ACB88584967D77E2D3117F68947745021DFC43BA9067E2BB68FE42DBAA2721'
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
