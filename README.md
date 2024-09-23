# Personalized Command Line Tool

## Project Description
This project is a personalized command line tool designed to automate the organization of files in a directory based on their file types. It is built using Bash scripting and demonstrates basic file handling and automation skills.

## Features
- Automatically organizes files into directories based on their extensions.
- Supports common file types such as documents, images, videos, music, and archives.
- Moves files with unknown extensions to an "Others" directory.

## Technologies Used
- **Bash Scripting**
- **Linux**

## Prerequisites
- A Linux-based operating system.
- Basic knowledge of Bash scripting.

## Steps
- mkdir file_organizer
- cd file_organizer
- touch organize.sh
- **Write the Script (organise.sh)**

Make the script executable:
chmod +x organize.sh

Usage
Run the script:
./organize.sh

Enter the directory to organize when prompted:
Enter the directory to organize: /path/to/your/directory

Example
Before running the script:

# Downloads/
├── document.pdf

├── image.jpg

├── video.mp4

├── song.mp3

├── archive.zip

├── notes.txt

After running the script:

# Downloads/
├── Archives/

└── archive.zip

├── Documents/

├── document.pdf
└── notes.txt

├── Images/

└── image.jpg

├── Music/

└── song.mp3
---

├── Videos/

│   └── video.mp4

