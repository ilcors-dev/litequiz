# Build stage
FROM node:16 AS builder

# Set working directory
WORKDIR /app

# Copy frontend source code
COPY . .

# Install dependencies and build the React app
RUN yarn install && yarn build

# Final stage: minimal runtime image
FROM nginx:alpine

# Copy built frontend files
COPY --from=builder /app/dist /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start the Nginx server
CMD ["nginx", "-g", "daemon off;"]
