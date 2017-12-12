# CONTRIBUTING Guidelines

This website is generated to HTML & CSS using [Hugo](https://gohugo.io) a static website generation tool.

Hugo uses the notion of "content type" as its base for generating the site. All content goes in the directory 'content', with one subdirectory per-specific content type. In our site, we have `blog`, `page` and `roles` rigth now. There are other type of content that belongs to the data part: they are generated from the yaml files in the `data` directory.

All assets goes into the `static` directory. By assets we mean: documents in pdf, images, css, javascript, etc.

The content also can have attributes, which are written into the front matter. Every attribute that has a path referring to a document must not include the 'static' prefix in it. It will be assumed.

So for everyone that has to save some assets in the static directory, please keep in mind to:

- Save all your images in the directory corresponding to your content type. For example, if your blog entry has and image or an avatar, save it in 'static/img/blog'.
- Then in whatever front matter or content that refers to that image, just write '/img/blog/<your file.jpg>'
