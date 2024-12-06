#!/bin/bash
# Deploy Docker image to EC2

# Set the EC2 instance IP and SSH key
EC2_IP="34.220.2.75"
EC2_SSH_KEY="/Users/Arun Ravichandran/Downloads/arun_test_key1.pem"

# SSH into the EC2 instance and deploy the Docker container
ssh -i $EC2_SSH_KEY ec2-user@$EC2_IP << 'EOF'
  
  docker pull arunchan2024/react-app:dev


  docker stop react-app || true
  docker rm react-app || true


  docker run -d --name react-app -p 80:80 arunchan2024/react-app:dev
EOF
