FROM iron/node:dev

# Create the working diretory
RUN mkdir /app

# Copy package.json to working directory
COPY package.json /app

# Copy the rest of the root folder contents to working directory
COPY . /app

# Switch to working directory
WORKDIR /app

# Run npm install
RUN npm install

# Run the app
CMD ["npm", "start"]
