Install The Website
===================

This tutorial can get you started contributing to this project.
If you have any issue when following it, consider [writing and issue](https://github.com/schul-cloud/schul-cloud.github.io/issues/new) or
[editing this file to add your solution](https://github.com/schul-cloud/schul-cloud.github.io/edit/master/INSTALLING.md).

Get The Website with Git
------------------------

To contribute to schul-cloud.github.io, you usually follow the github workflow.
Here you can learn more about it:

- https://desktop.github.com/ - if you like to use the desktop app of github (I recommend it for Windows)
- General Workflow: https://guides.github.com/introduction/flow/index.html
- a 15 minutes git tutorial: http://try.github.io/ if you like to use the console

1. You install the software "git" into you computer.
2. You "clone" the source code repository  
   `git clone https://github.com/schul-cloud/schul-cloud.github.io.git`
3. Now you have the folder `schul-cloud.github.io`

In the folder `schul-cloud.github.io` you should be able to see all the files of the repository.

Install Jekyll to Serve the Website
-----------------------------------

The website is generated from the files you see here using Jekyll.
You can install Jekyll or 

1. Once you have downloaded the website, you can [install Jekyll](https://jekyllrb.com/docs/installation/).
2. Then, in the folder of `schul-cloud.github.io` you can run this command:  
   `jekyll serve --trace`  
   The output should look like this:
   
        >jekyll serve --trace
        Configuration file: schul-cloud.github.io/_config.yml
                    Source: schul-cloud.github.io
               Destination: schul-cloud.github.io/_site
         Incremental build: disabled. Enable with --incremental
              Generating...
                            done in 16.397 seconds.
          Please add the following to your Gemfile to avoid polling for changes:
            gem 'wdm', '>= 0.1.0' if Gem.win_platform?
         Auto-regeneration: enabled for 'schul-cloud.github.io'
        Configuration file: schul-cloud.github.io/_config.yml
            Server address: http://127.0.0.1:4000/
3. navigate to <http://127.0.0.1:4000/>

Now, whenever you change the site, you can see your changes when you reload the page.

Serve the Website from your Github Account
------------------------------------------

You can view your version of the website online.
Editing there might be slow.
If you Github user name is `USERNAME` you can make it viewable like this:

1. [Fork the website][fork]
2. Go to the settings: https://github.com/USERNAME/schul-cloud.github.io/settings  
   ![image](https://cloud.githubusercontent.com/assets/564768/24150542/4906cc6a-0e46-11e7-9154-f1c738a712c4.png)
3. Switch on the github pages:  
   ![image](https://cloud.githubusercontent.com/assets/564768/24150582/5ff59410-0e46-11e7-84cd-5881fafd12a9.png)
4. go to USERNAME.github.io/schul-cloud.github.io to view your version of the website.

Now, you should be able to see the same website as on https://schul-cloud.github.io

How to Jekyll
-------------

There is a website with tips for you [jekyll.tips]][tips] and a [cheat sheet][cheat].

### Markdown

Jekyll transforms [Markdown Syntax][markdown] to HTML for us.

### Front Matter

When two lines are in the beginning, jekyll knows that it should transform the file:
```
---

---
```

Between the lines, you can write [YAML][yaml]:

```
---
variable: "text content"
---
```

Some have special meaning:
- `layout` is the name of a file in the [`_layouts`][_layouts] folder.
  This layout-file can use `{{ page.content }}` somewhere in it.
  Thus, the layout-file is the structure around the content.
  It can be used so many pages have the same layout.
  
[Documentation][front-matter]

### Includes

Sometimes you can see
```
{{ include footer.html }}
```
This means that Jekyll copy and pastes the content if [`_includes/footer.html`](_includes/footer.html) to this place.

**TODO**: Find page on https://jekyllrb.com


[fork]: https://github.com/schul-cloud/schul-cloud.github.io/fork
[tips]: http://jekyll.tips/
[markdown]: http://daringfireball.net/projects/markdown/syntax
[yaml]: http://www.yaml.org/spec/1.2/spec.html
[cheat]: http://jekyll.tips/jekyll-cheat-sheet/
[front-matter]: https://jekyllrb.com/docs/frontmatter/
