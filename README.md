# Avvo Coding Styles

> Nearly everybody is convinced that every style but their own is
> ugly and unreadable. Leave out the "but their own" and they're
> probably right... <br/>
> -- Jerry Coffin

Welcome! These guides, in combination with our configured linters, should help you write clean, consistent code that adheres to our internal style. They also provide helpful tips on avoiding common pitfalls, so it's highly recommended that you review them.

## <a name='TOC'>Table of Contents</a>

  * [Guides](#guides)
  * [General Rules](#general-rules)
    * [Formatting](#formatting)
    * [Comments](#comments)
        * [Comment Annotations](#comment-annotations)
  * [Linters](#linters)
  * [Editor Plugins](#editor-plugins)
  * [Contributing](#contributing)

## Guides

* [Ruby](https://github.com/avvo/coding-style/blob/master/guides/ruby.md)
* [Rails](https://github.com/avvo/coding-style/blob/master/guides/rails.md)
* [JavaScript](https://github.com/avvo/coding-style/blob/master/guides/javascript.md)


## General Rules

* Favor readability over cleverness


### Formatting

* Use `UTF-8` as the source file encoding.
* Use two **space** indentation (aka soft tabs). No hard tabs.
* Use Unix-style line endings.
* No trailing whitespace.


### Comments

> Good code is its own best documentation. As you're about to add a
> comment, ask yourself, "How can I improve the code so that this
> comment isn't needed?" Improve the code and then document it to make
> it even clearer. <br/>
> -- Steve McConnell

* Write self-documenting code and you can ignore the rest of this section. Seriously!
* Comments longer than a word are capitalized and use punctuation. Use [one
  space](http://en.wikipedia.org/wiki/Sentence_spacing) after periods.
* Keep existing comments up-to-date. An outdated comment is worse than no comment
at all.

> Good code is like a good joke - it needs no explanation. <br/>
> -- Russ Olsen

* Avoid writing comments to explain bad code. Refactor the code to
  make it self-explanatory.


#### Comment Annotations

* `TODO`: missing features or functionality that should be
  added at a later date.
* `FIXME`: broken code that needs to be fixed.
* `OPTIMIZE`: slow or inefficient code that may cause
  performance problems.
* `HACK`: code smells where questionable coding practices were used and should be refactored away.
* `REVIEW`: anything that should be looked at to confirm it
  is working as intended. For example: `REVIEW: Are we sure this is how the
  client does X currently?`

* Annotations should usually be written on the line immediately above
  the relevant code.
* The annotation keyword is followed by a colon and a space, then a note
  describing the problem.
* If multiple lines are required to describe the problem, subsequent
  lines should be indented two spaces after the annotation.

    ```Ruby
    def bar
      # FIXME: This has crashed occasionally since v3.2.1. It may
      #   be related to the BarBazUtil upgrade.
      baz(:quux)
    end
    ```

* In cases where the problem is so obvious that any documentation would
  be redundant, annotations may be left at the end of the offending line
  with no note. This usage should be the exception and not the rule.

    ```Ruby
    def bar
      sleep 100 # OPTIMIZE
    end
    ```

**[[⬆]](#TOC)**

## Linters

Linters make it simple to adhere to the guidelines, so be sure you have them installed!

### JSHint
[JSHint](http://www.jshint.com/) is a JavaScript code style checker based on Doug Crockford's less forgiving [JSLint](http://www.jslint.com/). Configured with `.jshintrc` files. To install:

1. `brew install node`
2. `npm install -g jshint`
3. If you are using `nvm` and `zsh`, ensure that the line to load `nvm` is in `.zshenv` and not `.zshrc`.

### Rubocop
[RuboCop](https://github.com/bbatsov/rubocop) is a Ruby code style checker based on the [Ruby Community Style Guide](https://github.com/bbatsov/ruby-style-guide). Configured with `.rubocop.yml` files. To install:

1. `gem install rubocop`

**[[⬆]](#TOC)**

## Editor Plugins

### SublimeLinter

[SublimeLinter](http://sublimelinter.readthedocs.org/en/latest/index.html) is a Sublime Text plugin that will automatically lint your code as you edit. To install:

1. Install all linters (JSHint, Rubocop, etc.) beforehand.
2. Install `SublimeLinter` via Package Control
3. Install linter plugins via Package Control (e.g. `SublimeLinter-rubocop`, `SublimeLinter-jshint`, etc.)
4. You should now be able to access and configure Sublime Linter under `Tools > SublimeLinter`

**[[⬆]](#TOC)**

## Contributing

  * [Fork](https://help.github.com/articles/fork-a-repo) the project on GitHub.
  * Make your feature addition or bug fix in a feature branch.
  * Update any associated linter configs.
  * Push your feature branch to GitHub.
  * Send a [Pull Request](https://help.github.com/articles/using-pull-requests) with a description of your changes and share out to the dev team.

**[[⬆]](#TOC)**
