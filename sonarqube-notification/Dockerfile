# Stage 1: Build Stage
FROM node:18-alpine AS build

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and yarn.lock to install dependencies
COPY package.json yarn.lock ./

# Install production dependencies using Yarn
RUN yarn install --production

# Copy the rest of the application code
COPY . .

# Stage 2: Production Stage
FROM node:18-alpine

# Set the working directory inside the final container
WORKDIR /usr/src/app

# Copy only the necessary files from the build stage
COPY --from=build /usr/src/app .

# Expose the port that the app will run on
EXPOSE 3000

# Set NODE_ENV to production
ENV NODE_ENV=production

# Command to run the application
CMD ["yarn", "start"]

