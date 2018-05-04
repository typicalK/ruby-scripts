# require 'rubygems'
# require 'rmagick'

require 'rmagick'
include Magick

# img = Magick::Image::read('/home/q1linux/Dropbox/Q1 Design/CBRE-CBUS/Content/2018-05-01 PowerPoint Implementation/CBUS/Picture1.png')[0]

# img = img.scale(0.5)

array_png = [
	'Picture1.png',
	'Picture35.png',
	'Picture38.png',
	'Picture52.png',
	'Picture7.png'
]

array_jpg = ["Picture100.jpg","Picture10.jpg","Picture11.jpg","Picture12.jpg","Picture13.jpg","Picture14.jpg","Picture15.jpg","Picture16.jpg","Picture17.jpg","Picture18.jpg","Picture19.jpg","Picture20.jpg","Picture21.jpg","Picture22.jpg","Picture23.jpg","Picture24.jpg","Picture25.jpg","Picture26.jpg","Picture27.jpg","Picture29.jpg","Picture2.jpg","Picture31.jpg","Picture32.jpg","Picture33.jpg","Picture34.jpg","Picture36.jpg","Picture37.jpg","Picture39.jpg","Picture3.jpg","Picture40.jpg","Picture41.jpg","Picture43.jpg","Picture44.jpg","Picture45.jpg","Picture46.jpg","Picture47.jpg","Picture48.jpg","Picture49.jpg","Picture4.jpg","Picture51.jpg","Picture53.jpg","Picture54.jpg","Picture55.jpg","Picture56.jpg","Picture57.jpg","Picture58.jpg","Picture59.jpg","Picture5.jpg","Picture60.jpg","Picture61.jpg","Picture62.jpg","Picture63.jpg","Picture64.jpg","Picture65.jpg","Picture66.jpg","Picture67.jpg","Picture68.jpg","Picture69.jpg","Picture6.jpg","Picture70.jpg","Picture71.jpg","Picture72.jpg","Picture73.jpg","Picture74.jpg","Picture75.jpg","Picture76.jpg","Picture77.jpg","Picture78.jpg","Picture79.jpg","Picture80.jpg","Picture81.jpg","Picture82.jpg","Picture83.jpg","Picture84.jpg","Picture85.jpg","Picture86.jpg","Picture87.jpg","Picture88.jpg","Picture89.jpg","Picture8.jpg","Picture90.jpg","Picture91.jpg","Picture92.jpg","Picture93.jpg","Picture94.jpg","Picture95.jpg","Picture96.jpg","Picture97.jpg","Picture98.jpg","Picture99.jpg","Picture9.jpg"]

array_png.each do |item|
	# image_b = ImageList.new("asd.png")
	image_b = ImageList.new("PNG/#{item}")
	# image_b.display
	image_d = Magick::Image.read( "PNG/#{item}" ).first
	height_b = image_d.rows
	width_b = image_d.columns

	# puts height_b
	# puts width_b

	width_b = (11520.0 / 4320) * height_b

	image_a = Image.new(width_b,height_b) { self.background_color = "black" }
	# image_a.write("kain01.png")

	image_c = image_a.composite(image_b, CenterGravity, OverCompositeOp)
	# image_c.display
	image_c.write("#{item}")

	image_a.destroy!
	image_b.destroy!
	image_c.destroy!
end


array_jpg.each do |item|
	# image_b = ImageList.new("asd.png")
	image_b = ImageList.new("JPG/#{item}")
	# image_b.display
	image_d = Magick::Image.read( "JPG/#{item}" ).first
	height_b = image_d.rows
	width_b = image_d.columns

	# puts height_b
	# puts width_b

	width_b = (11520.0 / 4320) * height_b

	image_a = Image.new(width_b,height_b) { self.background_color = "black" }
	# image_a.write("kain01.png")

	image_c = image_a.composite(image_b, CenterGravity, OverCompositeOp)
	# image_c.display
	image_c.write("#{item}")

	image_a.destroy!
	image_b.destroy!
	image_c.destroy!
end

exit











# convert -size 400x600 xc:white '/home/q1linux/Dropbox/Q1 Design/CBRE-CBUS/Content/2018-05-01 PowerPoint Implementation/CBUS/Picture1.png' -gravity center -composite output.jpg
# img.convert('-background white -gravity center -extent 5000x5000').url
# img.write("asdasd.png")
# convert asd.png -gravity east -extent 500x352 out.png)

# convert -size 400x600 xc:white asd.png -gravity center -composite output.png

# convert -define jpeg:size=200x200 asd.png -thumbnail '2000x2000' granite: +swap -gravity center -composite pad_compose.png

# convert -size 500x500 xc:white canvas.png
# convert canvas.png asd.png -geometry +200+200 -composite out.png