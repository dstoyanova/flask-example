# 1. OS - Ubuntu
FROM ubuntu

# 2. Update the apt repo
# 3. Install dependencies using apt
RUN apt-get update && apt-get install -y \
    software-properties-common
RUN add-apt-repository universe
RUN apt-get update && apt-get install -y \
    python3.4 \
    python3-pip

# 4. Install Python dependencies using pip
RUN pip3 install flask

# 5. Copy the application source code to the app/ folder
COPY . /app

# 6. Run the web server using flask command
CMD python3 app/hello_world.py
