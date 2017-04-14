hugo --theme=beautifulhugo --baseURL=http://blog-dev.ubiquityrobotics.com --buildDrafts=True
rsync public/* ubiquity_packages:/var/www/blog-dev -r
