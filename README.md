#!/bin/bash

# Define the common information
AUTHOR_NAME="Ahmad Othman"
AUTHOR_URI="https://ikhedmah.org"
VERSION="1.0.0"

# Create the README.md file for Custom Theme Development
cat <<EOF > README-THEME.md
# Custom WordPress Theme

## Description
A custom WordPress theme designed to provide unique styling and functionality.

## Installation
1. Download the theme.
2. Upload the theme files to the \`/wp-content/themes/[fiction-university]\` directory.
3. Activate the theme through the 'Themes' screen in WordPress.

## Features
- Feature 1: Blog Section.
- Feature 2: Program section connected with google maps to show campus location.
- Feature 3: professor section related to subjects.

## Usage
- Step 1: download node modules .
- Step 2: Detail any customizations or settings.
- Step 3: Add screenshots if necessary to help users.

## Changelog
### $VERSION
- Initial release.

## Frequently Asked Questions
**Q: How do I install the theme?**
A: Follow the installation instructions provided above.

**Q: Is the theme compatible with the latest version of WordPress?**
A: Yes, it has been tested with the latest version.

## Support
For any support or inquiries, visit [Support Page](https://ikhedmah.org).

## Author
[Ahmad Othman]($AUTHOR_URI)

## License
This theme is licensed under the GPLv2 or later.
EOF

# Create the README.md file for Custom Plugin Development
cat <<EOF > README-PLUGIN.md
# Custom WordPress Plugin

## Description
A custom WordPress plugin that adds specific functionality to your site.

## Installation
1. Download the plugin.
2. Upload the plugin files to the \`/wp-content/plugins/[Gutenberg Block]\` directory, or install the plugin through the WordPress plugins screen directly.
3. Activate the plugin through the 'Plugins' screen in WordPress.

## Features
- Feature 1: Brief description of the feature.
- Feature 2: Brief description of the feature.
- Feature 3: Brief description of the feature.

## Usage
- Step 1: Explain how to use the custom plugin.
- Step 2: Detail the steps and functionalities provided by the plugin.
- Step 3: Add screenshots if necessary to help users.

## Changelog
### $VERSION
- Initial release.

## Frequently Asked Questions
**Q: How do I install the plugin?**
A: Follow the installation instructions provided above.

**Q: Is the plugin compatible with the latest version of WordPress?**
A: Yes, it has been tested with the latest version.

## Support
For any support or inquiries, visit [Support Page](https://ikhedmah.org).

## Author
[Ahmad Othman]($AUTHOR_URI)

## License
This plugin is licensed under the GPLv2 or later.
EOF

# Output completion message
echo "README-THEME.md and README-PLUGIN.md files created successfully!"
