# Create necessary directories
New-Item -ItemType Directory -Force -Path "img"

# Function to download images
function Download-Image {
    param (
        [string]$Url,
        [string]$OutFile
    )
    
    Write-Host "Downloading $OutFile"
    Invoke-WebRequest -Uri $Url -OutFile $OutFile
}

# Download logo images
Download-Image -Url "https://via.placeholder.com/200x50/7e22ce/ffffff?text=EXTOLL" -OutFile "img/logo.png"
Download-Image -Url "https://via.placeholder.com/50x50/7e22ce/ffffff?text=E" -OutFile "img/logo-icon.png"

Write-Host "Logo images have been downloaded successfully!" 