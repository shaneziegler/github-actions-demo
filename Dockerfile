# Use a Node.js base image
FROM node:20

# Create and set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application code
COPY . .

# Expose the port that your app runs on (if applicable)
EXPOSE 8080

# Run the app (adjust this to your app's start command)
CMD ["npm", "index.js"]
