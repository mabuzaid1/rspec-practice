require 'csv'


module CsvHelper

  # Import a CSV and convert it to an array of hash from an array of CSV lines
  def csv_to_ary_of_hash(file)
    ary=[]
    CSV.read(file,  :headers => true,:header_converters => :symbol, :converters => :all).each {|row| ary << row.to_hash }
    ary
  end
end
