FROM postgres:15

VOLUME miniflux-db:/var/lib/postgresql/data

HEALTHCHECK --interval=10s --timeout=30s --start-period=5s --retries=3 CMD ["pg_isready", "-U", "miniflux"]
