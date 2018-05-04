# ruby-scripts
Repository for all my ruby scripts.

video-wall-script:
- We were supplied images with different names and in different folders that corresponded to specific apartments. Some apartments made use of the same images so an excel spreadsheet was supplied to provide reference for which apartment belonged to which view.
- To simplify things, we wrote a script to generate an image for each apartment, even if there was double ups. This allowed to take into account any changes made to specific apartments as they then had their own individual file which could be easily replaced.


rmagick-image-padding:
- Was supplied images at all different resolutions and aspect ratios. This posed an issue for the video wall we were displaying this content to.
- The dimensions of the video wall are 11520x4320 pixels, giving an aspect ratio of approximately 2.67.
- In order for the images to not be cut off or to actually display appropriately, black (white-space) needed to be added to the image.
- A black image was created that matched the height of the selected image and the width was then calculated to match the 2.67 aspect ratio.
- Now that two images are available, the image to be displayed was then overlayed on the new black image, essentially creating a combined composite image.
- A gravity configuration was applied for this composite function which allowed the image to actually be centered all the time.
- This was then applied to 96 other images where the file names were stored in an array.