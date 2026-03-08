#!/bin/bash

# Script to validate required secrets are available
set -e

echo "Validating required secrets and environment variables..."

# Function to check if variable is set and not empty
check_var() {
    local var_name=$1
    local var_value=${!var_name}
    
    if [ -z "$var_value" ]; then
        echo "❌ ERROR: $var_name is not set or empty"
        
