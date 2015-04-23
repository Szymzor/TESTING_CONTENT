require 'roo'
s = Roo::OpenOffice.new("sample.ods")
s.default_sheet = s.sheets.first

for col in 1..s.last_column do
print "#{s.cell(1,col)}"
end
puts

((s.first_row+1)..s.last_row).each do |row|
	data = s.row(row)
	puts "#{data.join("\t")}"
	
end