FROM node:20.17.0

# ________________________
# SETTING USER - START ###
# ------------------------

ARG APP_NAME=personal

# Create a non-root user with a specific UID and GID to match your local user
ARG USERNAME=node
ARG GROUP=node

# Replace with your local group ID, or use an ARG to pass it in build time
ARG UID=1000

# Replace with your local group ID, or use an ARG to pass it in build time
ARG GID=1000

# Rename the existing node user and group
RUN usermod -l ${USERNAME} node
RUN groupmod -n ${GROUP} node
RUN usermod -d /home/${USERNAME} -m ${USERNAME}
RUN chown -R ${UID}:${GID} /home/${USERNAME}

# Switch to the non-root user
USER ${UID}:${GID}

# Create the directory for project
RUN mkdir -p /home/${USERNAME}/${APP_NAME}

# Set the working directory
WORKDIR /home/${USERNAME}/${APP_NAME}
