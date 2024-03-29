set nocompatible          " vim의 기능 사용(vi와 구분)
if has("clipboard")
    set clipboard=unnamed " copy to the system clipboard
    if has("unnamedplus") " X11 support
        set clipboard+=unnamedplus
    endif
endif
 
set number          " 줄 번호
set ruler           " 우측 하단 커서 위치 표시
set tabstop=4       " tab 4
set shiftwidth=4    " 들여쓰기
set expandtab       " tab을 공백으로
set showmatch       " 괄호 짝 표시
set title           " 상단 편집 중인 파일 표시
set hlsearch        " 검색 강조
set wrap            " 줄이 길어지면 다음 줄로
set cursorline      " 커서 있는 줄 강조
set noimd           " 한글을 쓰다가도 NORMAL에서 영어로 변경됨
 
" UTF-8 or EUC-KR
set encoding=utf-8
set fileencodings=utf-8,cp949,euc-kr
" 공백문자 화면에 표시
set list listchars=tab:»-,trail:·,extends:»,precedes:«
" 줄의 끝, 시작, 들여쓰기에서 이전 줄로
set backspace=eol,start,indent

if has('syntax')
    syntax on
endif
 
cmap w!! w !sudo tee % > /dev/null
