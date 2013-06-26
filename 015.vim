    if version >= 508 || !exists("did_javascript_syn_inits")
      if version < 508
        let did_javascript_syn_inits = 1
        command -nargs=+ HiLink hi link <args>
      else
        command -nargs=+ HiLink hi def link <args>
      endif
      HiLink javaScriptComment              Comment
      HiLink javaScriptLineComment          Comment
      HiLink javaScriptCommentTodo          Todo
      HiLink javaScriptSpecial              Special
      HiLink javaScriptStringS              String
      HiLink javaScriptStringD              String
      HiLink javaScriptCharacter            Character
      HiLink javaScriptSpecialCharacter     javaScriptSpecial
      HiLink javaScriptNumber               javaScriptValue
      HiLink javaScriptConditional          Conditional
      HiLink javaScriptRepeat               Repeat
      HiLink javaScriptBranch               Conditional
      HiLink javaScriptOperator             Operator
      HiLink javaScriptType                 Type
      HiLink javaScriptStatement            Statement
      HiLink javaScriptFunction             Function
      HiLink javaScriptBraces               Function
      HiLink javaScriptError                Error
      HiLink javaScrParenError              javaScriptError
      HiLink javaScriptNull                 Keyword
      HiLink javaScriptBoolean              Boolean
      HiLink javaScriptRegexpString         String
