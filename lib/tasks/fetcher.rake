namespace :fetcher do

  desc 'Fetch lift info from s-bahn and bvg'
  task :berlin do
    NOW   = Time.now.to_i
    FILE  = "#{NOW}.html"
    FileUtils.mkdir_p( Rails.root.join('public', 'system', 'SBAHN'))
    FileUtils.mkdir_p( Rails.root.join('public', 'system', 'BVG'  ))
    system "wget -q http://www.s-bahn-berlin.de/fahrplanundnetz/mobilitaetsstoerungen.php -O #{Rails.root.join('public', 'system', 'SBAHN', FILE)}"
    system "wget -q http://www.bvg.de/index.php/de/9466/name/Aufzugsmeldungen.html -O #{Rails.root.join('public', 'system', 'BVG', FILE)}"
  end
end