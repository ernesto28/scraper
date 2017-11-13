class RequesterController < ApplicationController
  def html_parser
    page = Nokogiri::HTML(RestClient.get("http://en.wikipedia.org/"))
    scrapped = Hash.new
    scrapped[:h1]=page.css('h1')
    scrapped[:h2]=page.css('h2')
    scrapped[:h3]=page.css('h3')
    scrapped[:a]=page.css('a')
    @scrapped_pages=scrapped
  end


  def show_page_info(page_url)
    puts "Label\t|Value"
    @scrapped_pages[page_url].each {|key,tag| tag.each {|t| puts "#{t.name}\t|#{t.text}   #{t['href'] if t.name=='a'}"}}
  end

  private
    def requester_params
      params.require(:requester).permit(:page_url)
    end
end
