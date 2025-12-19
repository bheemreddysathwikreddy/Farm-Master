Farming India — Static Demo Site

Files created:
- index.html — homepage linking to content pages
- crops.html — crops with images and descriptions
- irrigation.html — irrigation methods
- robo.html — robotic farming overview
- diseases.html — common crop diseases
- css/style.css — stylesheet
- images/*.svg — simple illustrative SVGs

To preview locally, open `index.html` in a browser or run a simple local server:

```
# Python 3
python -m http.server 8000
# then open http://localhost:8000/ in your browser
```

To download royalty-free sample JPEGs into `images/`, run the PowerShell script (Windows):

```powershell
cd "F:\Farming Website\scripts"
.\download_images.ps1
```

The script will save JPEGs into the `images/` folder — after that open `index.html` to preview.
