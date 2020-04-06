require 'nokogiri'
require 'open-uri'
require "pry"

require_relative './course.rb'

class Scraper

  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end

def get_page
doc = open("http://learn-co-curriculum.github.io/site-for-scraping/courses")
doc = Nokogiri::HTML(doc)
end

def get_courses
  doc = open("http://learn-co-curriculum.github.io/site-for-scraping/courses")
  doc = Nokogiri::HTML(doc)
  course = doc.css("#2a778efd-1685-5ec6-9e5a-0843d6a88b7b .inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")
  binding.pry
end

end
