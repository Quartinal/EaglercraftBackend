require 'net/http'
require 'uri'

user = 'Quartinal'
repo = 'EaglercraftMC'
branch = 'main'

uri = URI("https://api.github.com/repos/#{user}/#{repo}/commits/#{branch}")

response = Net::HTTP.get(uri)

commit_json = JSON.parse(response)

@commit_sha = commit_json['sha']

class HomepageController < ApplicationController
  def homepage
    render file: 'homepage'
  end
end