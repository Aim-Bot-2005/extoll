# Create project image directories if they don't exist
New-Item -ItemType Directory -Force -Path "img/projects"
New-Item -ItemType Directory -Force -Path "img/testimonials"
New-Item -ItemType Directory -Force -Path "img/favicon"

# Function to download images
function Download-Image {
    param (
        [string]$Url,
        [string]$OutFile
    )
    
    Write-Host "Downloading $OutFile"
    Invoke-WebRequest -Uri $Url -OutFile $OutFile
}

# Download hero image
Download-Image -Url "https://via.placeholder.com/800x600/1a1a1a/7e22ce?text=Digital+Solutions" -OutFile "img/hero-image.png"

# Download favicon
Download-Image -Url "https://via.placeholder.com/32/7e22ce/ffffff?text=E" -OutFile "img/favicon.ico"

# Download portfolio images
Download-Image -Url "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=E-commerce+Platform" -OutFile "img/projects/ecommerce-platform.jpg"
Download-Image -Url "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=Fitness+App" -OutFile "img/projects/fitness-app.jpg"
Download-Image -Url "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=Brand+Identity" -OutFile "img/projects/brand-identity.jpg"
Download-Image -Url "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=AI+Algorithm" -OutFile "img/projects/ai-algorithm.jpg"
Download-Image -Url "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=Financial+Dashboard" -OutFile "img/projects/financial-dashboard.jpg"
Download-Image -Url "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=Blockchain+Solution" -OutFile "img/projects/blockchain-app.jpg"
Download-Image -Url "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=Food+Delivery+App" -OutFile "img/projects/food-delivery.jpg"
Download-Image -Url "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=Product+Design" -OutFile "img/projects/product-design.jpg"
Download-Image -Url "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=API+Integration" -OutFile "img/projects/api-integration.jpg"
Download-Image -Url "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=Mobile+UI+Kit" -OutFile "img/projects/mobile-ui-kit.jpg"
Download-Image -Url "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=Data+Visualization" -OutFile "img/projects/data-viz.jpg"
Download-Image -Url "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=SaaS+Platform" -OutFile "img/projects/saas-platform.jpg"

# Download featured project images
Download-Image -Url "https://via.placeholder.com/800x500/1a1a1a/7e22ce?text=Machine+Learning+Project" -OutFile "img/projects/featured-ai.jpg"
Download-Image -Url "https://via.placeholder.com/800x500/1a1a1a/7e22ce?text=UI+Component+Library" -OutFile "img/projects/featured-ui.jpg"
Download-Image -Url "https://via.placeholder.com/800x500/1a1a1a/7e22ce?text=Blockchain+DeFi+Platform" -OutFile "img/projects/featured-defi.jpg"

# Download testimonial client images
Download-Image -Url "https://via.placeholder.com/100x100/1a1a1a/7e22ce?text=Client+1" -OutFile "img/testimonials/client-1.jpg"
Download-Image -Url "https://via.placeholder.com/100x100/1a1a1a/7e22ce?text=Client+2" -OutFile "img/testimonials/client-2.jpg"
Download-Image -Url "https://via.placeholder.com/100x100/1a1a1a/7e22ce?text=Client+3" -OutFile "img/testimonials/client-3.jpg"

# Download logo images
Download-Image -Url "https://via.placeholder.com/200x50/1a1a1a/7e22ce?text=EXTOLL" -OutFile "img/logo.png"
Download-Image -Url "https://via.placeholder.com/50x50/1a1a1a/7e22ce?text=E" -OutFile "img/logo-icon.png"

Write-Host "Image placeholders have been downloaded successfully!" 