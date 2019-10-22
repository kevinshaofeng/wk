#!/bin/bash -eux


adduser --system --shell /bin/bash --groups wheel --groups root --groups sudo --create-home --user-group wkcdvmadmin 
mkdir -pm 700 /home/wkcdvmadmin/.ssh
touch /home/wkcdvmadmin/.ssh/authorized_keys
chmod -R go-rwsx /home/wkcdvmadmin/.ssh
chown -R wkcdvmadmin:wkcdvmadmin /home/wkcdvmadmin
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCstw5oCWcyVzVcTXZzbaVenwp2qfX2sFDLGAATxgLJnUhQUSW/YtTcNEzXYXmNYcIx3VGxtwxIwZ2qeukrViVuGy7WXwkyGGGVKp/ktLjmH3m/T49ervZX4miCk74KOY58oA4QRsbqIvfUTLFn+FxLsTnQTpYK9xbgdyJwvOplaERphcx6aZUO2LTOJV1g7rUsjBSsT3T3CfsCTObw/iAQ6/4OSCS8ejVf6Z3WRFWkGxjQZPGseUU+dGVgbdcmsxi7NKBumx2U4DGNdf51ZzS2JB+W11C/erAQuXHY+MQa7ohuY2YCVLaiAfSDlI08guIOYvTHgW4TYNuhrHK5C0jjCfHF7f5x/5WMUb/ekGh6bkR9OYceVRwBiN601254bexhrcg4vyt0kS131he6CqO7RhQBnHzBLL/aoRhQmzZGsyGfNRjfUUCO69AFRLAEjO7dsnqwp09QTGzRQiOB0+Q2FzWNbGtpytYAlIScQgnEZibckbJROUqXeZoM+EK2IGgzv5S/3SgHIoLifnwFdJ8JRF8OqgC4tjhkOKthGJyorJUa8DrHhr+ABZebGgOCFc/+mWEYoxA97F1OHJJD2/NE8JiAz8hGriGY7B6LdBZu+sMhtvbS9aqcPM5ClBkBbErQTIBVIXWkDWT8SYZrWv7wut8OGuFS19DjWPIz4CZQkw== wkcdvmadmin' >> /home/wkcdvmadmin/.ssh/authorized_keys
echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDVUarpKj2/fMUxQ5DeTC+x9vvB9Sk5R9vOORZwGhkHVrKciktqwen9upU0jHilYQeLthQjOKm5bmLovycVdY3DPWdFf6Rso+mQ38txe9i+/y21GMWr70HLOX/e7zsqBlKTWM/yfXWY2mVfF8xddRHNwdHGYgBjq20C4g5vqp2A1AYkMUynuGoIln8MExI+LzZRKkVCmvzclOFvJQV6RkfU7oC9SllPoWtK2VkUyw2wovwqfSSrHfAetb2bPQW5kF27AOt1/oL+pN9DuwKKY2J21rtapCPiVCdzEDqYCfKRQGhqtt3F5jtnhFZrwfUYghiU8o9nvX9CAVSU+XepGRHgnF6a0RmxBxZZVb/8yneBLeUOZAfMspUBJJ326ez2EJ1KkVkNYKo1JmdEtbxclND6ZxQ4HMgpWLAVr2UvW4+xnF/bbI9+bGpihsxtzSXO6W94/VwbbzGdkjVNHgqW0fS3pb/ZAPSsizs7axZ+ZcjM1+6jJ5sPERjGpyW6Y4bJmmSTimm/QTkKwNcuD1MaJ38Y9GJwRS2UkkTNMMKVtNJeiKORX2Hs1xvEy1o9o5/EU4X8Cdj7GohWhvmPXvoDx4N7LSOFj5+oPXGnjmzChJ0/FuyJTlZCd0qTp5r7vYjzU140pAKI6vgNnfpZJNlVYmRx9Rm4sYzaUvPDfoDyvgyOgw== wkcdvmadmin' >> /home/wkcdvmadmin/.ssh/authorized_keys

sed -i '$ a\%sudo ALL=(ALL) NOPASSWD:ALL' /etc/sudoers