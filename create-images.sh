#!/bin/bash

# Create project image directories if they don't exist
mkdir -p img/projects
mkdir -p img/testimonials
mkdir -p img/favicon

# Download hero image
curl -o img/hero-image.png "https://via.placeholder.com/800x600/1a1a1a/7e22ce?text=Digital+Solutions"

# Download favicon
curl -o img/favicon.ico "https://via.placeholder.com/32/7e22ce/ffffff?text=E"

# Download portfolio images
curl -o img/projects/ecommerce-platform.jpg "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=E-commerce+Platform"
curl -o img/projects/fitness-app.jpg "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=Fitness+App"
curl -o img/projects/brand-identity.jpg "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=Brand+Identity"
curl -o img/projects/ai-algorithm.jpg "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=AI+Algorithm"
curl -o img/projects/financial-dashboard.jpg "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=Financial+Dashboard"
curl -o img/projects/blockchain-app.jpg "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=Blockchain+Solution"
curl -o img/projects/food-delivery.jpg "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=Food+Delivery+App"
curl -o img/projects/product-design.jpg "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=Product+Design"
curl -o img/projects/api-integration.jpg "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=API+Integration"
curl -o img/projects/mobile-ui-kit.jpg "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=Mobile+UI+Kit"
curl -o img/projects/data-viz.jpg "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=Data+Visualization"
curl -o img/projects/saas-platform.jpg "https://via.placeholder.com/600x400/1a1a1a/7e22ce?text=SaaS+Platform"

# Download featured project images
curl -o img/projects/featured-ai.jpg "https://via.placeholder.com/800x500/1a1a1a/7e22ce?text=Machine+Learning+Project"
curl -o img/projects/featured-ui.jpg "https://via.placeholder.com/800x500/1a1a1a/7e22ce?text=UI+Component+Library"
curl -o img/projects/featured-defi.jpg "https://via.placeholder.com/800x500/1a1a1a/7e22ce?text=Blockchain+DeFi+Platform"

# Download testimonial client images
curl -o img/testimonials/client-1.jpg "https://via.placeholder.com/100x100/1a1a1a/7e22ce?text=Client+1"
curl -o img/testimonials/client-2.jpg "https://via.placeholder.com/100x100/1a1a1a/7e22ce?text=Client+2"
curl -o img/testimonials/client-3.jpg "https://via.placeholder.com/100x100/1a1a1a/7e22ce?text=Client+3"

# Download logo images
curl -o img/logo.png "https://via.placeholder.com/200x50/1a1a1a/7e22ce?text=EXTOLL"
curl -o img/logo-icon.png "https://via.placeholder.com/50x50/1a1a1a/7e22ce?text=E"

echo "Image placeholders have been downloaded successfully!" 