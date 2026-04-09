# List all available Justfile recipies
default:
	just --list


# Pre-build all Docker containers (for GPU)
build:
	docker compose -f docker-compose.gpu.yml build


# Start the main Docker container in the foreground
run:
	docker compose -f docker-compose.gpu.yml up


# Start main Docker container in the background
start:
	docker compose -f docker-compose.gpu.yml up -d


# Stop/Kill any existing Docker containers
stop:
	docker compose -f docker-compose.gpu.yml down
