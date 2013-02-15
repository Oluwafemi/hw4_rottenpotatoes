Given /^the following movies exist:$/ do |movies_table|
  @all_ratings = []
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
    @all_ratings << movie[:rating]
 end
end

Then /^the director of "(.*?)" should be "(.*?)"$/ do |arg1, arg2|
  
  returned_elems = page.all('#main h2:first')
  details_field_text = returned_elems[0].text

  returned_elems = page.all('#details li:nth-child(2)')
  director_field_text = returned_elems[0].text

  assert ((("Details about " + arg1) == details_field_text) and (("Director: " + arg2) == director_field_text))
end