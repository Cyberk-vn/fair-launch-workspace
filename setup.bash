#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

echo -e "${GREEN}Setting up Scratch Project...${NC}"

# Function to handle repository setup
setup_repo() {
    local repo_name=$1
    local repo_url=$2
    
    echo -e "${YELLOW}Setting up ${repo_name}...${NC}"
    
    # Check if directory exists
    if [ -d "$repo_name" ]; then
        echo -e "${YELLOW}${repo_name} directory already exists.${NC}"
        
        # Check if it's a git repository
        if [ -d "${repo_name}/.git" ]; then
            echo -e "${YELLOW}${repo_name} is already a git repository. Updating...${NC}"
            cd "$repo_name"
            
            # Check if remote exists and matches expected URL
            if git remote get-url origin >/dev/null 2>&1; then
                current_url=$(git remote get-url origin)
                if [ "$current_url" != "$repo_url" ]; then
                    echo -e "${YELLOW}Updating remote URL for ${repo_name}...${NC}"
                    git remote set-url origin "$repo_url" || {
                        echo -e "${RED}Failed to update remote URL for ${repo_name}.${NC}"
                        cd ..
                        return 1
                    }
                fi
            else
                echo -e "${YELLOW}Setting remote URL for ${repo_name}...${NC}"
                git remote add origin "$repo_url" || {
                    echo -e "${RED}Failed to add remote URL for ${repo_name}.${NC}"
                    cd ..
                    return 1
                }
            fi
            
            # Pull latest changes
            echo -e "${YELLOW}Pulling latest changes for ${repo_name}...${NC}"
            git pull origin main || git pull origin master || {
                echo -e "${RED}Failed to pull latest changes for ${repo_name}. Check your permissions.${NC}"
                cd ..
                return 1
            }
            cd ..
        else
            echo -e "${YELLOW}${repo_name} exists but is not a git repository. Initializing...${NC}"
            cd "$repo_name"
            git init || {
                echo -e "${RED}Failed to initialize git repository for ${repo_name}.${NC}"
                cd ..
                return 1
            }
            git remote add origin "$repo_url" || {
                echo -e "${RED}Failed to add remote URL for ${repo_name}.${NC}"
                cd ..
                return 1
            }
            echo -e "${YELLOW}Pulling latest changes for ${repo_name}...${NC}"
            git pull origin main || git pull origin master || {
                echo -e "${RED}Failed to pull latest changes for ${repo_name}. Check your permissions.${NC}"
                cd ..
                return 1
            }
            cd ..
        fi
    else
        echo -e "${YELLOW}Cloning ${repo_name}...${NC}"
        git clone "$repo_url" "$repo_name" || {
            echo -e "${RED}Failed to clone ${repo_name}. Check your permissions.${NC}"
            return 1
        }
    fi
    
    echo -e "${GREEN}${repo_name} setup completed successfully.${NC}"
    return 0
}

# Setup scratch-fe project
setup_repo "scratch-fe" "git@github.com:Cyberk-vn/scratch-fe.git"
scratch_fe_status=$?

# Setup scratch-be project
setup_repo "scratch-be" "git@github.com:Cyberk-vn/scratch-be.git"
scratch_be_status=$?

# Check if the repositories were set up successfully
if [ $scratch_fe_status -eq 0 ] && [ $scratch_be_status -eq 0 ]; then
    echo -e "${GREEN}Scratch Project setup completed successfully!${NC}"
else
    echo -e "${RED}Scratch Project setup completed with errors.${NC}"
    
    # Provide troubleshooting tips
    echo -e "${YELLOW}Troubleshooting tips:${NC}"
    echo -e "1. Ensure you have SSH access to the repositories."
    echo -e "2. Check if your SSH key is added to your GitHub account."
    echo -e "3. Try running: ssh -T git@github.com to verify your connection."
    echo -e "4. If using HTTPS instead of SSH, update the repository URLs in this script."
    
    exit 1
fi