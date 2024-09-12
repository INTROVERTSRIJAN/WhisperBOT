# Use the latest Kali Linux image
FROM kalilinux/kali-rolling:latest

# Update and install Python 3 and pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container
COPY . .

# Install the Python dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# Run gunicorn and the python script
CMD gunicorn app:app & python3 fuckufffXD.py
