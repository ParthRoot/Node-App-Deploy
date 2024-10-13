# Base Image
FROM node:20

# Create app Directory
WORKDIR /usr/src/app

# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application source code
COPY . .

# Build app source
RUN npm run build

# Expose port 3001
EXPOSE 3001

# Start the server using the build
CMD ["node", "dist/main.js"]
