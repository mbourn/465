# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
dois = Doi.create(
  [
    { name: 'Test1', description: 'Test1', doi: 'xxxxTEST1xxxx'},
    { name: 'Test2', description: 'Test2', doi: 'xxxxTEST2xxxx'}
  ]
)

urls = Url.create(
  [
    { url: 'www.google.com', doi_id: dois[0].id},
    { url: 'www.yahoo.com', doi_id: dois[0].id},
    { url: 'www.duckduckgo.com', doi_id: dois[1].id},
    { url: 'www.vimeo.com', doi_id: dois[1].id},
    { url: 'www.sourceforge.net', doi_id: dois[1].id}
  ]
)

