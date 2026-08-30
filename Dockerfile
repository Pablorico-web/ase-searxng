# A.S.E — SearXNG for Render Free Tier
# Builds from the official SearXNG image with JSON API enabled.

FROM searxng/searxng:latest

# Copy our settings (JSON API enabled, rate limiter off, engines configured)
COPY searxng-settings/settings.yml /etc/searxng/settings.yml

# Render assigns a dynamic port — override the internal port to match
ENV SEARXNG_BASE_URL=${SEARXNG_BASE_URL:-http://localhost:8080/}
