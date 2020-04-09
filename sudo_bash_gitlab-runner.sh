# First we download the binaries
wget -O /usr/local/bin/gitlab-runner https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-amd64

# Then we change the permissions
chmod +x /usr/local/bin/gitlab-runner

# We create the user
useradd --comment 'GitLab Runner' --create-home gitlab-runner --shell /bin/bash

# Installation
gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner

# Then start the runner
gitlab-runner start


echo "After this you must register your gitlab runner"
