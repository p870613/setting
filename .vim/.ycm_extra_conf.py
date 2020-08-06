
import os
import ycm_core
 
# flags = [
    # '-Wall',
    # '-Wextra',
    # '-Werror',
    # '-Wno-long-long',
    # '-Wno-variadic-macros',
    # '-fexceptions',
    # '-DNDEBUG',
    # '-std=c++1z',
    # '-x',
    # 'c++',
    # '-I',
    # '/usr/include',
    # '-isystem',
    # '/usr/lib/gcc/x86_64-linux-gnu/5/include',
    # '-isystem',
    # '/usr/include/x86_64-linux-gnu',
    # '-isystem'
    # '/usr/include/c++/5',
    # '-isystem',
    # '/usr/include/c++/5/bits'
  # ]
flags = [
'-Wall',
'-Wextra',
'-Werror',
'-Wno-long-long',
'-Wno-variadic-macros',
'-fexceptions',
'-DNDEBUG',
# You 100% do NOT need -DUSE_CLANG_COMPLETER in your flags; only the YCM
# source code needs it.
'-DUSE_CLANG_COMPLETER',
# THIS IS IMPORTANT! Without a "-std=<something>" flag, clang won't know which
# language to use when compiling headers. So it will guess. Badly. So C++
# headers will be compiled as C headers. You don't want that so ALWAYS specify
# a "-std=<something>".
# For a C project, you would set this to something like 'c99' instead of
# 'c++11'.
'-std=c++11',
# ...and the same thing goes for the magic -x option which specifies the
# language that the files to be compiled are written in. This is mostly
# relevant for c++ headers.
# For a C project, you would set this to 'c' instead of 'c++'.
'-x',
'c++',
'-isystem',
'../BoostParts',
'-isystem',
# This path will only work on OS X, but extra paths that don't exist are not
# harmful
'/System/Library/Frameworks/Python.framework/Headers',
'-isystem',
'../llvm/include',
'-isystem',
'../llvm/tools/clang/include',
'-I',
'.',
'-I',
'./ClangCompleter',
'-isystem',
'./tests/gmock/gtest',
'-isystem',
'./tests/gmock/gtest/include',
'-isystem',
'./tests/gmock',
'-isystem',
'./tests/gmock/include',
'-isystem',
'/usr/lib/c++/v1'
] 
SOURCE_EXTENSIONS = [ '.cpp', '.cxx', '.cc', '.c', '.rs']
 
def FlagsForFile( filename, **kwargs ):
  return {
    'flags': flags,
    'do_cache': True
  }
# def FlagsForFile ( filename, **kwargs ):
    # return {
            # 'flags': [ '-x', '-Wall', '-Wextra', '-Werror', 'std=c++1z' ]
    # }
# def Settings( **kwargs ):
    # if kwargs[ 'language' ] == 'rust':
        # return {
            # 'ls': {
                # 'rust': {
                    # 'features': ['http2','spnego'],
                    # 'all_targets': False,
                    # 'wait_to_build': 1500,
                # }
            # }
        # }

    # return {
        # 'flags': [ '-x', 'c++', '-Wall', '-Wextra', '-Werror' ],
    # }
