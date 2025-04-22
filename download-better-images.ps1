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

# Download high-quality images from Unsplash

# Hero image
Download-Image -Url "https://images.unsplash.com/photo-1486312338219-ce68d2c6f44d?q=80&w=2300&auto=format&fit=crop" -OutFile "img/hero-image.png"

# Favicon
Download-Image -Url "https://via.placeholder.com/32/7e22ce/ffffff?text=E" -OutFile "img/favicon.ico"

# Portfolio images
Download-Image -Url "https://images.unsplash.com/photo-1523381294911-8d3cead13475?q=80&w=1000&auto=format&fit=crop" -OutFile "img/projects/ecommerce-platform.jpg"
Download-Image -Url "https://images.unsplash.com/photo-1605296867304-46d5465a13f1?q=80&w=1000&auto=format&fit=crop" -OutFile "img/projects/fitness-app.jpg"
Download-Image -Url "https://images.unsplash.com/photo-1634084462412-b54873c0a56d?q=80&w=1000&auto=format&fit=crop" -OutFile "img/projects/brand-identity.jpg"
Download-Image -Url "https://images.unsplash.com/photo-1563986768494-4dee2763ff3f?q=80&w=1000&auto=format&fit=crop" -OutFile "img/projects/ai-algorithm.jpg"
Download-Image -Url "https://images.unsplash.com/photo-1551288049-bebda4e38f71?q=80&w=1000&auto=format&fit=crop" -OutFile "img/projects/financial-dashboard.jpg"
Download-Image -Url "https://images.unsplash.com/photo-1639762681057-408e52192e55?q=80&w=1000&auto=format&fit=crop" -OutFile "img/projects/blockchain-app.jpg"
Download-Image -Url "https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?q=80&w=1000&auto=format&fit=crop" -OutFile "img/projects/food-delivery.jpg"
Download-Image -Url "https://images.unsplash.com/photo-1626785774573-4b799315345d?q=80&w=1000&auto=format&fit=crop" -OutFile "img/projects/product-design.jpg"
Download-Image -Url "https://images.unsplash.com/photo-1533750349088-cd871a92f312?q=80&w=1000&auto=format&fit=crop" -OutFile "img/projects/api-integration.jpg"
Download-Image -Url "https://images.unsplash.com/photo-1545235617-9465d2a55698?q=80&w=1000&auto=format&fit=crop" -OutFile "img/projects/mobile-ui-kit.jpg"
Download-Image -Url "https://images.unsplash.com/photo-1543286386-713bdd548da4?q=80&w=1000&auto=format&fit=crop" -OutFile "img/projects/data-viz.jpg"
Download-Image -Url "https://images.unsplash.com/photo-1599507593548-0187ac4043c6?q=80&w=1000&auto=format&fit=crop" -OutFile "img/projects/saas-platform.jpg"

# Featured project images
Download-Image -Url "https://images.unsplash.com/photo-1595252129375-05b7f1b3a9f1?q=80&w=1500&auto=format&fit=crop" -OutFile "img/projects/featured-ai.jpg"
Download-Image -Url "https://images.unsplash.com/photo-1602265585142-6b221b9b2c24?q=80&w=1500&auto=format&fit=crop" -OutFile "img/projects/featured-ui.jpg"
Download-Image -Url "https://images.unsplash.com/photo-1639322537228-f710d846310a?q=80&w=1500&auto=format&fit=crop" -OutFile "img/projects/featured-defi.jpg"

# Testimonial client images - using professional business portraits
Download-Image -Url "https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?q=80&w=200&auto=format&fit=crop" -OutFile "img/testimonials/client-1.jpg"
Download-Image -Url "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?q=80&w=200&auto=format&fit=crop" -OutFile "img/testimonials/client-2.jpg"
Download-Image -Url "https://images.unsplash.com/photo-1580489944761-15a19d654956?q=80&w=200&auto=format&fit=crop" -OutFile "img/testimonials/client-3.jpg"

# Logo images
Download-Image -Url "https://via.placeholder.com/200x50/1a1a1a/7e22ce?text=EXTOLL" -OutFile "img/logo.png"
Download-Image -Url "https://via.placeholder.com/50x50/1a1a1a/7e22ce?text=E" -OutFile "img/logo-icon.png"

Write-Host "High-quality images have been downloaded successfully!" 