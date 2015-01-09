ruby $: << File.expand_path(File.join(Vim.evaluate('g:PRREVIEW_INSTALL_PATH'), '..', 'lib'))
ruby require 'pr_review'

fun! prreview#ReviewPrs()
  let vheight=10
  setlocal winfixheight
  silent execute 'botright '.vheight.' new __PR_list'
  setlocal buftype=nofile
  setlocal bufhidden=delete
  ruby PrReview.new.print_pull_requests
  "remove an extra line at the bottom and move the cursor to the top
  execute 'normal! Gddgg'
  nnoremap <buffer> <silent> o :call prreview#CurrentURL()<CR>
endfun

fun! prreview#ReviewCommits()
endfun
