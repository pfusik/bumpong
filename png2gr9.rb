# install with: gem install chunky_png
require 'chunky_png'

image = ChunkyPNG::Image.from_file(ARGV[0])
File.open(ARGV[1], "wb") { |file|
	image.height.times { |y|
		image.width.times { |x|
			print image[x, y] >> 28, ",";
			file.putc image[x, y] >> 28 << 4 | image[x + 1, y] >> 28 if (x & 1) == 0;
		}
		puts
	}
}
