# selective-undo.vim

Sparked by [this discussion on r/vim](http://www.reddit.com/r/vim/comments/26d7te/which_is_a_useful_feature_you_found_in_a_nonvim/), I put together a selective undo plugin for Vim.

This plugin is designed to operate undo on a visual selection, without touching the rest of the file.

Here's how it looks right now:

<img src='http://jaxbot.me/pics/vim/selective-undo-vim.gif'>

It was a pretty fun problem to solve.

It, however, is not complete. There are plenty of bugs, and a bit of limitations/quirkiness:

* Only operates on lines, not visual blocks
* It doesn't know when you run out of undo stacks, so repeatedly pressing undo can do weird things at the end of the stack.
* Probably a lot more

I'm open to pull requests and improving this, as I think this would be a really useful feature to have in my workflow.

That being said, this is based around a hack, so don't expect anything amazing from the code.

Enjoy!

MIT Licensed

## Shameless plug

I hack around with Vim plugins a lot; if that sounds interesting to you, or you want to make my day, [follow me](https://github.com/jaxbot) :)

