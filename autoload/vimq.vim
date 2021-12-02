let s:vimq_result_buffer_name = 'VIMQ_RESULT'

" 区切り文字の指定
let s:vimq_delimitter = get(g:, 'vimq_delimitter', ',')

" 出力にヘッダーを出力するか
let s:vimq_is_output_header = get(g:, 'vimq_is_output_header', 1)

" 結果画面のサイズ
let s:vimq_result_window_row = get(g:, 'vimq_result_window_row', 10)


function! vimq#Exec(input_query) abort
  let file_content = vimq#GetCurrentContent()
  let cmd = vimq#CreateCmd(a:input_query)
  let res = system(cmd, file_content)
  call vimq#PrintResult(res)
endfunction

" 現在開いているファイルの中身を取得します
function! vimq#GetCurrentContent() abort
  return bufnr("%")
endfunction

" q コマンドをオプションつけて返します
function! vimq#CreateCmd(input_query) abort
  let delmitter = "-d '" . s:vimq_delimitter . "'"
  let output_header = s:vimq_is_output_header ? "-O" : ""

  let query = "'" . a:input_query . "'"
  let cmd = join(['q', delmitter, output_header, '-H', query], ' ')
  return cmd
endfunction

" 結果を別windowで表示します
function! vimq#PrintResult(res) abort
  setlocal splitbelow
  execute s:vimq_result_window_row . "new" s:vimq_result_buffer_name
  setlocal buftype=nowrite  
  setlocal bufhidden=wipe 
  call append(0, split(a:res, "\n"))
endfunction

