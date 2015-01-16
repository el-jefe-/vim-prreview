# vim-prreview

This plugin allows you to review a list of github pull requests across the repositories and labels that you are interested in.

## Configuration

set the repositories that you would like to see pull requests listed for by putting this in your `vimrc` file

    let g:pr_review_github_repos = ['jkoenig311/vim-prreview','rails/rails']

set up custom pull request filters

    let g:pr_review_filter= {'state': 'open', 'labels': 'Needs QA', 'sort': 'updated', 'direction': 'asc'}


For now, the github authentication credentials are coming from environment variables. You'll want to both of these set.

    export GITHUB_TOKEN=123
    export GITHUB_USERNAME=jkoenig311

## Mappings

in the PR list window I have

- `o` mapped to open a PR in a browser
- `q` to `:q` the split window

## Demo
![vim-prreview](https://cloud.githubusercontent.com/assets/2390653/5782762/cf46ba20-9d8b-11e4-9cbd-0d4462249d60.gif)
