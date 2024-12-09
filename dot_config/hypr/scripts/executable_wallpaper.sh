#!/bin/bash

# Set the path to the wallpapers directory
wallpapersDir="$HOME/.config/wallpapers/"

# Get a list of all image files in the wallpapers directory
wallpapers=("$wallpapersDir"/*)

# Start an infinite loop
while true; do
  # Check if the wallpapers array is empty
  if [ ${#wallpapers[@]} -eq 0 ]; then
    # If the array is empty, refill it with the image files
    wallpapers=("$wallpapersDir"/*)
  fi

  # Select a random wallpaper from the array
  wallpaperIndex=$((RANDOM % ${#wallpapers[@]}))
  selectedWallpaper="${wallpapers[$wallpaperIndex]}"

  # Update the wallpaper using the swww img command
  swww img "$selectedWallpaper" --transition-type wave --transition-step 10 --transition-fps 60
  # Delay before selecting the next wallpaper
  sleep 6h
done

