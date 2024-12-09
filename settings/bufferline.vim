
" ~/.config/nvim/settings/bufferline.vim

" Cấu hình bufferline.nvim
let g:bufferline = {}
let g:bufferline.numbers = "ordinal"
let g:bufferline.close_command = "bdelete! %d"       " Lệnh để đóng buffer
let g:bufferline.right_mouse_command = "bdelete! %d" " Lệnh chuột phải để đóng buffer
let g:bufferline.left_mouse_command = "buffer %d"    " Lệnh chuột trái để mở buffer
let g:bufferline.middle_mouse_command = ""          " Không gán lệnh chuột giữa

" Các biểu tượng
let g:bufferline.indicator_icon = '▎'
let g:bufferline.buffer_close_icon = ''
let g:bufferline.modified_icon = '●'
let g:bufferline.close_icon = ''
let g:bufferline.left_trunc_marker = ''
let g:bufferline.right_trunc_marker = ''

" Các tùy chọn khác
let g:bufferline.max_name_length = 18
let g:bufferline.max_prefix_length = 15
let g:bufferline.tab_size = 18
let g:bufferline.diagnostics = "nvim_lsp"            " Hiển thị thông báo từ LSP
let g:bufferline.diagnostics_update_in_insert = 0
let g:bufferline.offsets = [{'filetype': 'NvimTree', 'text': 'File Explorer', 'padding': 1}]
let g:bufferline.show_buffer_icons = 1               " Hiển thị biểu tượng buffer
let g:bufferline.show_buffer_close_icons = 1
let g:bufferline.show_close_icon = 1
let g:bufferline.show_tab_indicators = 1
let g:bufferline.persist_buffer_sort = 1            " Sắp xếp buffer theo thứ tự đã chọn
let g:bufferline.separator_style = "thin"           " Kiểu phân cách giữa các buffer
let g:bufferline.enforce_regular_tabs = 0
let g:bufferline.always_show_bufferline = 1

" Thiết lập keybindings cho bufferline.nvim
nnoremap <C-K> :BufferLineCyclePrev<CR>
nnoremap <C-L> :BufferLineCycleNext<CR>

" Di chuyển đến buffer cụ thể (1-9)
for i in range(1, 9)
    execute 'nnoremap <C-' . i . '> :BufferLineGoToBuffer ' . i . '<CR>'
endfor
