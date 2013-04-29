#!/usr/bin/env ruby

require "rugged"

repo = Rugged::Repository.new("/home/h2s/src/ppl")
index = File.read("development/changelog/index.md")

changes = index.split("### ")

def find_date(repo, version)
  tag = repo.refs.find { |r| r.name == "refs/tags/#{version}" }
  commit = repo.lookup(tag.target).target
  commit.time
end

def generate_post(front_matter, body)
  post = ["---"]
  front_matter.each do |name, value|
    post << "#{name}: #{value}"
  end
  post << "---"
  post << ""
  post << body

  post.join "\n"
end

changes.each do |change|

  version = change.scan(/^([0-9.]+)/)[0]
  next if version.nil?

  version = version[0]
  date = find_date(repo, version).strftime("%Y-%m-%d")
  body = change.split("\n")[2..-1].join("\n")

  post = generate_post({
    :title      => version,
    :date       => date,
    :layout     => "changelog",
    :section    => "development",
    :categories => "[changelog]",
    :permalink  => "/development/changelog/#{version}",
  }, body)

  filename = "_posts/#{date}-#{version}.md"

  File.open(filename, "w") { |f| f.write(post) }

end

