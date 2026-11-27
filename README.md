# Ambrož Perovšek - Personal Website

A modern, responsive personal website/portfolio built with HTML, CSS, and JavaScript.

## 🚀 Quick Start

### Option 1: Open Directly
Simply double-click `index.html` to open in your browser.

### Option 2: GitHub Pages
The site is automatically deployed at: https://PotatoHunter12.github.io

### Option 3: Docker (Recommended for Development)

#### Prerequisites
- [Docker](https://www.docker.com/get-started) installed
- [Docker Compose](https://docs.docker.com/compose/install/) (usually included with Docker)

#### Run with Docker Compose
```bash
# Clone and navigate to the repository
cd PotatoHunter12.github.io

# Build and run the container
docker-compose up -d

# Access the website at: http://localhost:8080
```

#### Run with Docker directly
```bash
# Build the image
docker build -t ambroz-website .

# Run the container
docker run -d -p 8080:80 --name ambroz-website ambroz-website

# Access at: http://localhost:8080
```

#### Docker Commands
| Command | Description |
|---------|-------------|
| `docker-compose up -d` | Start the website in background |
| `docker-compose down` | Stop and remove the container |
| `docker-compose logs -f` | View logs |
| `docker-compose ps` | Check running containers |
| `docker-compose build --no-cache` | Rebuild from scratch |

## 📁 Project Structure

```
PotatoHunter12.github.io/
├── index.html          # Main HTML file
├── style.css           # All styles
├── Dockerfile          # Docker configuration
├── docker-compose.yml  # Docker Compose config
├── docker-nginx.conf   # Nginx server config
├── .dockerignore       # Files to exclude from Docker build
├── Tinos/              # Font files
└── README.md           # This file
```

## 🛠️ Development

### Without Docker
Just edit `index.html` and `style.css`, then refresh your browser.

### With Docker (Auto-reload)
For live reloading during development:

1. Run the container in development mode:
```bash
docker-compose up
```

2. Make changes to your files
3. The container will need to be rebuilt to see changes:
```bash
docker-compose down && docker-compose up -d
```

*For true hot-reloading, consider using a development server like `http-server` or `vite` instead of Docker for active development.*

## 📝 Content

The website includes:
- **Hero section** with introduction
- **About section** with education and professional summary
- **Experience section** with work history
- **Projects section** showcasing hackathons and competitions
- **Skills section** organized by category
- **Contact section** with multiple contact methods

## 🎨 Customization

To customize the website:

1. **Change content**: Edit `index.html`
2. **Change styles**: Edit `style.css`
3. **Change colors**: Modify CSS variables at the top of `style.css`
4. **Add pages**: Create new HTML files and link them in the navigation

### Color Scheme
The primary colors can be changed in the `:root` CSS variables:
```css
:root {
  --primary: #6366f1;      /* Purple */
  --secondary: #ec4899;    /* Pink */
  /* ... other colors */
}
```

## 🔒 Security

The Docker setup includes:
- Security headers (X-Frame-Options, X-Content-Type-Options, etc.)
- Health checks
- Caching for static assets
- Gzip compression

## 📊 Performance

The site is optimized with:
- Gzip compression
- Long-term caching for static assets
- Minimal dependencies (just HTML, CSS, JS)
- Fast loading times

## 🤝 Contributing

This is a personal project, but feel free to fork and adapt it for your own use!

## 📄 License

This project is personal and not open-sourced, but the code can be used as inspiration for your own portfolio.

---

Built with ❤️ by Ambrož Perovšek
