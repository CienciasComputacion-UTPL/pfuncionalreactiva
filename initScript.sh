echo 'Initializer script'
base64 -d <<<"H4sIAGlcImMAA5WSQQ7EIAhF93MKdnWSJr3NrEjoQTz8wAfUWjOTYrQq9vf7CpFY0MO4vvCiqltC/EykyHtWqaJ71bTclE2syWXWMpjHw5PpRQ7abDBTOp6662uf0TlkdJSKBzGS7F70KxWtwFSR2tY5G9dFpB9GUxXRG2lXLYYpHXfK9Y5MdF+zH8fhSOSN7KXGX6UmfAh3vYqgiz8XIKs4oREfuEJFbr+5/+m8+BYQZ3zBubeFF5iVEeKMb+QsSxXQHUEu8LV0sF/f6Fa76eUeBm15I9Sus8yqtN1WsEHf5cF+6YXoAMuxOK0zwAbaH+F07XSUSadrnelDuftbxZkB6VCc7PXMUczyR+ULn+ymz2EEAAA=" | gunzip

echo 'Installing glow'
echo 'deb [trusted=yes] https://repo.charm.sh/apt/ /' | sudo tee /etc/apt/sources.list.d/charm.list
sudo apt update && sudo apt install glow

sed -i -e 's/sdkman_auto_answer=false/sdkman_auto_answer=true/g' /home/gitpod/.sdkman/etc/config
