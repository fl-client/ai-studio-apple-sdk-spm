import json
with open('Script/Utils/payload.json', 'r') as f:
  data = json.load(f)

# Create the expected format with checksums_release structure
combined = {
  'checksums_release': data.get('checksums_release', data.get('Release', {})),
  'checksums_debug': data.get('checksums_debug', data.get('Debug', {}))
}

# Handle case where data might be directly in the payload
if 'version' in data and 'checksums' in data:
  combined['checksums_release'] = data

with open('combined_checksums.json', 'w') as f:
  json.dump(combined, f)

print('Combined checksums JSON created')

