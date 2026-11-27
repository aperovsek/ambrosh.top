# Dockerfile for personal website
# Uses nginx to serve static files

# Stage 1: Build (not needed for static site, but kept for consistency)
FROM node:20-alpine AS builder
WORKDIR /usr/share/nginx/html/
# Copy package files if you had any
# COPY package*.json ./
# RUN npm install

# Stage 2: Production
FROM nginx:alpine

# For static site, just copy directly
COPY index.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Copy any other static assets (images, fonts, etc.)
COPY Tinos/ /usr/share/nginx/html/Tinos/
