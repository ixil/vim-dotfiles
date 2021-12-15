let g:cmake_build_type='RELWITHDEBINFO'
let g:cmake_cxx_compiler='clang++'
let g:cmake_c_compiler='clang'
" let g:cmake_build_shared_libs
let g:cmake_project_generator='Ninja'
let g:cmake_usr_args ='-DCMAKE_CC_COMPILER_LAUNCHER=ccache -DCMAKE_CXX_COMPILER_LAUNCHER=ccache'
let g:cmake_export_compile_commands=1
let g:cmake_ycm_symlinks=1
