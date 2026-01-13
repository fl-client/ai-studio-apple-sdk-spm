#!/usr/bin/env python3
import json
import re
import sys
import argparse

def update_package_swift(checksums_json, package_swift_path="Package.swift"):
    """
    Update Package.swift with new version numbers and checksums
    """
    # Parse the checksums JSON
    data = json.loads(checksums_json)
    release_data = data.get("checksums_release", {})
    version = release_data.get("version", "")
    checksums = release_data.get("checksums", {})
    
    if not version or not checksums:
        print("Error: Missing version or checksums in the input data")
        sys.exit(1)
    
    # Read the current Package.swift
    try:
        with open(package_swift_path, 'r') as f:
            content = f.read()
    except FileNotFoundError:
        print(f"Error: {package_swift_path} not found")
        sys.exit(1)
    
    print(f"Updating to version: {version}")
    
    # Update version numbers in URLs and checksums together
    for framework_name, checksum in checksums.items():
        # Pattern to match the entire binaryTarget block for this framework
        # This captures: everything before version, version number, everything after version to checksum, old checksum
        pattern = rf'(\.binaryTarget\(\s*name:\s*"{framework_name}",\s*url:\s*"[^"]*/{framework_name}-)\d+\.\d+\.\d+(?:\.\d+)?(\.xcframework\.zip",\s*checksum:\s*")[^"]*(")'
        replacement = rf'\g<1>{version}\g<2>{checksum}\g<3>'
        
        old_content = content
        content = re.sub(pattern, replacement, content, flags=re.DOTALL)
        
        if content != old_content:
            print(f"Updated version and checksum for {framework_name}")
        else:
            print(f"Warning: Could not find or update {framework_name}")
    
    # Write the updated content back
    try:
        with open(package_swift_path, 'w') as f:
            f.write(content)
        print(f"Successfully updated {package_swift_path}")
    except Exception as e:
        print(f"Error writing to {package_swift_path}: {e}")
        sys.exit(1)

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Update Package.swift with new checksums and version")
    parser.add_argument("--checksums", required=True, help="JSON string containing checksums data")
    parser.add_argument("--package-path", default="Package.swift", help="Path to Package.swift file")
    
    args = parser.parse_args()
    
    update_package_swift(args.checksums, args.package_path)
