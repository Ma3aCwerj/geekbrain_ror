##
#
require 'find'

namespace :hw do
  
  desc "Считает кол-во ruby файлов."
  task count_files: :environment do
    files = []
    Find.find('.') do |x|
      files << x if x =~ /.*\.rb$/
    end
    puts "Найдено файлов: #{files.count}"
  end
  

  desc "Считает кол-во строк в ruby файлах."
  task count_rows: :environment do
    files = []
    
    Find.find('.') do |x|
      files << x if x =~ /.*\.rb$/
    end

    rows = 0
    files.each do |f|
      File.open(f,"r") do |m|
        m.each_line do |line|
          rows += 1
        end
      end
    end
    puts "Строк найдено: #{rows}"
  end
end
 
end
