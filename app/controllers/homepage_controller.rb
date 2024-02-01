require 'net/http'
require 'uri'

user = 'Quartinal'
repo = 'EaglercraftMC'
branch = 'main'

uri = "https://api.github.com/repos/#{user}/#{repo}/commits/#{branch}"

response = http.get(uri)

commit_json = JSON.parse(response.body)

commit_sha = commit_json['sha']

return commit_sha

class HomepageController
  def homepage
    render file: 'homepage'
  end
end