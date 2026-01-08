 #!/bin/bash
 
while true
do
	echo "File and Directory Operations Menu"
	echo "-----------------------------------------------------------"
	echo "1. List files and directories in the given path"
	echo "2. Display information about a file or directory"
	echo "3. Create a directory"
# take a dir path and name from user
	echo "4. Create a file"
# take a file name and create it at given path and add some contents in it.
	echo "5. Copy a file or directory"
# take a source & destination path from user & copy file/directory ( add logic to identitfy file or directory)
	echo "6. Move/Rename a file or directory"
# take a file/dir path and move or rename accordingly
	echo "7. Delete a file or directory"
# take a file/dir path and accordingly delete the file/dir
	echo "8. Exit"

	read -p "Enter your choice: " choice
	
	
    case $choice in
    1)
        read -p "Enter path: " path
        if [ -d "$path" ]; then
            ls -l "$path"
        else
            echo "Invalid directory path!"
        fi
        ;;
    
    2)
        read -p "Enter file or directory path: " item
        if [ -e "$item" ]; then
            stat "$item"
        else
            echo "File/Directory does not exist!"
        fi
        ;;
    
    3)
        read -p "Enter directory path to create: " dir
        if mkdir -p "$dir"; then
            echo "Directory created successfully."
        else
            echo "Failed to create directory."
        fi
        ;;
    
    4)
        read -p "Enter file path to create: " file
        read -p "Enter content for file: " content
        echo "$content" > "$file"
        echo "File created successfully."
        ;;
    
    5)
        read -p "Enter source path: " src
        read -p "Enter destination path: " dest

        if [ -f "$src" ]; then
            cp "$src" "$dest"
            echo "File copied successfully."
        elif [ -d "$src" ]; then
            cp -r "$src" "$dest"
            echo "Directory copied successfully."
        else
            echo "Source does not exist!"
        fi
        ;;
    
    6)
        read -p "Enter source file/directory path: " src
        read -p "Enter destination/new name path: " dest

        if [ -e "$src" ]; then
            mv "$src" "$dest"
            echo "Move/Rename successful."
        else
            echo "Source does not exist!"
        fi
        ;;
    
    7)
        read -p "Enter file or directory path to delete: " item

        if [ -f "$item" ]; then
            rm "$item"
            echo "File deleted successfully."
        elif [ -d "$item" ]; then
            rm -r "$item"
            echo "Directory deleted successfully."
        else
            echo "File/Directory does not exist!"
        fi
        ;;
    
    8)
        echo "Exiting... Goodbye!"
        exit 0
        ;;
    
    *)
        echo "Invalid choice! Please select between 1-8."
        ;;
    esac
done	
