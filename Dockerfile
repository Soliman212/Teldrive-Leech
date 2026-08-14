FROM ghcr.io/anime-republic/wzml:latest

# Switch to root to ensure we have permission to overwrite system binaries
USER root

# Copy your custom Teldrive rclone binary and replace the default one
COPY rclone /usr/bin/rclone
RUN chmod +x /usr/bin/rclone

# Copy the rest of your bot files (config.env, start.sh, etc.)
COPY . .

# Start the bot
CMD ["bash", "start.sh"]
