=begin

  Exercise2. Write a Ruby program that analyzes an MP3 file. Many MP3
  files have a 128-byte data structure at the end called an ID3 tag. These 128 bytes are literally packed with information about the song: its name, the artist, which album it's from, and so on. You can parse this data structure by opening an MP3 file and doing a series of reads from a position near the end of the file. According to the ID3 standard, if you start from the 128th-to-last byte of an MP3 file and read three bytes, you should get the string TAG. If you don't, there's no ID3 tag for this MP3 file, and nothing to do. If there is an ID3 tag present, then the 30 bytes after TAG contain the name of the song, the 30 bytes after that contain the name of the artist, and so on. A sample song.mp3 file is available to test your program. Use Symbols, wherever possible.
  
=end

class MP3Info
  attr_reader :header, :title, :artist, :album, :year, :comment, :track, :genre

  TAGS = {
    :header => 3,
    :title => 30,
    :artist => 30,
    :album => 30, 
    :year => 4,
    :comment => 28,
    :track => 2,
    :genre => 1
  }
  
  def initialize(file_name)  
    @file_name = file_name
    read_id3
  end

  private

  def read_id3
    File.open(@file_name, 'rb') do |f|
      f.seek(-128, IO::SEEK_END)

      @header = f.read(TAGS[:header]).strip
      @title = f.read(TAGS[:title]).strip
      @artist = f.read(TAGS[:artist]).strip
      @album = f.read(TAGS[:album]).strip
      @year = f.read(TAGS[:year]).strip
      @comment = f.read(TAGS[:comment]).strip
      @track = f.read(TAGS[:track]).strip
      @genre = f.read(TAGS[:genre]).strip
    end
  end
end

mp3 = MP3Info.new(ARGV[0])
puts mp3.header
puts mp3.title
puts mp3.artist
puts mp3.album
puts mp3.year
puts mp3.comment
puts mp3.track
puts mp3.genre
