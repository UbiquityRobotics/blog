# Adding a new post
You can write your posts in either markdown or RST formats.

All posts should be in content/posts, and need to have some metadata called 'front-matter'.

The format is like this and goes at the top of the file: 
```
+++
date = "2016-04-01T00:00:00-07:00"
draft = false
title = "Your Title"
author = "Your Name"

+++

```

# Building
We use [hugo][https://gohugo.io/] for static site generation.

After installing Hugo, you can build and serve it locally using this command:
`hugo serve --theme=beautifulhugo --buildDrafts=True`

If you don't want drafts to show up, ommit the `--buildDrafts=True` option.

# Deployment to Dev/Staging
First, you need to have access to the server as a 'blog-collaborator'.

Then you can add the server as a remote using `git remote add ${YOUR_USER}@blog-dev.ubiquityrobotics.com:/usr/local/src/blog-dev blog-dev`.

This will trigger a build on the server as you push, which will then be served on blog-dev.ubiquityrobotics.com.

Note: blog-dev.ubiquityrobotics.com currently displays posts labeled as drafts.
