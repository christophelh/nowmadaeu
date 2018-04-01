# Set the host name for URL creation
SitemapGenerator::Sitemap.default_host = "http://www.nowmada.eu"

SitemapGenerator::Sitemap.create do

    add '/jobs'

     add jobs_path, :priority => 0.7, :changefreq => 'daily'

    Job.find_each do |job|
      add job_path(job), :lastmod => job.updated_at
    end
end
