# Use node as base image.
FROM node:14-alpine

# Installeer Git.
RUN apk update && apk add git

# Set the workdirectory.
WORKDIR /usr/src/app

# Het clonen van de git repository.
RUN git clone https://github.com/TimothySealy/cac-simple-webapp.git .

# Installeer de nodige apps.
RUN npm install
ENV PORT 80

# Expose naar poort 80.
EXPOSE 80

# Start the app wanneer de container wordt gestart.
CMD ["node", "app.js"]
