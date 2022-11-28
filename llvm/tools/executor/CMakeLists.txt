

set(LLVM_LINK_COMPONENTS
    Core
    Support
    Analysis
    IRReader
  )

add_llvm_tool(executor
  executor.cpp
  )

