# Download royalty-free sample JPEGs into images/ folder
# Replace URLs with preferred images if desired.

$images = @(
    @{ url = "https://images.unsplash.com/photo-1501004318641-b39e6451bec6?auto=format&fit=crop&w=1600&q=80"; name = "photo_rice.jpg" },
    @{ url = "https://images.unsplash.com/photo-1549880338-65ddcdfd017b?auto=format&fit=crop&w=1600&q=80"; name = "photo_wheat.jpg" },
    @{ url = "https://images.unsplash.com/photo-1509395176047-4a66953fd231?auto=format&fit=crop&w=1600&q=80"; name = "photo_maize.jpg" },
    @{ url = "https://images.unsplash.com/photo-1506801310323-534be5e7a0f5?auto=format&fit=crop&w=1600&q=80"; name = "photo_sugarcane.jpg" },
    @{ url = "https://images.unsplash.com/photo-1519681393784-d120267933ba?auto=format&fit=crop&w=1600&q=80"; name = "photo_cotton.jpg" },
    @{ url = "https://images.unsplash.com/photo-1503474986642-0f4d43b4f6d6?auto=format&fit=crop&w=1600&q=80"; name = "photo_irrigation.jpg" },
    @{ url = "https://images.unsplash.com/photo-1501785888041-af3ef285b470?auto=format&fit=crop&w=1600&q=80"; name = "photo_drone.jpg" },
    @{ url = "https://images.unsplash.com/photo-1518977956815-1d2b8d8e3b8b?auto=format&fit=crop&w=1600&q=80"; name = "photo_disease.jpg" },
    @{ url = "https://images.unsplash.com/photo-1499393074648-0f2be5a7a6d9?auto=format&fit=crop&w=1600&q=80"; name = "photo_robo.jpg" }
)

$dest = "..\images"
if (!(Test-Path $dest)) { New-Item -ItemType Directory -Path $dest | Out-Null }

foreach ($i in $images) {
    $out = Join-Path $dest $i.name
    Write-Host "Downloading $($i.name) ..."
    try {
        Invoke-WebRequest -Uri $i.url -OutFile $out -UseBasicParsing -ErrorAction Stop
    } catch {
        Write-Warning "Failed to download $($i.url). Please check the URL or run manually."
    }
}

Write-Host "Done. Check the images/ folder. Open index.html to preview."