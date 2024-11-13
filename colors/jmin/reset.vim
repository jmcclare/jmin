" Name: reset Colorscheme
" Author: jmcclare (on Github)
" License: OSI approved MIT license
" Description: Clears all highlighting as best as possible and re applies
" default highlight group styles and links.
"
" This unsets the color scheme and leaves you with the default colours.
"
" The default links it applies were captured once after starting Neovim with
" no color scheme set and opening a help topic to cause all plugin syntax
" groups to be created. This works quite well, but a better solution is to
" somehow do this dynamically on Neovim start after syntax highlighting is
" enabled (see `h: Syntax` for the Syntax autocommand) and before any color
" schemes are applied.


set fillchars=
let g:colors_name = ""



" https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "guisp") ? a:style.guisp    : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
    \ "term="    (has_key(a:style, "term")  ? a:style.term     : "NONE")
endfunction


" Takes only a highlight group name and sets all attributes to NONE, ie. sets
" them to match the normal highlight group.
function! s:noh(group)
    call s:h(a:group, {})
endfunction


function! s:basich(group)
    call s:h(a:group, {"fg": {"gui": "#000000", "cterm": "0"}, "bg": {"gui": "#ffffff", "cterm": "15"}})
endfunction



" Clear everything.
"
" You could accomplish the same thing with either `s:noh("GroupName")` or
" `highlight GroupName NONE`.

highlight clear SpecialKey
highlight clear EndOfBuffer
highlight clear TermCursor
highlight clear TermCursorNC
highlight clear NonText
highlight clear Directory
highlight clear ErrorMsg
highlight clear IncSearch
highlight clear Search
highlight clear MoreMsg
highlight clear ModeMsg
highlight clear LineNr
highlight clear CursorLineNr
highlight clear Question
highlight clear StatusLine
highlight clear StatusLineNC
highlight clear VertSplit
highlight clear Title
highlight clear Visual
highlight clear VisualNC
highlight clear WarningMsg
highlight clear WildMenu
highlight clear Folded
highlight clear FoldColumn
highlight clear DiffAdd
highlight clear DiffChange
highlight clear DiffDelete
highlight clear DiffText
highlight clear SignColumn
highlight clear Conceal
highlight clear SpellBad
highlight clear SpellCap
highlight clear SpellRare
highlight clear SpellLocal
highlight clear Pmenu
highlight clear PmenuSel
highlight clear PmenuSbar
highlight clear PmenuThumb
highlight clear TabLine
highlight clear TabLineSel
highlight clear TabLineFill
highlight clear CursorColumn
highlight clear CursorLine
highlight clear ColorColumn
highlight clear QuickFixLine
highlight clear Whitespace
highlight clear NormalNC
highlight clear MsgSeparator
highlight clear Cursor
highlight clear lCursor
highlight clear Substitute
highlight clear MatchParen
highlight clear Normal
highlight clear NvimInternalError
highlight clear NvimAssignment
highlight clear Operator
highlight clear NvimPlainAssignment
highlight clear NvimAugmentedAssignment
highlight clear NvimAssignmentWithAddition
highlight clear NvimAssignmentWithSubtraction
highlight clear NvimAssignmentWithConcatenation
highlight clear NvimOperator
highlight clear NvimUnaryOperator
highlight clear NvimUnaryPlus
highlight clear NvimUnaryMinus
highlight clear NvimNot
highlight clear NvimBinaryOperator
highlight clear NvimComparison
highlight clear NvimComparisonModifier
highlight clear NvimBinaryPlus
highlight clear NvimBinaryMinus
highlight clear NvimConcat
highlight clear NvimConcatOrSubscript
highlight clear NvimOr
highlight clear NvimAnd
highlight clear NvimMultiplication
highlight clear NvimDivision
highlight clear NvimMod
highlight clear NvimTernary
highlight clear NvimTernaryColon
highlight clear NvimParenthesis
highlight clear Delimiter
highlight clear NvimLambda
highlight clear NvimNestingParenthesis
highlight clear NvimCallingParenthesis
highlight clear NvimSubscript
highlight clear NvimSubscriptBracket
highlight clear NvimSubscriptColon
highlight clear NvimCurly
highlight clear NvimContainer
highlight clear NvimDict
highlight clear NvimList
highlight clear NvimIdentifier
highlight clear Identifier
highlight clear NvimIdentifierScope
highlight clear NvimIdentifierScopeDelimiter
highlight clear NvimIdentifierName
highlight clear NvimIdentifierKey
highlight clear NvimColon
highlight clear NvimComma
highlight clear NvimArrow
highlight clear NvimRegister
highlight clear SpecialChar
highlight clear NvimNumber
highlight clear Number
highlight clear NvimFloat
highlight clear NvimNumberPrefix
highlight clear Type
highlight clear NvimOptionSigil
highlight clear NvimOptionName
highlight clear NvimOptionScope
highlight clear NvimOptionScopeDelimiter
highlight clear NvimEnvironmentSigil
highlight clear NvimEnvironmentName
highlight clear NvimString
highlight clear String
highlight clear NvimStringBody
highlight clear NvimStringQuote
highlight clear NvimStringSpecial
highlight clear NvimSingleQuote
highlight clear NvimSingleQuotedBody
highlight clear NvimSingleQuotedQuote
highlight clear NvimDoubleQuote
highlight clear NvimDoubleQuotedBody
highlight clear NvimDoubleQuotedEscape
highlight clear NvimFigureBrace
highlight clear NvimSingleQuotedUnknownEscape
highlight clear NvimSpacing
highlight clear NvimInvalidSingleQuotedUnknownEscape
highlight clear NvimInvalid
highlight clear Error
highlight clear NvimInvalidAssignment
highlight clear NvimInvalidPlainAssignment
highlight clear NvimInvalidAugmentedAssignment
highlight clear NvimInvalidAssignmentWithAddition
highlight clear NvimInvalidAssignmentWithSubtraction
highlight clear NvimInvalidAssignmentWithConcatenation
highlight clear NvimInvalidOperator
highlight clear NvimInvalidUnaryOperator
highlight clear NvimInvalidUnaryPlus
highlight clear NvimInvalidUnaryMinus
highlight clear NvimInvalidNot
highlight clear NvimInvalidBinaryOperator
highlight clear NvimInvalidComparison
highlight clear NvimInvalidComparisonModifier
highlight clear NvimInvalidBinaryPlus
highlight clear NvimInvalidBinaryMinus
highlight clear NvimInvalidConcat
highlight clear NvimInvalidConcatOrSubscript
highlight clear NvimInvalidOr
highlight clear NvimInvalidAnd
highlight clear NvimInvalidMultiplication
highlight clear NvimInvalidDivision
highlight clear NvimInvalidMod
highlight clear NvimInvalidTernary
highlight clear NvimInvalidTernaryColon
highlight clear NvimInvalidDelimiter
highlight clear NvimInvalidParenthesis
highlight clear NvimInvalidLambda
highlight clear NvimInvalidNestingParenthesis
highlight clear NvimInvalidCallingParenthesis
highlight clear NvimInvalidSubscript
highlight clear NvimInvalidSubscriptBracket
highlight clear NvimInvalidSubscriptColon
highlight clear NvimInvalidCurly
highlight clear NvimInvalidContainer
highlight clear NvimInvalidDict
highlight clear NvimInvalidList
highlight clear NvimInvalidValue
highlight clear NvimInvalidIdentifier
highlight clear NvimInvalidIdentifierScope
highlight clear NvimInvalidIdentifierScopeDelimiter
highlight clear NvimInvalidIdentifierName
highlight clear NvimInvalidIdentifierKey
highlight clear NvimInvalidColon
highlight clear NvimInvalidComma
highlight clear NvimInvalidArrow
highlight clear NvimInvalidRegister
highlight clear NvimInvalidNumber
highlight clear NvimInvalidFloat
highlight clear NvimInvalidNumberPrefix
highlight clear NvimInvalidOptionSigil
highlight clear NvimInvalidOptionName
highlight clear NvimInvalidOptionScope
highlight clear NvimInvalidOptionScopeDelimiter
highlight clear NvimInvalidEnvironmentSigil
highlight clear NvimInvalidEnvironmentName
highlight clear NvimInvalidString
highlight clear NvimInvalidStringBody
highlight clear NvimInvalidStringQuote
highlight clear NvimInvalidStringSpecial
highlight clear NvimInvalidSingleQuote
highlight clear NvimInvalidSingleQuotedBody
highlight clear NvimInvalidSingleQuotedQuote
highlight clear NvimInvalidDoubleQuote
highlight clear NvimInvalidDoubleQuotedBody
highlight clear NvimInvalidDoubleQuotedEscape
highlight clear NvimInvalidDoubleQuotedUnknownEscape
highlight clear NvimInvalidFigureBrace
highlight clear NvimInvalidSpacing
highlight clear NvimDoubleQuotedUnknownEscape
highlight clear Comment
highlight clear Constant
highlight clear Special
highlight clear Statement
highlight clear PreProc
highlight clear Underlined
highlight clear Ignore
highlight clear Todo
highlight clear Character
highlight clear Boolean
highlight clear Float
highlight clear Function
highlight clear Conditional
highlight clear Repeat
highlight clear Label
highlight clear Keyword
highlight clear Exception
highlight clear Include
highlight clear Define
highlight clear Macro
highlight clear PreCondit
highlight clear StorageClass
highlight clear Structure
highlight clear Typedef
highlight clear Tag
highlight clear SpecialComment
highlight clear Debug
highlight clear GrepperPrompt
highlight clear IndentGuidesOdd
highlight clear IndentGuidesEven
highlight clear SyntasticError
highlight clear SyntasticWarning
highlight clear SyntasticStyleError
highlight clear SyntasticStyleWarning
highlight clear GitGutterAddDefault
highlight clear GitGutterChangeDefault
highlight clear GitGutterDeleteDefault
highlight clear GitGutterChangeDeleteDefault
highlight clear GitGutterAddInvisible
highlight clear GitGutterChangeInvisible
highlight clear GitGutterDeleteInvisible
highlight clear GitGutterChangeDeleteInvisible
highlight clear GitGutterAdd
highlight clear GitGutterChange
highlight clear GitGutterDelete
highlight clear GitGutterChangeDelete
highlight clear GitGutterAddLine
highlight clear GitGutterChangeLine
highlight clear GitGutterDeleteLine
highlight clear GitGutterChangeDeleteLine
highlight clear htmlTagName
highlight clear htmlArg
highlight clear htmlError
highlight clear htmlSpecialChar
highlight clear javaScriptExpression
highlight clear htmlString
highlight clear htmlValue
highlight clear htmlTagN
highlight clear htmlTagError
highlight clear htmlEndTag
highlight clear htmlEvent
highlight clear htmlCssDefinition
highlight clear htmlTag
highlight clear htmlSpecialTagName
highlight clear htmlCommentPart
highlight clear htmlCommentError
highlight clear htmlComment
highlight clear htmlPreStmt
highlight clear htmlPreError
highlight clear htmlPreAttr
highlight clear htmlPreProc
highlight clear htmlPreProcAttrError
highlight clear htmlPreProcAttrName
highlight clear htmlLink
highlight clear javaScript
highlight clear htmlStrike
highlight clear htmlBoldUnderline
highlight clear htmlBoldItalic
highlight clear htmlBold
highlight clear htmlBoldUnderlineItalic
highlight clear htmlBoldItalicUnderline
highlight clear htmlUnderlineBold
highlight clear htmlUnderlineItalic
highlight clear htmlUnderline
highlight clear htmlUnderlineBoldItalic
highlight clear htmlUnderlineItalicBold
highlight clear htmlItalicBold
highlight clear htmlItalicUnderline
highlight clear htmlItalic
highlight clear htmlItalicBoldUnderline
highlight clear htmlItalicUnderlineBold
highlight clear htmlLeadingSpace
highlight clear htmlH1
highlight clear htmlH2
highlight clear htmlH3
highlight clear htmlH4
highlight clear htmlH5
highlight clear htmlH6
highlight clear htmlTitle
highlight clear cssStyle
highlight clear htmlHead
highlight clear jsNoise
highlight clear jsObjectProp
highlight clear jsFuncCall
highlight clear jsPrototype
highlight clear jsTaggedTemplate
highlight clear jsDot
highlight clear jsParensError
highlight clear jsStorageClass
highlight clear jsDestructuringBlock
highlight clear jsDestructuringArray
highlight clear jsVariableDef
highlight clear jsFlowDefinition
highlight clear jsOperatorKeyword
highlight clear jsOperator
highlight clear jsBooleanTrue
highlight clear jsBooleanFalse
highlight clear jsImport
highlight clear jsModuleAsterisk
highlight clear jsModuleKeyword
highlight clear jsModuleGroup
highlight clear jsFlowImportType
highlight clear jsExport
highlight clear jsExportDefault
highlight clear jsFlowTypeStatement
highlight clear jsModuleAs
highlight clear jsFrom
highlight clear jsModuleComma
highlight clear jsExportDefaultGroup
highlight clear jsString
highlight clear jsFlowTypeKeyword
highlight clear jsSpecial
highlight clear jsTemplateExpression
highlight clear jsTemplateString
highlight clear jsNumber
highlight clear jsFloat
highlight clear jsTemplateBraces
highlight clear jsRegexpCharClass
highlight clear jsRegexpBoundary
highlight clear jsRegexpBackRef
highlight clear jsRegexpQuantifier
highlight clear jsRegexpOr
highlight clear jsRegexpMod
highlight clear jsRegexpGroup
highlight clear jsRegexpString
highlight clear jsObjectSeparator
highlight clear jsObjectShorthandProp
highlight clear jsFunctionKey
highlight clear jsObjectValue
highlight clear jsObjectKey
highlight clear jsObjectKeyString
highlight clear jsBrackets
highlight clear jsFuncArgs
highlight clear jsObjectKeyComputed
highlight clear jsObjectColon
highlight clear jsObjectFuncName
highlight clear jsObjectMethodType
highlight clear jsObjectStringKey
highlight clear jsNull
highlight clear jsReturn
highlight clear jsUndefined
highlight clear jsNan
highlight clear jsThis
highlight clear jsSuper
highlight clear jsBlock
highlight clear jsBlockLabel
highlight clear jsBlockLabelKey
highlight clear jsStatement
highlight clear jsConditional
highlight clear jsParenIfElse
highlight clear jsCommentIfElse
highlight clear jsIfElseBlock
highlight clear jsParenSwitch
highlight clear jsRepeat
highlight clear jsParenRepeat
highlight clear jsForAwait
highlight clear jsDo
highlight clear jsRepeatBlock
highlight clear jsLabel
highlight clear jsSwitchColon
highlight clear jsSwitchCase
highlight clear jsTry
highlight clear jsTryCatchBlock
highlight clear jsFinally
highlight clear jsFinallyBlock
highlight clear jsCatch
highlight clear jsParenCatch
highlight clear jsException
highlight clear jsAsyncKeyword
highlight clear jsSwitchBlock
highlight clear jsGlobalObjects
highlight clear jsGlobalNodeObjects
highlight clear jsExceptions
highlight clear jsBuiltins
highlight clear jsFutureKeys
highlight clear jsDomErrNo
highlight clear jsDomNodeConsts
highlight clear jsHtmlEvents
highlight clear jsSpreadExpression
highlight clear jsBracket
highlight clear jsParens
highlight clear jsParen
highlight clear jsParensDecorator
highlight clear jsParenDecorator
highlight clear jsParensIfElse
highlight clear jsParensRepeat
highlight clear jsCommentRepeat
highlight clear jsParensSwitch
highlight clear jsParensCatch
highlight clear jsFuncParens
highlight clear jsFuncArgCommas
highlight clear jsComment
highlight clear jsFuncArgExpression
highlight clear jsRestExpression
highlight clear jsFlowArgumentDef
highlight clear jsCommentFunction
highlight clear jsFuncBlock
highlight clear jsFlowReturn
highlight clear jsClassBraces
highlight clear jsClassFuncName
highlight clear jsClassMethodType
highlight clear jsArrowFunction
highlight clear jsArrowFuncArgs
highlight clear jsGenerator
highlight clear jsDecorator
highlight clear jsClassProperty
highlight clear jsClassPropertyComputed
highlight clear jsClassStringKey
highlight clear jsClassBlock
highlight clear jsFuncBraces
highlight clear jsIfElseBraces
highlight clear jsTryCatchBraces
highlight clear jsFinallyBraces
highlight clear jsSwitchBraces
highlight clear jsRepeatBraces
highlight clear jsDestructuringBraces
highlight clear jsDestructuringProperty
highlight clear jsDestructuringAssignment
highlight clear jsDestructuringNoise
highlight clear jsDestructuringPropertyComputed
highlight clear jsDestructuringPropertyValue
highlight clear jsObjectBraces
highlight clear jsObject
highlight clear jsBraces
highlight clear jsModuleBraces
highlight clear jsSpreadOperator
highlight clear jsRestOperator
highlight clear jsTernaryIfOperator
highlight clear jsTernaryIf
highlight clear jsFuncName
highlight clear jsFlowFunctionGroup
highlight clear jsFuncArgOperator
highlight clear jsArguments
highlight clear jsFunction
highlight clear jsClassKeyword
highlight clear jsExtendsKeyword
highlight clear jsClassNoise
highlight clear jsFlowClassFunctionGroup
highlight clear jsFlowClassGroup
highlight clear jsCommentClass
highlight clear jsClassDefinition
highlight clear jsClassValue
highlight clear jsFlowClassDef
highlight clear jsDestructuringValue
highlight clear jsDestructuringValueAssignment
highlight clear jsCommentTodo
highlight clear jsEnvComment
highlight clear jsDecoratorFunction
highlight clear jsCharacter
highlight clear jsBranch
highlight clear jsError
highlight clear jsOf
highlight clear Noise
highlight clear jsDomElemAttrs
highlight clear jsDomElemFuncs
highlight clear jsHtmlElemAttrs
highlight clear jsHtmlElemFuncs
highlight clear jsCssStyles
highlight clear htmlCssStyleComment
highlight clear htmlScriptTag
highlight clear htmlEventSQ
highlight clear htmlEventDQ
highlight clear vbConditional
highlight clear vbOperator
highlight clear vbBoolean
highlight clear vbConst
highlight clear vbRepeat
highlight clear vbEvents
highlight clear vbFunction
highlight clear vbMethods
highlight clear vbStatement
highlight clear vbKeyword
highlight clear vbTodo
highlight clear vbTypes
highlight clear vbDefine
highlight clear vbNumber
highlight clear vbFloat
highlight clear vbString
highlight clear vbComment
highlight clear vbLineNumber
highlight clear vbTypeSpecifier
highlight clear vbError
highlight clear vbIdentifier
highlight clear cssTagName
highlight clear cssSelectorOp
highlight clear cssSelectorOp2
highlight clear cssUnicodeEscape
highlight clear cssStringQ
highlight clear cssStringQQ
highlight clear cssAttributeSelector
highlight clear cssClassNameDot
highlight clear cssClassName
highlight clear cssIdentifier
highlight clear cssUnitDecorators
highlight clear cssValueInteger
highlight clear cssValueNumber
highlight clear cssValueLength
highlight clear cssValueAngle
highlight clear cssValueTime
highlight clear cssValueFrequency
highlight clear cssIncludeKeyword
highlight clear cssMediaProp
highlight clear cssMediaKeyword
highlight clear cssMediaAttr
highlight clear cssVendor
highlight clear cssMediaType
highlight clear cssMediaComma
highlight clear cssComment
highlight clear cssMediaBlock
highlight clear cssInclude
highlight clear cssBraces
highlight clear cssColor
highlight clear cssURL
highlight clear cssImportant
highlight clear cssError
highlight clear cssFunction
highlight clear cssDefinition
highlight clear cssPseudoClass
highlight clear cssPagePseudo
highlight clear cssPageWrap
highlight clear cssPage
highlight clear cssPageMargin
highlight clear cssPageProp
highlight clear cssAttrRegion
highlight clear cssHacks
highlight clear cssKeyFrameWrap
highlight clear cssKeyFrame
highlight clear cssKeyFrameSelector
highlight clear cssFontDescriptorBlock
highlight clear cssFontDescriptor
highlight clear cssCommonAttr
highlight clear cssFontDescriptorProp
highlight clear cssFontDescriptorFunction
highlight clear cssFontDescriptorAttr
highlight clear cssNoise
highlight clear cssFunctionName
highlight clear cssFunctionComma
highlight clear cssGradientAttr
highlight clear cssAnimationProp
highlight clear cssAnimationAttr
highlight clear cssBackgroundProp
highlight clear cssBackgroundAttr
highlight clear cssBorderProp
highlight clear cssBorderAttr
highlight clear cssBoxProp
highlight clear cssBoxAttr
highlight clear cssColorProp
highlight clear cssDimensionProp
highlight clear cssFlexibleBoxProp
highlight clear cssFlexibleBoxAttr
highlight clear cssFontProp
highlight clear cssFontAttr
highlight clear cssMultiColumnProp
highlight clear cssMultiColumnAttr
highlight clear cssGeneratedContentProp
highlight clear cssGeneratedContentAttr
highlight clear cssGridProp
highlight clear cssHyerlinkProp
highlight clear cssListProp
highlight clear cssListAttr
highlight clear cssPositioningProp
highlight clear cssPositioningAttr
highlight clear cssPrintAttr
highlight clear cssTableProp
highlight clear cssTableAttr
highlight clear cssTextProp
highlight clear cssTextAttr
highlight clear cssTransformProp
highlight clear cssTransitionProp
highlight clear cssTransitionAttr
highlight clear cssUIProp
highlight clear cssUIAttr
highlight clear cssIEUIAttr
highlight clear cssIEUIProp
highlight clear cssAuralProp
highlight clear cssAuralAttr
highlight clear cssMobileTextProp
highlight clear cssBraceError
highlight clear cssAttrComma
highlight clear cssPseudoClassId
highlight clear cssPseudoClassFn
highlight clear cssSpecialCharQQ
highlight clear cssSpecialCharQ
highlight clear cssDeprecated
highlight clear cssProp
highlight clear cssContentForPagedMediaProp
highlight clear cssLineboxProp
highlight clear cssMarqueeProp
highlight clear cssPagedMediaProp
highlight clear cssPrintProp
highlight clear cssRubyProp
highlight clear cssSpeechProp
highlight clear cssRenderProp
highlight clear cssAttr
highlight clear cssContentForPagedMediaAttr
highlight clear cssDimensionAttr
highlight clear cssGridAttr
highlight clear cssHyerlinkAttr
highlight clear cssLineboxAttr
highlight clear cssMarginAttr
highlight clear cssMarqueeAttr
highlight clear cssPaddingAttr
highlight clear cssPagedMediaAttr
highlight clear cssRubyAttr
highlight clear cssSpeechAttr
highlight clear cssTransformAttr
highlight clear cssRenderAttr
highlight clear cssPseudoClassLang
highlight clear atKeyword
highlight clear cssMedia
highlight clear cssUnicodeRange
highlight clear cssLength
highlight clear cssString
highlight clear htmlStyleArg
highlight clear htmlStatement
highlight clear None
highlight clear htmlSpecial
highlight clear coffeeStatement
highlight clear coffeeRepeat
highlight clear coffeeConditional
highlight clear coffeeException
highlight clear coffeeKeyword
highlight clear coffeeOperator
highlight clear coffeeExtendedOp
highlight clear coffeeSpecialOp
highlight clear coffeeBoolean
highlight clear coffeeGlobal
highlight clear coffeeSpecialVar
highlight clear coffeeSpecialIdent
highlight clear coffeeObject
highlight clear coffeeConstant
highlight clear coffeeEscape
highlight clear coffeeInterp
highlight clear coffeeString
highlight clear coffeeNumber
highlight clear coffeeFloat
highlight clear coffeeReservedError
highlight clear coffeeObjAssign
highlight clear coffeeTodo
highlight clear coffeeComment
highlight clear coffeeBlockComment
highlight clear coffeeHeregexComment
highlight clear coffeeEmbedDelim
highlight clear coffeeEmbed
highlight clear coffeeInterpDelim
highlight clear coffeeRegexCharSet
highlight clear coffeeRegex
highlight clear coffeeHeregexCharSet
highlight clear coffeeHeregex
highlight clear coffeeHeredoc
highlight clear coffeeSpaceError
highlight clear coffeeSemicolonError
highlight clear coffeeDotAccess
highlight clear coffeeProtoAccess
highlight clear coffeeCurly
highlight clear coffeeCurlies
highlight clear coffeeBracket
highlight clear coffeeBrackets
highlight clear coffeeParen
highlight clear coffeeParens
highlight clear coffeeBlock
highlight clear coffeeScript
highlight clear pythonStatement
highlight clear pythonFunction
highlight clear pythonConditional
highlight clear pythonRepeat
highlight clear pythonOperator
highlight clear pythonException
highlight clear pythonInclude
highlight clear pythonAsync
highlight clear pythonDecorator
highlight clear pythonDecoratorName
highlight clear pythonDoctestValue
highlight clear pythonMatrixMultiply
highlight clear pythonTodo
highlight clear pythonComment
highlight clear pythonQuotes
highlight clear pythonEscape
highlight clear pythonString
highlight clear pythonTripleQuotes
highlight clear pythonSpaceError
highlight clear pythonDoctest
highlight clear pythonRawString
highlight clear pythonNumber
highlight clear pythonBuiltin
highlight clear pythonAttribute
highlight clear pythonExceptions
highlight clear pythonSync
highlight clear jediIgnore
highlight clear jediFatSymbol
highlight clear jediFat
highlight clear jediSpace
highlight clear jediFunction
highlight clear jediUsage
highlight clear shDoError
highlight clear shIfError
highlight clear shInError
highlight clear shCaseError
highlight clear shEsacError
highlight clear shCurlyError
highlight clear shParenError
highlight clear shTestError
highlight clear shOK
highlight clear shArithmetic
highlight clear shCaseEsac
highlight clear shComment
highlight clear shDeref
highlight clear shDo
highlight clear shDerefSimple
highlight clear shEcho
highlight clear shEscape
highlight clear shNumber
highlight clear shOperator
highlight clear shPosnParm
highlight clear shExSingleQuote
highlight clear shExDoubleQuote
highlight clear shHereString
highlight clear shRedir
highlight clear shSingleQuote
highlight clear shDoubleQuote
highlight clear shStatement
highlight clear shVariable
highlight clear shAlias
highlight clear shTest
highlight clear shCtrlSeq
highlight clear shSpecial
highlight clear shParen
highlight clear bashSpecialVariables
highlight clear bashStatement
highlight clear shIf
highlight clear shFor
highlight clear shCaseStart
highlight clear shCase
highlight clear shCaseBar
highlight clear shCaseIn
highlight clear shCaseCommandSub
highlight clear shCaseExSingleQuote
highlight clear shCaseSingleQuote
highlight clear shCaseDoubleQuote
highlight clear shStringSpecial
highlight clear shCaseRange
highlight clear shColon
highlight clear shCommandSub
highlight clear shExpr
highlight clear shHereDoc
highlight clear shSetList
highlight clear shSource
highlight clear shCmdParenRegion
highlight clear shOption
highlight clear shSubSh
highlight clear shComma
highlight clear shDerefSpecial
highlight clear shDerefVar
highlight clear shDerefWordError
highlight clear shDerefPSR
highlight clear shDerefPPS
highlight clear shDerefOff
highlight clear shDerefOp
highlight clear shDerefVarArray
highlight clear shDerefOpError
highlight clear shEchoQuote
highlight clear shCharClass
highlight clear shDblBrace
highlight clear shBeginHere
highlight clear shHerePayload
highlight clear shWrapLineOperator
highlight clear shSetOption
highlight clear shAtExpr
highlight clear shDblParen
highlight clear shFunctionKey
highlight clear shFunctionOne
highlight clear shFunctionTwo
highlight clear shConditional
highlight clear shForPP
highlight clear shSet
highlight clear shTestOpr
highlight clear shTouch
highlight clear shSpecialNoZS
highlight clear shEchoDelim
highlight clear shQuickComment
highlight clear shSpecialVar
highlight clear shEmbeddedEcho
highlight clear shTouchCmd
highlight clear shPattern
highlight clear shExprRegion
highlight clear shSpecialNxt
highlight clear shSubShRegion
highlight clear shRange
highlight clear shNoQuote
highlight clear shString
highlight clear shAstQuote
highlight clear shTestDoubleQuote
highlight clear shTestSingleQuote
highlight clear shTestPattern
highlight clear shLoop
highlight clear shCurlyIn
highlight clear shRepeat
highlight clear shSnglCase
highlight clear shQuote
highlight clear shCmdSubRegion
highlight clear shArithRegion
highlight clear shSkipInitWS
highlight clear shBkslshSnglQuote
highlight clear shBkslshDblQuote
highlight clear shTodo
highlight clear shHereDoc01
highlight clear shHereDoc02
highlight clear shHereDoc03
highlight clear shHereDoc04
highlight clear shHereDoc05
highlight clear shHereDoc06
highlight clear shHereDoc07
highlight clear shHereDoc08
highlight clear shHereDoc09
highlight clear shHereDoc10
highlight clear shHereDoc11
highlight clear shHereDoc12
highlight clear shHereDoc13
highlight clear shHereDoc14
highlight clear shHereDoc15
highlight clear shVarAssign
highlight clear shSetListDelim
highlight clear shFunction
highlight clear shFunctionStart
highlight clear shFunctionThree
highlight clear shFunctionFour
highlight clear shDerefPattern
highlight clear shDerefString
highlight clear shDerefEscape
highlight clear shDerefDelim
highlight clear shDerefLen
highlight clear shDerefPPSleft
highlight clear shDerefPPSright
highlight clear shDerefPSRleft
highlight clear shDerefPSRright
highlight clear shCondError
highlight clear shCaseEsacSync
highlight clear shDoSync
highlight clear shForSync
highlight clear shIfSync
highlight clear shUntilSync
highlight clear shWhileSync
highlight clear shShellVariables
highlight clear shDerefPOL
highlight clear shFunctionName
highlight clear puppetDefType
highlight clear puppetDefName
highlight clear puppetDefArguments
highlight clear puppetNodeRe
highlight clear puppetDefine
highlight clear puppetType
highlight clear puppetArgument
highlight clear puppetString
highlight clear puppetComment
highlight clear puppetMultilineComment
highlight clear puppetTypeName
highlight clear puppetTypeDefault
highlight clear puppetInstance
highlight clear puppetTypeRArrow
highlight clear puppetParamName
highlight clear puppetParam
highlight clear puppetParamRArrow
highlight clear puppetVariable
highlight clear puppetParen
highlight clear puppetBrace
highlight clear puppetBrack
highlight clear puppetParamString
highlight clear puppetParamKeyword
highlight clear puppetParamSpecial
highlight clear puppetParamDigits
highlight clear puppetFunction
highlight clear puppetNotVariable
highlight clear puppetKeyword
highlight clear puppetControl
highlight clear puppetSpecial
highlight clear puppetClass
highlight clear puppetRegexParen
highlight clear puppetRegexBrace
highlight clear puppetRegexOrpuppetRegexBrack
highlight clear puppetRegexComment
highlight clear puppetRegex
highlight clear puppetRegexSpecChar
highlight clear puppetRegexSubName
highlight clear puppetRegexBrack
highlight clear puppetRegexOr
highlight clear puppetRegexSpecialChar
highlight clear puppetTodo
highlight clear puppetRegexAngBrack
highlight clear puppetRegexTick
highlight clear puppetTypeBrack
highlight clear puppetTypeBrace
highlight clear puppetDelimiter
highlight clear phpRegion
highlight clear phpRegionAsp
highlight clear phpRegionSc
highlight clear sqlSpecial
highlight clear sqlKeyword
highlight clear sqlOperator
highlight clear sqlStatement
highlight clear sqlType
highlight clear Quote
highlight clear sqlString
highlight clear sqlNumber
highlight clear sqlTodo
highlight clear sqlComment
highlight clear sqlFold
highlight clear sqlFunction
highlight clear phpEnvVar
highlight clear phpIntVar
highlight clear phpCoreConstant
highlight clear phpConstant
highlight clear phpFunctions
highlight clear phpMethods
highlight clear phpConditional
highlight clear phpRepeat
highlight clear phpLabel
highlight clear phpStatement
highlight clear phpKeyword
highlight clear phpType
highlight clear phpStructure
highlight clear phpOperator
highlight clear phpRelation
highlight clear phpMemberSelector
highlight clear phpVarSelector
highlight clear phpIdentifier
highlight clear phpParent
highlight clear phpIdentifierSimply
highlight clear phpIdentifierComplexP
highlight clear phpIdentifierComplex
highlight clear phpBrackets
highlight clear phpInterpSimpleError
highlight clear phpInterpBogusDollarCurley
highlight clear phpinterpSimpleBracketsInner
highlight clear phpInterpSimpleBrackets
highlight clear phpInterpSimple
highlight clear phpInterpVarname
highlight clear phpInterpMethodName
highlight clear phpInterpSimpleCurly
highlight clear phpInterpDollarCurley1Helper
highlight clear phpInterpDollarCurly1
highlight clear phpInterpDollarCurley2Helper
highlight clear phpInterpDollarCurly2
highlight clear phpInterpComplex
highlight clear phpMethodsVar
highlight clear phpInclude
highlight clear phpDefine
highlight clear phpBoolean
highlight clear phpNumber
highlight clear phpFloat
highlight clear phpBackslashSequences
highlight clear phpOctalError
highlight clear phpBackslashDoubleQuote
highlight clear phpBackslashSingleQuote
highlight clear phpTodo
highlight clear phpComment
highlight clear phpStringDouble
highlight clear phpBacktick
highlight clear phpStringSingle
highlight clear phpHereDoc
highlight clear phpNowDoc
highlight clear phpException
highlight clear phpParentError
highlight clear phpStorageClass
highlight clear phpFoldFunction
highlight clear phpFoldClass
highlight clear phpFoldInterface
highlight clear phpFoldTry
highlight clear phpFoldCatch
highlight clear phpSCKeyword
highlight clear phpFoldHtmlInside
highlight clear phpFCKeyword
highlight clear phpSpecialFunction
highlight clear phpClasses
highlight clear phpInterfaces
highlight clear phpAssignByRef
highlight clear phpComparison
highlight clear phpRegionSync
highlight clear phpDocCustomTags
highlight clear phpDocTags
highlight clear phpDocTodo
highlight clear phpBaselib
highlight clear phpIdentifierConst
highlight clear cssSelector
highlight clear cssDefineBlock
highlight clear cssCommonVal
highlight clear cssTodo
highlight clear cssBackgroundVal
highlight clear cssFuncVal
highlight clear cssVisualProp
highlight clear cssColorVal
highlight clear cssBorderVal
highlight clear cssFontVal
highlight clear cssTextVal
highlight clear cssListVal
highlight clear cssVisualVal
highlight clear cssCommonProp
highlight clear cssSpecialProp
highlight clear cssRuleProp
highlight clear cssPseudo
highlight clear cssAdvancedProp
highlight clear cssAdvancedVal
highlight clear stylusVariable
highlight clear stylusCssAttribute
highlight clear stylusVariableAssignment
highlight clear stylusProperty
highlight clear stylusFunction
highlight clear stylusControl
highlight clear stylusUserFunction
highlight clear stylusInterpolation
highlight clear stylusComment
highlight clear stylusImportList
highlight clear stylusImport
highlight clear stylusAmpersand
highlight clear stylusClass
highlight clear stylusClassChar
highlight clear stylusEscape
highlight clear stylusId
highlight clear stylusIdChar
highlight clear cssPagingProp
highlight clear sassEndOfLineComment
highlight clear scssComment
highlight clear sassDefault
highlight clear sassDefinition
highlight clear sassCssAttribute
highlight clear sassProperty
highlight clear sassVariable
highlight clear sassFunction
highlight clear sassInterpolation
highlight clear sassVariableAssignment
highlight clear sassInterpolationDelimiter
highlight clear sassMixinName
highlight clear sassMixin
highlight clear sassMixing
highlight clear sassExtend
highlight clear sassPlaceholder
highlight clear sassFunctionName
highlight clear sassFunctionDecl
highlight clear sassReturn
highlight clear sassEscape
highlight clear sassId
highlight clear sassIdChar
highlight clear sassClass
highlight clear sassClassChar
highlight clear sassAmpersand
highlight clear sassMedia
highlight clear sassMediaOperators
highlight clear sassMediaQuery
highlight clear sassCharset
highlight clear sassInclude
highlight clear sassDebug
highlight clear sassDebugLine
highlight clear sassWarn
highlight clear sassWarnLine
highlight clear sassControl
highlight clear sassFor
highlight clear sassControlLine
highlight clear sassTodo
highlight clear sassComment
highlight clear sassCssComment
highlight clear javascriptParenthesisBlock
highlight clear jadeJavascriptOutputChar
highlight clear jadeJavascript
highlight clear jadeJavascriptChar
highlight clear jadeBegin
highlight clear jadeComment
highlight clear jadeHtmlComment
highlight clear jadeTag
highlight clear jadeClassChar
highlight clear jadeIdChar
highlight clear jadePlainChar
highlight clear jadeAttributes
highlight clear jadeBlockExpansionChar
highlight clear jadeAttributesDelimiter
highlight clear jadeHtmlArg
highlight clear jadeAttributeString
highlight clear jadeClass
highlight clear jadeId
highlight clear jadeDocType
highlight clear jadeInterpolationDelimiter
highlight clear jadeInterpolation
highlight clear jadeInterpolationEscape
highlight clear jadeFilter
highlight clear jadeJavascriptFilter
highlight clear jadeCoffeescriptFilter
highlight clear jadePlainFilter
highlight clear jadeError
highlight clear jadeJavascriptBlock
highlight clear jadeCssBlock
highlight clear jsonNoise
highlight clear jsonString
highlight clear jsonStringMatch
highlight clear jsonQuote
highlight clear jsonEscape
highlight clear jsonStringSQError
highlight clear jsonKeyword
highlight clear jsonKeywordMatch
highlight clear jsonNumber
highlight clear jsonNoQuotesError
highlight clear jsonTripleQuotesError
highlight clear jsonNumError
highlight clear jsonCommentError
highlight clear jsonSemicolonError
highlight clear jsonTrailingCommaError
highlight clear jsonMissingCommaError
highlight clear jsonPadding
highlight clear jsonBoolean
highlight clear jsonNull
highlight clear jsonBraces
highlight clear jsonFold
highlight clear jsonTest
highlight clear cStatement
highlight clear cLabel
highlight clear cConditional
highlight clear cRepeat
highlight clear cTodo
highlight clear cBadContinuation
highlight clear cSpecial
highlight clear cFormat
highlight clear cString
highlight clear cCppString
highlight clear cSpaceError
highlight clear cCppSkip
highlight clear cCharacter
highlight clear cSpecialError
highlight clear cSpecialCharacter
highlight clear cBadBlock
highlight clear cCurlyError
highlight clear cErrInParen
highlight clear cCppParen
highlight clear cErrInBracket
highlight clear cCppBracket
highlight clear cBlock
highlight clear cParenError
highlight clear cIncluded
highlight clear cCommentSkip
highlight clear cCommentString
highlight clear cComment2String
highlight clear cCommentStartError
highlight clear cUserLabel
highlight clear cBitField
highlight clear cOctalZero
highlight clear cNumber
highlight clear cFloat
highlight clear cOctal
highlight clear cOctalError
highlight clear cNumbersCom
highlight clear cParen
highlight clear cBracket
highlight clear cNumbers
highlight clear cCommentL
highlight clear cCommentStart
highlight clear cComment
highlight clear cCommentError
highlight clear cOperator
highlight clear cType
highlight clear cStructure
highlight clear cStorageClass
highlight clear cConstant
highlight clear cPreCondit
highlight clear cPreConditMatch
highlight clear cCppInIf
highlight clear cCppInElse
highlight clear cCppInElse2
highlight clear cCppOutIf
highlight clear cCppOutIf2
highlight clear cCppOutElse
highlight clear cCppInSkip
highlight clear cCppOutSkip
highlight clear cCppOutWrapper
highlight clear cCppInWrapper
highlight clear cPreProc
highlight clear cInclude
highlight clear cDefine
highlight clear cMulti
highlight clear cUserCont
highlight clear cError
highlight clear cCppOut
highlight clear cppStatement
highlight clear cppAccess
highlight clear cppModifier
highlight clear cppType
highlight clear cppExceptions
highlight clear cppOperator
highlight clear cppCast
highlight clear cppStorageClass
highlight clear cppStructure
highlight clear cppBoolean
highlight clear cppConstant
highlight clear cppRawStringDelimiter
highlight clear cppRawString
highlight clear cppNumber
highlight clear cppMinMax
highlight clear helpHeadline
highlight clear helpSectionDelim
highlight clear helpIgnore
highlight clear helpExample
highlight clear helpBar
highlight clear helpHyperTextJump
highlight clear helpStar
highlight clear helpHyperTextEntry
highlight clear helpBacktick
highlight clear helpNormal
highlight clear helpVim
highlight clear helpOption
highlight clear helpCommand
highlight clear helpHeader
highlight clear helpGraphic
highlight clear helpNote
highlight clear helpWarning
highlight clear helpDeprecated
highlight clear helpSpecial
highlight clear helpComment
highlight clear helpConstant
highlight clear helpString
highlight clear helpCharacter
highlight clear helpNumber
highlight clear helpBoolean
highlight clear helpFloat
highlight clear helpIdentifier
highlight clear helpFunction
highlight clear helpStatement
highlight clear helpConditional
highlight clear helpRepeat
highlight clear helpLabel
highlight clear helpOperator
highlight clear helpKeyword
highlight clear helpException
highlight clear helpPreProc
highlight clear helpInclude
highlight clear helpDefine
highlight clear helpMacro
highlight clear helpPreCondit
highlight clear helpType
highlight clear helpStorageClass
highlight clear helpStructure
highlight clear helpTypedef
highlight clear helpSpecialChar
highlight clear helpTag
highlight clear helpDelimiter
highlight clear helpSpecialComment
highlight clear helpDebug
highlight clear helpUnderlined
highlight clear helpError
highlight clear helpTodo
highlight clear helpURL
highlight clear manReference
highlight clear manSectionHeading
highlight clear manTitle
highlight clear manSubHeading
highlight clear manOptionDesc
highlight clear manUnderline
highlight clear manBold
highlight clear manItalic
highlight clear markdownValid
highlight clear markdownLineStart
highlight clear markdownH1
highlight clear markdownH2
highlight clear markdownH3
highlight clear markdownH4
highlight clear markdownH5
highlight clear markdownH6
highlight clear markdownBlockquote
highlight clear markdownListMarker
highlight clear markdownOrderedListMarker
highlight clear markdownCodeBlock
highlight clear markdownRule
highlight clear markdownLineBreak
highlight clear markdownLinkText
highlight clear markdownItalic
highlight clear markdownBold
highlight clear markdownCode
highlight clear markdownEscape
highlight clear markdownError
highlight clear markdownHeadingRule
highlight clear markdownAutomaticLink
highlight clear markdownH1Delimiter
highlight clear markdownH2Delimiter
highlight clear markdownH3Delimiter
highlight clear markdownH4Delimiter
highlight clear markdownH5Delimiter
highlight clear markdownH6Delimiter
highlight clear markdownLinkDelimiter
highlight clear markdownUrl
highlight clear markdownIdDeclaration
highlight clear markdownUrlTitle
highlight clear markdownUrlDelimiter
highlight clear markdownUrlTitleDelimiter
highlight clear markdownLinkTextDelimiter
highlight clear markdownLink
highlight clear markdownId
highlight clear markdownIdDelimiter
highlight clear markdownItalicDelimiter
highlight clear markdownBoldDelimiter
highlight clear markdownBoldItalicDelimiter
highlight clear markdownBoldItalic
highlight clear markdownCodeDelimiter
highlight clear markdownFootnote
highlight clear markdownFootnoteDefinition
highlight clear markdownHighlightpython
highlight clear markdownHighlightsh
highlight clear markdownHighlightpuppet
highlight clear markdownHighlightphp
highlight clear markdownHighlighthtml
highlight clear markdownHighlightcss
highlight clear markdownHighlightstylus
highlight clear markdownHighlightscss
highlight clear markdownHighlightsass
highlight clear markdownHighlightjade
highlight clear markdownHighlightjavascript
highlight clear markdownHighlightjson
highlight clear markdownHighlightcoffee
highlight clear markdownHighlightc
highlight clear markdownHighlightcpp
highlight clear markdownHighlightsql
highlight clear markdownHighlighthelp
highlight clear markdownHighlightman
highlight clear markdownHeadingDelimiter
highlight clear SyntasticErrorSign
highlight clear SyntasticWarningSign
highlight clear SyntasticStyleErrorSign
highlight clear SyntasticStyleWarningSign
highlight clear SyntasticStyleErrorLine
highlight clear SyntasticErrorLine
highlight clear SyntasticStyleWarningLine
highlight clear SyntasticWarningLine
highlight clear qfSeparator
highlight clear qfFileName
highlight clear qfLineNr
highlight clear qfError


" Restore Default Links
"
" As a good color scheme author you should avoid changing any of the groups on
" the left in this section. Change the attributes of the groups being linked
" to. Don’t edit any group that links to another here. Leave these default
" links intact for the next color scheme.
"
" Of course you may want to make some of these different from what they are
" linked to here. That’s why Vim needs a proper way to reset the groups before
" applying color schemes, like this reset color scheme.

highlight link EndOfBuffer NonText
highlight link QuickFixLine Search
highlight link Whitespace NonText
highlight link MsgSeparator StatusLine
highlight link Substitute Search
highlight link NvimAssignment Operator
highlight link Operator Statement
highlight link NvimPlainAssignment NvimAssignment
highlight link NvimAugmentedAssignment NvimAssignment
highlight link NvimAssignmentWithAddition NvimAugmentedAssignment
highlight link NvimAssignmentWithSubtraction NvimAugmentedAssignment
highlight link NvimAssignmentWithConcatenation NvimAugmentedAssignment
highlight link NvimOperator Operator
highlight link NvimUnaryOperator NvimOperator
highlight link NvimUnaryPlus NvimUnaryOperator
highlight link NvimUnaryMinus NvimUnaryOperator
highlight link NvimNot NvimUnaryOperator
highlight link NvimBinaryOperator NvimOperator
highlight link NvimComparison NvimBinaryOperator
highlight link NvimComparisonModifier NvimComparison
highlight link NvimBinaryPlus NvimBinaryOperator
highlight link NvimBinaryMinus NvimBinaryOperator
highlight link NvimConcat NvimBinaryOperator
highlight link NvimConcatOrSubscript NvimConcat
highlight link NvimOr NvimBinaryOperator
highlight link NvimAnd NvimBinaryOperator
highlight link NvimMultiplication NvimBinaryOperator
highlight link NvimDivision NvimBinaryOperator
highlight link NvimMod NvimBinaryOperator
highlight link NvimTernary NvimOperator
highlight link NvimTernaryColon NvimTernary
highlight link NvimParenthesis Delimiter
highlight link Delimiter Special
highlight link NvimLambda NvimParenthesis
highlight link NvimNestingParenthesis NvimParenthesis
highlight link NvimCallingParenthesis NvimParenthesis
highlight link NvimSubscript NvimParenthesis
highlight link NvimSubscriptBracket NvimSubscript
highlight link NvimSubscriptColon NvimSubscript
highlight link NvimCurly NvimSubscript
highlight link NvimContainer NvimParenthesis
highlight link NvimDict NvimContainer
highlight link NvimList NvimContainer
highlight link NvimIdentifier Identifier
highlight link NvimIdentifierScope NvimIdentifier
highlight link NvimIdentifierScopeDelimiter NvimIdentifier
highlight link NvimIdentifierName NvimIdentifier
highlight link NvimIdentifierKey NvimIdentifier
highlight link NvimColon Delimiter
highlight link NvimComma Delimiter
highlight link NvimArrow Delimiter
highlight link NvimRegister SpecialChar
highlight link SpecialChar Special
highlight link NvimNumber Number
highlight link Number Constant
highlight link NvimFloat NvimNumber
highlight link NvimNumberPrefix Type
highlight link NvimOptionSigil Type
highlight link NvimOptionName NvimIdentifier
highlight link NvimOptionScope NvimIdentifierScope
highlight link NvimOptionScopeDelimiter NvimIdentifierScopeDelimiter
highlight link NvimEnvironmentSigil NvimOptionSigil
highlight link NvimEnvironmentName NvimIdentifier
highlight link NvimString String
highlight link String Constant
highlight link NvimStringBody NvimString
highlight link NvimStringQuote NvimString
highlight link NvimStringSpecial SpecialChar
highlight link NvimSingleQuote NvimStringQuote
highlight link NvimSingleQuotedBody NvimStringBody
highlight link NvimSingleQuotedQuote NvimStringSpecial
highlight link NvimDoubleQuote NvimStringQuote
highlight link NvimDoubleQuotedBody NvimStringBody
highlight link NvimDoubleQuotedEscape NvimStringSpecial
highlight link NvimFigureBrace NvimInternalError
highlight link NvimSingleQuotedUnknownEscape NvimInternalError
highlight link NvimSpacing Normal
highlight link NvimInvalidSingleQuotedUnknownEscape NvimInternalError
highlight link NvimInvalid Error
highlight link NvimInvalidAssignment NvimInvalid
highlight link NvimInvalidPlainAssignment NvimInvalidAssignment
highlight link NvimInvalidAugmentedAssignment NvimInvalidAssignment
highlight link NvimInvalidAssignmentWithAddition NvimInvalidAugmentedAssignment
highlight link NvimInvalidAssignmentWithSubtraction NvimInvalidAugmentedAssignment
highlight link NvimInvalidAssignmentWithConcatenation NvimInvalidAugmentedAssignment
highlight link NvimInvalidOperator NvimInvalid
highlight link NvimInvalidUnaryOperator NvimInvalidOperator
highlight link NvimInvalidUnaryPlus NvimInvalidUnaryOperator
highlight link NvimInvalidUnaryMinus NvimInvalidUnaryOperator
highlight link NvimInvalidNot NvimInvalidUnaryOperator
highlight link NvimInvalidBinaryOperator NvimInvalidOperator
highlight link NvimInvalidComparison NvimInvalidBinaryOperator
highlight link NvimInvalidComparisonModifier NvimInvalidComparison
highlight link NvimInvalidBinaryPlus NvimInvalidBinaryOperator
highlight link NvimInvalidBinaryMinus NvimInvalidBinaryOperator
highlight link NvimInvalidConcat NvimInvalidBinaryOperator
highlight link NvimInvalidConcatOrSubscript NvimInvalidConcat
highlight link NvimInvalidOr NvimInvalidBinaryOperator
highlight link NvimInvalidAnd NvimInvalidBinaryOperator
highlight link NvimInvalidMultiplication NvimInvalidBinaryOperator
highlight link NvimInvalidDivision NvimInvalidBinaryOperator
highlight link NvimInvalidMod NvimInvalidBinaryOperator
highlight link NvimInvalidTernary NvimInvalidOperator
highlight link NvimInvalidTernaryColon NvimInvalidTernary
highlight link NvimInvalidDelimiter NvimInvalid
highlight link NvimInvalidParenthesis NvimInvalidDelimiter
highlight link NvimInvalidLambda NvimInvalidParenthesis
highlight link NvimInvalidNestingParenthesis NvimInvalidParenthesis
highlight link NvimInvalidCallingParenthesis NvimInvalidParenthesis
highlight link NvimInvalidSubscript NvimInvalidParenthesis
highlight link NvimInvalidSubscriptBracket NvimInvalidSubscript
highlight link NvimInvalidSubscriptColon NvimInvalidSubscript
highlight link NvimInvalidCurly NvimInvalidSubscript
highlight link NvimInvalidContainer NvimInvalidParenthesis
highlight link NvimInvalidDict NvimInvalidContainer
highlight link NvimInvalidList NvimInvalidContainer
highlight link NvimInvalidValue NvimInvalid
highlight link NvimInvalidIdentifier NvimInvalidValue
highlight link NvimInvalidIdentifierScope NvimInvalidIdentifier
highlight link NvimInvalidIdentifierScopeDelimiter NvimInvalidIdentifier
highlight link NvimInvalidIdentifierName NvimInvalidIdentifier
highlight link NvimInvalidIdentifierKey NvimInvalidIdentifier
highlight link NvimInvalidColon NvimInvalidDelimiter
highlight link NvimInvalidComma NvimInvalidDelimiter
highlight link NvimInvalidArrow NvimInvalidDelimiter
highlight link NvimInvalidRegister NvimInvalidValue
highlight link NvimInvalidNumber NvimInvalidValue
highlight link NvimInvalidFloat NvimInvalidNumber
highlight link NvimInvalidNumberPrefix NvimInvalidNumber
highlight link NvimInvalidOptionSigil NvimInvalidIdentifier
highlight link NvimInvalidOptionName NvimInvalidIdentifier
highlight link NvimInvalidOptionScope NvimInvalidIdentifierScope
highlight link NvimInvalidOptionScopeDelimiter NvimInvalidIdentifierScopeDelimiter
highlight link NvimInvalidEnvironmentSigil NvimInvalidOptionSigil
highlight link NvimInvalidEnvironmentName NvimInvalidIdentifier
highlight link NvimInvalidString NvimInvalidValue
highlight link NvimInvalidStringBody NvimStringBody
highlight link NvimInvalidStringQuote NvimInvalidString
highlight link NvimInvalidStringSpecial NvimStringSpecial
highlight link NvimInvalidSingleQuote NvimInvalidStringQuote
highlight link NvimInvalidSingleQuotedBody NvimInvalidStringBody
highlight link NvimInvalidSingleQuotedQuote NvimInvalidStringSpecial
highlight link NvimInvalidDoubleQuote NvimInvalidStringQuote
highlight link NvimInvalidDoubleQuotedBody NvimInvalidStringBody
highlight link NvimInvalidDoubleQuotedEscape NvimInvalidStringSpecial
highlight link NvimInvalidDoubleQuotedUnknownEscape NvimInvalidValue
highlight link NvimInvalidFigureBrace NvimInvalidDelimiter
highlight link NvimInvalidSpacing ErrorMsg
highlight link NvimDoubleQuotedUnknownEscape NvimInvalidValue
highlight link Character Constant
highlight link Boolean Constant
highlight link Float Number
highlight link Function Identifier
highlight link Conditional Statement
highlight link Repeat Statement
highlight link Label Statement
highlight link Keyword Statement
highlight link Exception Statement
highlight link Include PreProc
highlight link Define PreProc
highlight link Macro PreProc
highlight link PreCondit PreProc
highlight link StorageClass Type
highlight link Structure Type
highlight link Typedef Type
highlight link Tag Special
highlight link SpecialComment Special
highlight link Debug Special
highlight link GrepperPrompt Question
highlight link SyntasticError SpellBad
highlight link SyntasticWarning SpellCap
highlight link SyntasticStyleError SyntasticError
highlight link SyntasticStyleWarning SyntasticWarning
highlight link GitGutterChangeDeleteDefault GitGutterChangeDefault
highlight link GitGutterChangeDeleteInvisible GitGutterChangeInvisible
highlight link GitGutterAdd GitGutterAddDefault
highlight link GitGutterChange GitGutterChangeDefault
highlight link GitGutterDelete GitGutterDeleteDefault
highlight link GitGutterChangeDelete GitGutterChangeDeleteDefault
highlight link GitGutterAddLine DiffAdd
highlight link GitGutterChangeLine DiffChange
highlight link GitGutterDeleteLine DiffDelete
highlight link GitGutterChangeDeleteLine GitGutterChangeLine
highlight link htmlTagName htmlStatement
highlight link htmlArg Type
highlight link htmlError Error
highlight link htmlSpecialChar Special
highlight link javaScriptExpression javaScript
highlight link htmlString String
highlight link htmlValue String
highlight link htmlTagError htmlError
highlight link htmlEndTag Identifier
highlight link htmlEvent javaScript
highlight link htmlCssDefinition Special
highlight link htmlTag Function
highlight link htmlSpecialTagName Exception
highlight link htmlCommentPart Comment
highlight link htmlCommentError htmlError
highlight link htmlComment Comment
highlight link htmlPreStmt PreProc
highlight link htmlPreError Error
highlight link htmlPreAttr String
highlight link htmlPreProc PreProc
highlight link htmlPreProcAttrError Error
highlight link htmlPreProcAttrName PreProc
highlight link htmlLink Underlined
highlight link htmlBoldItalicUnderline htmlBoldUnderlineItalic
highlight link htmlUnderlineBold htmlBoldUnderline
highlight link htmlUnderlineBoldItalic htmlBoldUnderlineItalic
highlight link htmlUnderlineItalicBold htmlBoldUnderlineItalic
highlight link htmlItalicBold htmlBoldItalic
highlight link htmlItalicUnderline htmlUnderlineItalic
highlight link htmlItalicBoldUnderline htmlBoldUnderlineItalic
highlight link htmlItalicUnderlineBold htmlBoldUnderlineItalic
highlight link htmlLeadingSpace None
highlight link htmlH1 Title
highlight link htmlH2 htmlH1
highlight link htmlH3 htmlH2
highlight link htmlH4 htmlH3
highlight link htmlH5 htmlH4
highlight link htmlH6 htmlH5
highlight link htmlTitle Title
highlight link htmlHead PreProc
highlight link jsNoise Noise
highlight link jsFuncCall Function
highlight link jsPrototype Special
highlight link jsTaggedTemplate StorageClass
highlight link jsDot Noise
highlight link jsParensError Error
highlight link jsStorageClass StorageClass
highlight link jsOperatorKeyword jsOperator
highlight link jsOperator Operator
highlight link jsBooleanTrue Boolean
highlight link jsBooleanFalse Boolean
highlight link jsImport Include
highlight link jsModuleAsterisk Noise
highlight link jsExport Include
highlight link jsExportDefault StorageClass
highlight link jsModuleAs Include
highlight link jsFrom Include
highlight link jsModuleComma jsNoise
highlight link jsExportDefaultGroup jsExportDefault
highlight link jsString String
highlight link jsSpecial Special
highlight link jsTemplateString String
highlight link jsNumber Number
highlight link jsFloat Float
highlight link jsTemplateBraces Noise
highlight link jsRegexpCharClass Character
highlight link jsRegexpBoundary SpecialChar
highlight link jsRegexpBackRef SpecialChar
highlight link jsRegexpQuantifier SpecialChar
highlight link jsRegexpOr Conditional
highlight link jsRegexpMod SpecialChar
highlight link jsRegexpGroup jsRegexpString
highlight link jsRegexpString String
highlight link jsObjectSeparator Noise
highlight link jsObjectShorthandProp jsObjectKey
highlight link jsObjectKeyString String
highlight link jsBrackets Noise
highlight link jsObjectColon jsNoise
highlight link jsObjectFuncName Function
highlight link jsObjectMethodType Type
highlight link jsObjectStringKey String
highlight link jsNull Type
highlight link jsReturn Statement
highlight link jsUndefined Type
highlight link jsNan Number
highlight link jsThis Special
highlight link jsSuper Constant
highlight link jsBlockLabel Identifier
highlight link jsBlockLabelKey jsBlockLabel
highlight link jsStatement Statement
highlight link jsConditional Conditional
highlight link jsCommentIfElse jsComment
highlight link jsRepeat Repeat
highlight link jsForAwait Keyword
highlight link jsDo Repeat
highlight link jsLabel Label
highlight link jsSwitchColon Noise
highlight link jsTry Exception
highlight link jsFinally Exception
highlight link jsCatch Exception
highlight link jsException Exception
highlight link jsAsyncKeyword Keyword
highlight link jsGlobalObjects Constant
highlight link jsGlobalNodeObjects Constant
highlight link jsExceptions Constant
highlight link jsBuiltins Constant
highlight link jsDomErrNo Constant
highlight link jsDomNodeConsts Constant
highlight link jsHtmlEvents Special
highlight link jsParens Noise
highlight link jsParensDecorator jsParens
highlight link jsParensIfElse jsParens
highlight link jsParensRepeat jsParens
highlight link jsCommentRepeat jsComment
highlight link jsParensSwitch jsParens
highlight link jsParensCatch jsParens
highlight link jsFuncParens Noise
highlight link jsComment Comment
highlight link jsRestExpression jsFuncArgs
highlight link jsCommentFunction jsComment
highlight link jsClassBraces Noise
highlight link jsClassFuncName jsFuncName
highlight link jsClassMethodType Type
highlight link jsArrowFunction Type
highlight link jsArrowFuncArgs jsFuncArgs
highlight link jsGenerator jsFunction
highlight link jsDecorator Special
highlight link jsClassProperty jsObjectKey
highlight link jsClassStringKey String
highlight link jsFuncBraces Noise
highlight link jsIfElseBraces Noise
highlight link jsTryCatchBraces Noise
highlight link jsFinallyBraces Noise
highlight link jsSwitchBraces Noise
highlight link jsRepeatBraces Noise
highlight link jsDestructuringBraces Noise
highlight link jsDestructuringProperty jsFuncArgs
highlight link jsDestructuringAssignment jsObjectKey
highlight link jsDestructuringNoise Noise
highlight link jsObjectBraces Noise
highlight link jsBraces Noise
highlight link jsModuleBraces Noise
highlight link jsSpreadOperator Operator
highlight link jsRestOperator Operator
highlight link jsTernaryIfOperator Operator
highlight link jsFuncName Function
highlight link jsFuncArgOperator jsFuncArgs
highlight link jsArguments Special
highlight link jsFunction Type
highlight link jsClassKeyword Keyword
highlight link jsExtendsKeyword Keyword
highlight link jsClassNoise Noise
highlight link jsCommentClass jsComment
highlight link jsClassDefinition jsFuncName
highlight link jsCommentTodo Todo
highlight link jsEnvComment PreProc
highlight link jsDecoratorFunction Function
highlight link jsCharacter Character
highlight link jsBranch Conditional
highlight link jsError Error
highlight link jsOf Operator
highlight link jsDomElemAttrs Label
highlight link jsDomElemFuncs PreProc
highlight link jsHtmlElemAttrs Label
highlight link jsHtmlElemFuncs PreProc
highlight link jsCssStyles Label
highlight link htmlCssStyleComment Comment
highlight link htmlScriptTag htmlTag
highlight link htmlEventSQ htmlEvent
highlight link htmlEventDQ htmlEvent
highlight link vbConditional Conditional
highlight link vbOperator Operator
highlight link vbBoolean Boolean
highlight link vbConst Constant
highlight link vbRepeat Repeat
highlight link vbEvents Special
highlight link vbFunction Identifier
highlight link vbMethods PreProc
highlight link vbStatement Statement
highlight link vbKeyword Statement
highlight link vbTodo Todo
highlight link vbTypes Type
highlight link vbDefine Constant
highlight link vbNumber Number
highlight link vbFloat Float
highlight link vbString String
highlight link vbComment Comment
highlight link vbLineNumber Comment
highlight link vbTypeSpecifier Type
highlight link vbError Error
highlight link vbIdentifier Identifier
highlight link cssTagName Statement
highlight link cssSelectorOp Special
highlight link cssSelectorOp2 Special
highlight link cssUnicodeEscape Special
highlight link cssStringQ String
highlight link cssStringQQ String
highlight link cssAttributeSelector String
highlight link cssClassNameDot Function
highlight link cssClassName Function
highlight link cssIdentifier Function
highlight link cssUnitDecorators Number
highlight link cssValueInteger Number
highlight link cssValueNumber Number
highlight link cssValueLength Number
highlight link cssValueAngle Number
highlight link cssValueTime Number
highlight link cssValueFrequency Number
highlight link cssIncludeKeyword atKeyword
highlight link cssMediaProp cssProp
highlight link cssMediaKeyword Statement
highlight link cssMediaAttr cssAttr
highlight link cssVendor Comment
highlight link cssMediaType Special
highlight link cssMediaComma Normal
highlight link cssComment Comment
highlight link cssInclude Include
highlight link cssBraces Function
highlight link cssColor Constant
highlight link cssURL String
highlight link cssImportant Special
highlight link cssError Error
highlight link cssFunction Constant
highlight link cssPagePseudo PreProc
highlight link cssPage atKeyword
highlight link cssPageMargin atKeyword
highlight link cssPageProp cssProp
highlight link cssHacks Comment
highlight link cssKeyFrame atKeyword
highlight link cssKeyFrameSelector Constant
highlight link cssFontDescriptor Special
highlight link cssCommonAttr cssAttr
highlight link cssFontDescriptorProp cssProp
highlight link cssFontDescriptorFunction Constant
highlight link cssFontDescriptorAttr cssAttr
highlight link cssNoise Noise
highlight link cssFunctionName Function
highlight link cssFunctionComma Function
highlight link cssGradientAttr cssAttr
highlight link cssAnimationProp cssProp
highlight link cssAnimationAttr cssAttr
highlight link cssBackgroundProp cssProp
highlight link cssBackgroundAttr cssAttr
highlight link cssBorderProp cssProp
highlight link cssBorderAttr cssAttr
highlight link cssBoxProp cssProp
highlight link cssBoxAttr cssAttr
highlight link cssColorProp cssProp
highlight link cssDimensionProp cssProp
highlight link cssFlexibleBoxProp cssProp
highlight link cssFlexibleBoxAttr cssAttr
highlight link cssFontProp cssProp
highlight link cssFontAttr cssAttr
highlight link cssMultiColumnProp cssProp
highlight link cssMultiColumnAttr cssAttr
highlight link cssGeneratedContentProp cssProp
highlight link cssGeneratedContentAttr cssAttr
highlight link cssGridProp cssProp
highlight link cssHyerlinkProp cssProp
highlight link cssListProp cssProp
highlight link cssListAttr cssAttr
highlight link cssPositioningProp cssProp
highlight link cssPositioningAttr cssAttr
highlight link cssPrintAttr cssAttr
highlight link cssTableProp cssProp
highlight link cssTableAttr cssAttr
highlight link cssTextProp cssProp
highlight link cssTextAttr cssAttr
highlight link cssTransformProp cssProp
highlight link cssTransitionProp cssProp
highlight link cssTransitionAttr cssAttr
highlight link cssUIProp cssProp
highlight link cssUIAttr cssAttr
highlight link cssIEUIAttr cssAttr
highlight link cssIEUIProp cssProp
highlight link cssAuralProp cssProp
highlight link cssAuralAttr cssAttr
highlight link cssMobileTextProp cssProp
highlight link cssBraceError Error
highlight link cssAttrComma Special
highlight link cssPseudoClassId PreProc
highlight link cssDeprecated Error
highlight link cssProp StorageClass
highlight link cssContentForPagedMediaProp cssProp
highlight link cssLineboxProp cssProp
highlight link cssMarqueeProp cssProp
highlight link cssPagedMediaProp cssProp
highlight link cssPrintProp cssProp
highlight link cssRubyProp cssProp
highlight link cssSpeechProp cssProp
highlight link cssRenderProp cssProp
highlight link cssAttr Constant
highlight link cssContentForPagedMediaAttr cssAttr
highlight link cssDimensionAttr cssAttr
highlight link cssGridAttr cssAttr
highlight link cssHyerlinkAttr cssAttr
highlight link cssLineboxAttr cssAttr
highlight link cssMarginAttr cssAttr
highlight link cssMarqueeAttr cssAttr
highlight link cssPaddingAttr cssAttr
highlight link cssPagedMediaAttr cssAttr
highlight link cssRubyAttr cssAttr
highlight link cssSpeechAttr cssAttr
highlight link cssTransformAttr cssAttr
highlight link cssRenderAttr cssAttr
highlight link cssPseudoClassLang Constant
highlight link atKeyword PreProc
highlight link cssMedia atKeyword
highlight link cssUnicodeRange Constant
highlight link cssString String
highlight link htmlStyleArg htmlString
highlight link htmlStatement Statement
highlight link htmlSpecial Special
highlight link coffeeStatement Statement
highlight link coffeeRepeat Repeat
highlight link coffeeConditional Conditional
highlight link coffeeException Exception
highlight link coffeeKeyword Keyword
highlight link coffeeOperator Operator
highlight link coffeeExtendedOp coffeeOperator
highlight link coffeeSpecialOp SpecialChar
highlight link coffeeBoolean Boolean
highlight link coffeeGlobal Type
highlight link coffeeSpecialVar Special
highlight link coffeeSpecialIdent Identifier
highlight link coffeeObject Structure
highlight link coffeeConstant Constant
highlight link coffeeEscape SpecialChar
highlight link coffeeString String
highlight link coffeeNumber Number
highlight link coffeeFloat Float
highlight link coffeeReservedError Error
highlight link coffeeObjAssign Identifier
highlight link coffeeTodo Todo
highlight link coffeeComment Comment
highlight link coffeeBlockComment coffeeComment
highlight link coffeeHeregexComment coffeeComment
highlight link coffeeEmbedDelim Delimiter
highlight link coffeeInterpDelim PreProc
highlight link coffeeRegexCharSet coffeeRegex
highlight link coffeeRegex String
highlight link coffeeHeregexCharSet coffeeHeregex
highlight link coffeeHeregex coffeeRegex
highlight link coffeeHeredoc String
highlight link coffeeSpaceError Error
highlight link coffeeSemicolonError Error
highlight link coffeeDotAccess coffeeExtendedOp
highlight link coffeeProtoAccess coffeeExtendedOp
highlight link coffeeCurly coffeeBlock
highlight link coffeeBracket coffeeBlock
highlight link coffeeParen coffeeBlock
highlight link coffeeBlock coffeeSpecialOp
highlight link pythonStatement Statement
highlight link pythonFunction Function
highlight link pythonConditional Conditional
highlight link pythonRepeat Repeat
highlight link pythonOperator Operator
highlight link pythonException Exception
highlight link pythonInclude Include
highlight link pythonAsync Statement
highlight link pythonDecorator Define
highlight link pythonDecoratorName Function
highlight link pythonDoctestValue Define
highlight link pythonTodo Todo
highlight link pythonComment Comment
highlight link pythonQuotes String
highlight link pythonEscape Special
highlight link pythonString String
highlight link pythonTripleQuotes pythonQuotes
highlight link pythonDoctest Special
highlight link pythonRawString String
highlight link pythonNumber Number
highlight link pythonBuiltin Function
highlight link pythonExceptions Structure
highlight link jediIgnore Ignore
highlight link jediFatSymbol Ignore
highlight link jediSpace Normal
highlight link shDoError Error
highlight link shIfError Error
highlight link shInError Error
highlight link shCaseError Error
highlight link shEsacError Error
highlight link shCurlyError Error
highlight link shParenError Error
highlight link shTestError Error
highlight link shArithmetic Special
highlight link shComment Comment
highlight link shDeref shShellVariables
highlight link shDerefSimple shDeref
highlight link shEcho shString
highlight link shEscape shCommandSub
highlight link shNumber Number
highlight link shOperator Operator
highlight link shPosnParm shShellVariables
highlight link shExSingleQuote shSingleQuote
highlight link shExDoubleQuote shDoubleQuote
highlight link shHereString shRedir
highlight link shRedir shOperator
highlight link shSingleQuote shString
highlight link shDoubleQuote shString
highlight link shStatement Statement
highlight link shVariable shSetList
highlight link shAlias Identifier
highlight link shCtrlSeq Special
highlight link shSpecial Special
highlight link shParen shArithmetic
highlight link shCaseStart shConditional
highlight link shCaseBar shConditional
highlight link shCaseIn shConditional
highlight link shCaseCommandSub shCommandSub
highlight link shCaseSingleQuote shSingleQuote
highlight link shCaseDoubleQuote shDoubleQuote
highlight link shStringSpecial shSpecial
highlight link shColon shComment
highlight link shCommandSub Special
highlight link shHereDoc shString
highlight link shSetList Identifier
highlight link shSource shOperator
highlight link shOption shCommandSub
highlight link shDerefSpecial shDeref
highlight link shDerefVar shDeref
highlight link shDerefWordError Error
highlight link shDerefPSR shDerefOp
highlight link shDerefPPS shDerefOp
highlight link shDerefOp shOperator
highlight link shDerefOpError Error
highlight link shEchoQuote shString
highlight link shCharClass Identifier
highlight link shBeginHere shRedir
highlight link shHerePayload shHereDoc
highlight link shWrapLineOperator shOperator
highlight link shSetOption shOption
highlight link shAtExpr shSetList
highlight link shFunctionKey Function
highlight link shConditional Conditional
highlight link shForPP shLoop
highlight link shSet Statement
highlight link shTestOpr shConditional
highlight link shSpecialNoZS shSpecial
highlight link shEchoDelim shOperator
highlight link shQuickComment shComment
highlight link shEmbeddedEcho shString
highlight link shTouchCmd shStatement
highlight link shPattern shString
highlight link shExprRegion Delimiter
highlight link shSpecialNxt shSpecial
highlight link shSubShRegion shOperator
highlight link shRange shOperator
highlight link shNoQuote shDoubleQuote
highlight link shString String
highlight link shAstQuote shDoubleQuote
highlight link shTestDoubleQuote shString
highlight link shTestSingleQuote shString
highlight link shTestPattern shString
highlight link shLoop shStatement
highlight link shRepeat Repeat
highlight link shSnglCase Statement
highlight link shQuote shOperator
highlight link shCmdSubRegion shShellVariables
highlight link shArithRegion shShellVariables
highlight link shTodo Todo
highlight link shHereDoc01 shRedir
highlight link shHereDoc02 shRedir
highlight link shHereDoc03 shRedir
highlight link shHereDoc04 shRedir
highlight link shHereDoc05 shRedir
highlight link shHereDoc06 shRedir
highlight link shHereDoc07 shRedir
highlight link shHereDoc08 shRedir
highlight link shHereDoc09 shRedir
highlight link shHereDoc10 shRedir
highlight link shHereDoc11 shRedir
highlight link shHereDoc12 shRedir
highlight link shHereDoc13 shRedir
highlight link shHereDoc14 shRedir
highlight link shHereDoc15 shRedir
highlight link shSetListDelim shOperator
highlight link shFunction Function
highlight link shDerefString shDoubleQuote
highlight link shDerefDelim shOperator
highlight link shCondError Error
highlight link shShellVariables PreProc
highlight link shDerefPOL shDerefOp
highlight link shFunctionName Function
highlight link puppetDefType Define
highlight link puppetDefName Type
highlight link puppetNodeRe Type
highlight link puppetType Type
highlight link puppetArgument Identifier
highlight link puppetString String
highlight link puppetComment Comment
highlight link puppetMultilineComment Comment
highlight link puppetTypeName Statement
highlight link puppetTypeDefault Type
highlight link puppetParamName Identifier
highlight link puppetVariable Identifier
highlight link puppetParen Delimiter
highlight link puppetBrace Delimiter
highlight link puppetBrack Delimiter
highlight link puppetParamKeyword Keyword
highlight link puppetParamSpecial Boolean
highlight link puppetParamDigits String
highlight link puppetFunction Function
highlight link puppetNotVariable String
highlight link puppetKeyword Keyword
highlight link puppetControl Statement
highlight link puppetSpecial Special
highlight link puppetClass Include
highlight link puppetRegexParen Delimiter
highlight link puppetRegexBrace Delimiter
highlight link puppetRegexComment Comment
highlight link puppetRegex Constant
highlight link puppetRegexSpecChar SpecialChar
highlight link puppetRegexSubName Identifier
highlight link puppetRegexBrack Delimiter
highlight link puppetRegexOr Delimiter
highlight link puppetTodo Todo
highlight link puppetRegexAngBrack Delimiter
highlight link puppetRegexTick Delimiter
highlight link puppetTypeBrack Delimiter
highlight link puppetTypeBrace Delimiter
highlight link puppetDelimiter Delimiter
highlight link sqlSpecial Special
highlight link sqlKeyword sqlSpecial
highlight link sqlOperator sqlStatement
highlight link sqlStatement Statement
highlight link sqlType Type
highlight link Quote Special
highlight link sqlString String
highlight link sqlNumber Number
highlight link sqlTodo Todo
highlight link sqlComment Comment
highlight link sqlFunction Function
highlight link phpEnvVar Identifier
highlight link phpIntVar Identifier
highlight link phpCoreConstant Constant
highlight link phpConstant Constant
highlight link phpFunctions Function
highlight link phpMethods Function
highlight link phpConditional Conditional
highlight link phpRepeat Repeat
highlight link phpLabel Label
highlight link phpStatement Statement
highlight link phpKeyword Statement
highlight link phpType Type
highlight link phpStructure Structure
highlight link phpOperator Operator
highlight link phpRelation Operator
highlight link phpMemberSelector Structure
highlight link phpVarSelector Operator
highlight link phpIdentifier Identifier
highlight link phpParent Delimiter
highlight link phpIdentifierSimply Identifier
highlight link phpBrackets Delimiter
highlight link phpInterpSimpleError Error
highlight link phpInterpBogusDollarCurley Error
highlight link phpinterpSimpleBracketsInner String
highlight link phpInterpVarname Identifier
highlight link phpInterpSimpleCurly Delimiter
highlight link phpInterpDollarCurly1 Error
highlight link phpInterpDollarCurly2 Error
highlight link phpInclude Include
highlight link phpDefine Define
highlight link phpBoolean Boolean
highlight link phpNumber Number
highlight link phpFloat Float
highlight link phpBackslashSequences SpecialChar
highlight link phpOctalError Error
highlight link phpBackslashDoubleQuote SpecialChar
highlight link phpBackslashSingleQuote SpecialChar
highlight link phpTodo Todo
highlight link phpComment Comment
highlight link phpStringDouble String
highlight link phpBacktick String
highlight link phpStringSingle String
highlight link phpException Exception
highlight link phpParentError Error
highlight link phpStorageClass StorageClass
highlight link phpSCKeyword StorageClass
highlight link phpFCKeyword Define
highlight link phpSpecialFunction phpOperator
highlight link phpClasses phpFunctions
highlight link phpInterfaces phpConstant
highlight link phpAssignByRef Type
highlight link phpComparison Statement
highlight link phpDocCustomTags Type
highlight link phpDocTags PreProc
highlight link phpDocTodo Todo
highlight link phpBaselib Function
highlight link phpIdentifierConst Delimiter
highlight link cssSelector Function
highlight link cssCommonVal Type
highlight link cssBackgroundVal Type
highlight link cssFuncVal Function
highlight link cssVisualProp StorageClass
highlight link cssColorVal Constant
highlight link cssBorderVal Type
highlight link cssFontVal Type
highlight link cssTextVal Type
highlight link cssListVal Type
highlight link cssVisualVal Type
highlight link cssCommonProp StorageClass
highlight link cssSpecialProp Special
highlight link cssRuleProp PreProc
highlight link cssPseudo PreProc
highlight link cssAdvancedProp StorageClass
highlight link cssAdvancedVal Function
highlight link stylusVariable Identifier
highlight link stylusFunction Function
highlight link stylusControl PreProc
highlight link stylusInterpolation Delimiter
highlight link stylusComment Comment
highlight link stylusAmpersand Character
highlight link stylusClass Type
highlight link stylusClassChar Special
highlight link stylusEscape Special
highlight link stylusId Identifier
highlight link stylusIdChar Special
highlight link sassEndOfLineComment sassComment
highlight link scssComment sassComment
highlight link sassDefault cssImportant
highlight link sassVariable Identifier
highlight link sassFunction Function
highlight link sassInterpolationDelimiter Delimiter
highlight link sassMixin PreProc
highlight link sassMixing PreProc
highlight link sassExtend PreProc
highlight link sassPlaceholder PreProc
highlight link sassFunctionDecl PreProc
highlight link sassReturn PreProc
highlight link sassEscape Special
highlight link sassId Identifier
highlight link sassIdChar Special
highlight link sassClass Type
highlight link sassClassChar Special
highlight link sassAmpersand Character
highlight link sassMedia PreProc
highlight link sassMediaOperators PreProc
highlight link sassCharset PreProc
highlight link sassInclude Include
highlight link sassDebug sassControl
highlight link sassWarn sassControl
highlight link sassControl PreProc
highlight link sassFor PreProc
highlight link sassTodo Todo
highlight link sassComment Comment
highlight link sassCssComment sassComment
highlight link jadeComment Comment
highlight link jadeHtmlComment jadeComment
highlight link jadeTag Special
highlight link jadeClassChar Special
highlight link jadeIdChar Special
highlight link jadeBlockExpansionChar Special
highlight link jadeAttributesDelimiter Identifier
highlight link jadeHtmlArg htmlArg
highlight link jadeAttributeString String
highlight link jadeClass Type
highlight link jadeId Identifier
highlight link jadeDocType PreProc
highlight link jadeInterpolationDelimiter Delimiter
highlight link jadeFilter PreProc
highlight link jsonNoise Noise
highlight link jsonString String
highlight link jsonQuote Quote
highlight link jsonEscape Special
highlight link jsonStringSQError Error
highlight link jsonKeyword Label
highlight link jsonNumber Number
highlight link jsonNoQuotesError Error
highlight link jsonTripleQuotesError Error
highlight link jsonNumError Error
highlight link jsonCommentError Error
highlight link jsonSemicolonError Error
highlight link jsonTrailingCommaError Error
highlight link jsonMissingCommaError Error
highlight link jsonPadding Operator
highlight link jsonBoolean Boolean
highlight link jsonNull Function
highlight link jsonBraces Delimiter
highlight link jsonTest Label
highlight link cStatement Statement
highlight link cLabel Label
highlight link cConditional Conditional
highlight link cRepeat Repeat
highlight link cTodo Todo
highlight link cBadContinuation Error
highlight link cSpecial SpecialChar
highlight link cFormat cSpecial
highlight link cString String
highlight link cCppString cString
highlight link cSpaceError cError
highlight link cCharacter Character
highlight link cSpecialError cError
highlight link cSpecialCharacter cSpecial
highlight link cCurlyError cError
highlight link cErrInParen cError
highlight link cErrInBracket cError
highlight link cParenError cError
highlight link cIncluded cString
highlight link cCommentSkip cComment
highlight link cCommentString cString
highlight link cComment2String cString
highlight link cCommentStartError cError
highlight link cUserLabel Label
highlight link cOctalZero PreProc
highlight link cNumber Number
highlight link cFloat Float
highlight link cOctal Number
highlight link cOctalError cError
highlight link cCommentL cComment
highlight link cCommentStart cComment
highlight link cComment Comment
highlight link cCommentError cError
highlight link cOperator Operator
highlight link cType Type
highlight link cStructure Structure
highlight link cStorageClass StorageClass
highlight link cConstant Constant
highlight link cPreCondit PreCondit
highlight link cPreConditMatch cPreCondit
highlight link cCppInElse2 cCppOutIf2
highlight link cCppOutIf2 cCppOut
highlight link cCppOutSkip cCppOutIf2
highlight link cCppOutWrapper cPreCondit
highlight link cCppInWrapper cCppOutWrapper
highlight link cPreProc PreProc
highlight link cInclude Include
highlight link cDefine Macro
highlight link cError Error
highlight link cCppOut Comment
highlight link cppStatement Statement
highlight link cppAccess cppStatement
highlight link cppModifier Type
highlight link cppType Type
highlight link cppExceptions Exception
highlight link cppOperator Operator
highlight link cppCast cppStatement
highlight link cppStorageClass StorageClass
highlight link cppStructure Structure
highlight link cppBoolean Boolean
highlight link cppConstant Constant
highlight link cppRawStringDelimiter Delimiter
highlight link cppRawString String
highlight link cppNumber Number
highlight link helpHeadline Statement
highlight link helpSectionDelim PreProc
highlight link helpIgnore Ignore
highlight link helpExample Comment
highlight link helpBar Ignore
highlight link helpHyperTextJump Identifier
highlight link helpStar Ignore
highlight link helpHyperTextEntry String
highlight link helpBacktick Ignore
highlight link helpVim Identifier
highlight link helpOption Type
highlight link helpCommand Comment
highlight link helpHeader PreProc
highlight link helpNote Todo
highlight link helpWarning Todo
highlight link helpDeprecated Todo
highlight link helpSpecial Special
highlight link helpComment Comment
highlight link helpConstant Constant
highlight link helpString String
highlight link helpCharacter Character
highlight link helpNumber Number
highlight link helpBoolean Boolean
highlight link helpFloat Float
highlight link helpIdentifier Identifier
highlight link helpFunction Function
highlight link helpStatement Statement
highlight link helpConditional Conditional
highlight link helpRepeat Repeat
highlight link helpLabel Label
highlight link helpOperator Operator
highlight link helpKeyword Keyword
highlight link helpException Exception
highlight link helpPreProc PreProc
highlight link helpInclude Include
highlight link helpDefine Define
highlight link helpMacro Macro
highlight link helpPreCondit PreCondit
highlight link helpType Type
highlight link helpStorageClass StorageClass
highlight link helpStructure Structure
highlight link helpTypedef Typedef
highlight link helpSpecialChar SpecialChar
highlight link helpTag Tag
highlight link helpDelimiter Delimiter
highlight link helpSpecialComment SpecialComment
highlight link helpDebug Debug
highlight link helpUnderlined Underlined
highlight link helpError Error
highlight link helpTodo Todo
highlight link helpURL String
highlight link manReference PreProc
highlight link manSectionHeading Statement
highlight link manTitle Title
highlight link manSubHeading Function
highlight link manOptionDesc Constant
highlight link markdownH1 htmlH1
highlight link markdownH2 htmlH2
highlight link markdownH3 htmlH3
highlight link markdownH4 htmlH4
highlight link markdownH5 htmlH5
highlight link markdownH6 htmlH6
highlight link markdownBlockquote Comment
highlight link markdownListMarker htmlTagName
highlight link markdownOrderedListMarker markdownListMarker
highlight link markdownRule PreProc
highlight link markdownLinkText htmlLink
highlight link markdownItalic htmlItalic
highlight link markdownBold htmlBold
highlight link markdownEscape Special
highlight link markdownError Error
highlight link markdownHeadingRule markdownRule
highlight link markdownAutomaticLink markdownUrl
highlight link markdownH1Delimiter markdownHeadingDelimiter
highlight link markdownH2Delimiter markdownHeadingDelimiter
highlight link markdownH3Delimiter markdownHeadingDelimiter
highlight link markdownH4Delimiter markdownHeadingDelimiter
highlight link markdownH5Delimiter markdownHeadingDelimiter
highlight link markdownH6Delimiter markdownHeadingDelimiter
highlight link markdownUrl Float
highlight link markdownIdDeclaration Typedef
highlight link markdownUrlTitle String
highlight link markdownUrlDelimiter htmlTag
highlight link markdownUrlTitleDelimiter Delimiter
highlight link markdownId Type
highlight link markdownIdDelimiter markdownLinkDelimiter
highlight link markdownItalicDelimiter markdownItalic
highlight link markdownBoldDelimiter markdownBold
highlight link markdownBoldItalicDelimiter markdownBoldItalic
highlight link markdownBoldItalic htmlBoldItalic
highlight link markdownCodeDelimiter Delimiter
highlight link markdownFootnote Typedef
highlight link markdownFootnoteDefinition Typedef
highlight link markdownHeadingDelimiter Delimiter
highlight link SyntasticErrorSign Error
highlight link SyntasticWarningSign Todo
highlight link SyntasticStyleErrorSign SyntasticErrorSign
highlight link SyntasticStyleWarningSign SyntasticWarningSign
highlight link SyntasticStyleErrorLine SyntasticErrorLine
highlight link SyntasticStyleWarningLine SyntasticWarningLine
highlight link qfFileName Directory
highlight link qfLineNr LineNr
highlight link qfError Error




" Reapply default colours and attributes

highlight SpecialKey ctermfg=4 guifg=Blue
highlight TermCursor cterm=reverse gui=reverse
highlight NonText ctermfg=12 gui=bold guifg=Blue
highlight Directory ctermfg=4 guifg=Blue
highlight ErrorMsg ctermfg=15 ctermbg=1 guifg=White guibg=Red
highlight IncSearch cterm=reverse gui=reverse
highlight Search ctermbg=11 guibg=Yellow
highlight MoreMsg ctermfg=2 gui=bold guifg=SeaGreen
highlight ModeMsg cterm=bold gui=bold
highlight LineNr ctermfg=130 guifg=Brown
highlight CursorLineNr ctermfg=130 gui=bold guifg=Brown
highlight Question ctermfg=2 gui=bold guifg=SeaGreen
highlight StatusLine cterm=bold,reverse gui=bold,reverse
highlight StatusLineNC cterm=reverse gui=reverse
highlight VertSplit cterm=reverse gui=reverse
highlight Title ctermfg=5 gui=bold guifg=Magenta
highlight Visual ctermbg=7 guibg=LightGrey
highlight WarningMsg ctermfg=1 guifg=Red
highlight WildMenu ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
highlight Folded ctermfg=4 ctermbg=248 guifg=DarkBlue guibg=LightGrey
highlight FoldColumn ctermfg=4 ctermbg=248 guifg=DarkBlue guibg=Grey
highlight DiffAdd ctermbg=81 guibg=LightBlue
highlight DiffChange ctermbg=225 guibg=LightMagenta
highlight DiffDelete ctermfg=12 ctermbg=159 gui=bold guifg=Blue guibg=LightCyan
highlight DiffText cterm=bold ctermbg=9 gui=bold guibg=Red
highlight SignColumn ctermfg=4 ctermbg=248 guifg=DarkBlue guibg=Grey
highlight Conceal ctermfg=234 guifg=#212126
highlight SpellBad ctermbg=224 gui=undercurl guisp=Red
highlight SpellCap ctermbg=81 gui=undercurl guisp=Blue
highlight SpellRare ctermbg=225 gui=undercurl guisp=Magenta
highlight SpellLocal ctermbg=14 gui=undercurl guisp=DarkCyan
highlight Pmenu ctermfg=0 ctermbg=225 guibg=LightMagenta
highlight PmenuSel ctermfg=0 ctermbg=7 guibg=Grey
highlight PmenuSbar ctermbg=248 guibg=Grey
highlight PmenuThumb ctermbg=0 guibg=Black
highlight TabLine cterm=underline ctermfg=0 ctermbg=7 gui=underline guibg=LightGrey
highlight TabLineSel cterm=bold gui=bold
highlight TabLineFill cterm=reverse gui=reverse
highlight CursorColumn ctermbg=7 guibg=Grey90
highlight CursorLine cterm=underline guibg=Grey90
highlight ColorColumn ctermbg=224 guibg=LightRed
highlight Cursor guifg=bg guibg=fg
highlight lCursor guifg=bg guibg=fg
highlight MatchParen ctermbg=14 guibg=Cyan
highlight NvimInternalError ctermfg=9 ctermbg=9 guifg=Red guibg=Red
highlight Identifier ctermfg=6 guifg=DarkCyan
highlight Type ctermfg=2 gui=bold guifg=SeaGreen
highlight Error ctermfg=15 ctermbg=9 guifg=White guibg=Red
highlight Comment ctermfg=4 guifg=Blue
highlight Constant ctermfg=1 guifg=Magenta
highlight Special ctermfg=5 guifg=SlateBlue
highlight Statement ctermfg=130 gui=bold guifg=Brown
highlight PreProc ctermfg=5 guifg=Purple
highlight Underlined cterm=underline ctermfg=5 gui=underline guifg=SlateBlue
highlight Ignore ctermfg=15 guifg=bg
highlight Todo ctermfg=0 ctermbg=11 guifg=Blue guibg=Yellow
highlight GitGutterAddDefault ctermfg=2 guifg=#009900
highlight GitGutterChangeDefault ctermfg=3 guifg=#bbbb00
highlight GitGutterDeleteDefault ctermfg=1 guifg=#ff2222
highlight GitGutterAddInvisible guifg=bg
highlight GitGutterChangeInvisible guifg=bg
highlight GitGutterDeleteInvisible guifg=bg
highlight htmlStrike cterm=underline gui=underline
highlight htmlBoldUnderline cterm=bold,underline gui=bold,underline
highlight htmlBoldItalic cterm=bold,italic gui=bold,italic
highlight htmlBold cterm=bold gui=bold
highlight htmlBoldUnderlineItalic cterm=bold,underline,italic gui=bold,underline,italic
highlight htmlUnderlineItalic cterm=underline,italic gui=underline,italic
highlight htmlUnderline cterm=underline gui=underline
highlight htmlItalic cterm=italic gui=italic
highlight jediFat cterm=bold,underline ctermbg=0 gui=bold,underline guibg=#555555
highlight jediFunction ctermfg=6 ctermbg=0 guifg=Black guibg=Grey
highlight jediUsage cterm=reverse gui=standout
highlight manUnderline cterm=underline gui=underline
highlight manBold cterm=bold gui=bold
highlight manItalic cterm=italic gui=italic





" Reset syntax to apply the built‐in default colours based on the `background`
" variable.

" The colours and attributes these set should be set above. `hi clear` also
" seems to properly reset the Normal background colour and force a redraw.
" Both of them set colours based on the current value of `background`.
hi clear
syntax reset



" Re-apply all highlighting found in included syntax files.
"
" NOTE: This takes a noticeable amount of time.
"runtime! colors/minmono/default-syntax-hl.vim



" For reference, this is the full list of highlight group assignments dumped
" after no color scheme, opening help, and opening the quickfix window with an
" ack-grep search (<leader>ag).
"
" I got this by capturing the output of `:highlight`. See vim.wikia.com for
" how to capture the output of ex commands:
" http://vim.wikia.com/wiki/Capture_ex_command_output
"SpecialKey     xxx ctermfg=4 guifg=Blue
"EndOfBuffer    xxx links to NonText
"TermCursor     xxx cterm=reverse gui=reverse
"TermCursorNC   xxx cleared
"NonText        xxx ctermfg=12 gui=bold guifg=Blue
"Directory      xxx ctermfg=4 guifg=Blue
"ErrorMsg       xxx ctermfg=15 ctermbg=1 guifg=White guibg=Red
"IncSearch      xxx cterm=reverse gui=reverse
"Search         xxx ctermbg=11 guibg=Yellow
"MoreMsg        xxx ctermfg=2 gui=bold guifg=SeaGreen
"ModeMsg        xxx cterm=bold gui=bold
"LineNr         xxx ctermfg=130 guifg=Brown
"CursorLineNr   xxx ctermfg=130 gui=bold guifg=Brown
"Question       xxx ctermfg=2 gui=bold guifg=SeaGreen
"StatusLine     xxx cterm=bold,reverse gui=bold,reverse
"StatusLineNC   xxx cterm=reverse gui=reverse
"VertSplit      xxx cterm=reverse gui=reverse
"Title          xxx ctermfg=5 gui=bold guifg=Magenta
"Visual         xxx ctermbg=7 guibg=LightGrey
"VisualNC       xxx cleared
"WarningMsg     xxx ctermfg=1 guifg=Red
"WildMenu       xxx ctermfg=0 ctermbg=11 guifg=Black guibg=Yellow
"Folded         xxx ctermfg=4 ctermbg=248 guifg=DarkBlue guibg=LightGrey
"FoldColumn     xxx ctermfg=4 ctermbg=248 guifg=DarkBlue guibg=Grey
"DiffAdd        xxx ctermbg=81 guibg=LightBlue
"DiffChange     xxx ctermbg=225 guibg=LightMagenta
"DiffDelete     xxx ctermfg=12 ctermbg=159 gui=bold guifg=Blue guibg=LightCyan
"DiffText       xxx cterm=bold ctermbg=9 gui=bold guibg=Red
"SignColumn     xxx ctermfg=4 ctermbg=248 guifg=DarkBlue guibg=Grey
"                   links to LineNr
"Conceal        xxx ctermfg=234 guifg=#212126
"SpellBad       xxx ctermbg=224 gui=undercurl guisp=Red
"SpellCap       xxx ctermbg=81 gui=undercurl guisp=Blue
"SpellRare      xxx ctermbg=225 gui=undercurl guisp=Magenta
"SpellLocal     xxx ctermbg=14 gui=undercurl guisp=DarkCyan
"Pmenu          xxx ctermfg=0 ctermbg=225 guibg=LightMagenta
"PmenuSel       xxx ctermfg=0 ctermbg=7 guibg=Grey
"PmenuSbar      xxx ctermbg=248 guibg=Grey
"PmenuThumb     xxx ctermbg=0 guibg=Black
"TabLine        xxx cterm=underline ctermfg=0 ctermbg=7 gui=underline guibg=LightGrey
"TabLineSel     xxx cterm=bold gui=bold
"TabLineFill    xxx cterm=reverse gui=reverse
"CursorColumn   xxx ctermbg=7 guibg=Grey90
"CursorLine     xxx cterm=underline guibg=Grey90
"ColorColumn    xxx ctermbg=224 guibg=LightRed
"QuickFixLine   xxx links to Search
"Whitespace     xxx links to NonText
"NormalNC       xxx cleared
"MsgSeparator   xxx links to StatusLine
"Cursor         xxx guifg=bg guibg=fg
"lCursor        xxx guifg=bg guibg=fg
"Substitute     xxx links to Search
"MatchParen     xxx ctermbg=14 guibg=Cyan
"Normal         xxx cleared
"NvimInternalError xxx ctermfg=9 ctermbg=9 guifg=Red guibg=Red
"NvimAssignment xxx links to Operator
"Operator       xxx links to Statement
"NvimPlainAssignment xxx links to NvimAssignment
"NvimAugmentedAssignment xxx links to NvimAssignment
"NvimAssignmentWithAddition xxx links to NvimAugmentedAssignment
"NvimAssignmentWithSubtraction xxx links to NvimAugmentedAssignment
"NvimAssignmentWithConcatenation xxx links to NvimAugmentedAssignment
"NvimOperator   xxx links to Operator
"NvimUnaryOperator xxx links to NvimOperator
"NvimUnaryPlus  xxx links to NvimUnaryOperator
"NvimUnaryMinus xxx links to NvimUnaryOperator
"NvimNot        xxx links to NvimUnaryOperator
"NvimBinaryOperator xxx links to NvimOperator
"NvimComparison xxx links to NvimBinaryOperator
"NvimComparisonModifier xxx links to NvimComparison
"NvimBinaryPlus xxx links to NvimBinaryOperator
"NvimBinaryMinus xxx links to NvimBinaryOperator
"NvimConcat     xxx links to NvimBinaryOperator
"NvimConcatOrSubscript xxx links to NvimConcat
"NvimOr         xxx links to NvimBinaryOperator
"NvimAnd        xxx links to NvimBinaryOperator
"NvimMultiplication xxx links to NvimBinaryOperator
"NvimDivision   xxx links to NvimBinaryOperator
"NvimMod        xxx links to NvimBinaryOperator
"NvimTernary    xxx links to NvimOperator
"NvimTernaryColon xxx links to NvimTernary
"NvimParenthesis xxx links to Delimiter
"Delimiter      xxx links to Special
"NvimLambda     xxx links to NvimParenthesis
"NvimNestingParenthesis xxx links to NvimParenthesis
"NvimCallingParenthesis xxx links to NvimParenthesis
"NvimSubscript  xxx links to NvimParenthesis
"NvimSubscriptBracket xxx links to NvimSubscript
"NvimSubscriptColon xxx links to NvimSubscript
"NvimCurly      xxx links to NvimSubscript
"NvimContainer  xxx links to NvimParenthesis
"NvimDict       xxx links to NvimContainer
"NvimList       xxx links to NvimContainer
"NvimIdentifier xxx links to Identifier
"Identifier     xxx ctermfg=6 guifg=DarkCyan
"NvimIdentifierScope xxx links to NvimIdentifier
"NvimIdentifierScopeDelimiter xxx links to NvimIdentifier
"NvimIdentifierName xxx links to NvimIdentifier
"NvimIdentifierKey xxx links to NvimIdentifier
"NvimColon      xxx links to Delimiter
"NvimComma      xxx links to Delimiter
"NvimArrow      xxx links to Delimiter
"NvimRegister   xxx links to SpecialChar
"SpecialChar    xxx links to Special
"NvimNumber     xxx links to Number
"Number         xxx links to Constant
"NvimFloat      xxx links to NvimNumber
"NvimNumberPrefix xxx links to Type
"Type           xxx ctermfg=2 gui=bold guifg=SeaGreen
"NvimOptionSigil xxx links to Type
"NvimOptionName xxx links to NvimIdentifier
"NvimOptionScope xxx links to NvimIdentifierScope
"NvimOptionScopeDelimiter xxx links to NvimIdentifierScopeDelimiter
"NvimEnvironmentSigil xxx links to NvimOptionSigil
"NvimEnvironmentName xxx links to NvimIdentifier
"NvimString     xxx links to String
"String         xxx links to Constant
"NvimStringBody xxx links to NvimString
"NvimStringQuote xxx links to NvimString
"NvimStringSpecial xxx links to SpecialChar
"NvimSingleQuote xxx links to NvimStringQuote
"NvimSingleQuotedBody xxx links to NvimStringBody
"NvimSingleQuotedQuote xxx links to NvimStringSpecial
"NvimDoubleQuote xxx links to NvimStringQuote
"NvimDoubleQuotedBody xxx links to NvimStringBody
"NvimDoubleQuotedEscape xxx links to NvimStringSpecial
"NvimFigureBrace xxx links to NvimInternalError
"NvimSingleQuotedUnknownEscape xxx links to NvimInternalError
"NvimSpacing    xxx links to Normal
"NvimInvalidSingleQuotedUnknownEscape xxx links to NvimInternalError
"NvimInvalid    xxx links to Error
"Error          xxx ctermfg=15 ctermbg=9 guifg=White guibg=Red
"NvimInvalidAssignment xxx links to NvimInvalid
"NvimInvalidPlainAssignment xxx links to NvimInvalidAssignment
"NvimInvalidAugmentedAssignment xxx links to NvimInvalidAssignment
"NvimInvalidAssignmentWithAddition xxx links to NvimInvalidAugmentedAssignment
"NvimInvalidAssignmentWithSubtraction xxx links to NvimInvalidAugmentedAssignment
"NvimInvalidAssignmentWithConcatenation xxx links to NvimInvalidAugmentedAssignment
"NvimInvalidOperator xxx links to NvimInvalid
"NvimInvalidUnaryOperator xxx links to NvimInvalidOperator
"NvimInvalidUnaryPlus xxx links to NvimInvalidUnaryOperator
"NvimInvalidUnaryMinus xxx links to NvimInvalidUnaryOperator
"NvimInvalidNot xxx links to NvimInvalidUnaryOperator
"NvimInvalidBinaryOperator xxx links to NvimInvalidOperator
"NvimInvalidComparison xxx links to NvimInvalidBinaryOperator
"NvimInvalidComparisonModifier xxx links to NvimInvalidComparison
"NvimInvalidBinaryPlus xxx links to NvimInvalidBinaryOperator
"NvimInvalidBinaryMinus xxx links to NvimInvalidBinaryOperator
"NvimInvalidConcat xxx links to NvimInvalidBinaryOperator
"NvimInvalidConcatOrSubscript xxx links to NvimInvalidConcat
"NvimInvalidOr  xxx links to NvimInvalidBinaryOperator
"NvimInvalidAnd xxx links to NvimInvalidBinaryOperator
"NvimInvalidMultiplication xxx links to NvimInvalidBinaryOperator
"NvimInvalidDivision xxx links to NvimInvalidBinaryOperator
"NvimInvalidMod xxx links to NvimInvalidBinaryOperator
"NvimInvalidTernary xxx links to NvimInvalidOperator
"NvimInvalidTernaryColon xxx links to NvimInvalidTernary
"NvimInvalidDelimiter xxx links to NvimInvalid
"NvimInvalidParenthesis xxx links to NvimInvalidDelimiter
"NvimInvalidLambda xxx links to NvimInvalidParenthesis
"NvimInvalidNestingParenthesis xxx links to NvimInvalidParenthesis
"NvimInvalidCallingParenthesis xxx links to NvimInvalidParenthesis
"NvimInvalidSubscript xxx links to NvimInvalidParenthesis
"NvimInvalidSubscriptBracket xxx links to NvimInvalidSubscript
"NvimInvalidSubscriptColon xxx links to NvimInvalidSubscript
"NvimInvalidCurly xxx links to NvimInvalidSubscript
"NvimInvalidContainer xxx links to NvimInvalidParenthesis
"NvimInvalidDict xxx links to NvimInvalidContainer
"NvimInvalidList xxx links to NvimInvalidContainer
"NvimInvalidValue xxx links to NvimInvalid
"NvimInvalidIdentifier xxx links to NvimInvalidValue
"NvimInvalidIdentifierScope xxx links to NvimInvalidIdentifier
"NvimInvalidIdentifierScopeDelimiter xxx links to NvimInvalidIdentifier
"NvimInvalidIdentifierName xxx links to NvimInvalidIdentifier
"NvimInvalidIdentifierKey xxx links to NvimInvalidIdentifier
"NvimInvalidColon xxx links to NvimInvalidDelimiter
"NvimInvalidComma xxx links to NvimInvalidDelimiter
"NvimInvalidArrow xxx links to NvimInvalidDelimiter
"NvimInvalidRegister xxx links to NvimInvalidValue
"NvimInvalidNumber xxx links to NvimInvalidValue
"NvimInvalidFloat xxx links to NvimInvalidNumber
"NvimInvalidNumberPrefix xxx links to NvimInvalidNumber
"NvimInvalidOptionSigil xxx links to NvimInvalidIdentifier
"NvimInvalidOptionName xxx links to NvimInvalidIdentifier
"NvimInvalidOptionScope xxx links to NvimInvalidIdentifierScope
"NvimInvalidOptionScopeDelimiter xxx links to NvimInvalidIdentifierScopeDelimiter
"NvimInvalidEnvironmentSigil xxx links to NvimInvalidOptionSigil
"NvimInvalidEnvironmentName xxx links to NvimInvalidIdentifier
"NvimInvalidString xxx links to NvimInvalidValue
"NvimInvalidStringBody xxx links to NvimStringBody
"NvimInvalidStringQuote xxx links to NvimInvalidString
"NvimInvalidStringSpecial xxx links to NvimStringSpecial
"NvimInvalidSingleQuote xxx links to NvimInvalidStringQuote
"NvimInvalidSingleQuotedBody xxx links to NvimInvalidStringBody
"NvimInvalidSingleQuotedQuote xxx links to NvimInvalidStringSpecial
"NvimInvalidDoubleQuote xxx links to NvimInvalidStringQuote
"NvimInvalidDoubleQuotedBody xxx links to NvimInvalidStringBody
"NvimInvalidDoubleQuotedEscape xxx links to NvimInvalidStringSpecial
"NvimInvalidDoubleQuotedUnknownEscape xxx links to NvimInvalidValue
"NvimInvalidFigureBrace xxx links to NvimInvalidDelimiter
"NvimInvalidSpacing xxx links to ErrorMsg
"NvimDoubleQuotedUnknownEscape xxx links to NvimInvalidValue
"Comment        xxx ctermfg=4 guifg=Blue
"Constant       xxx ctermfg=1 guifg=Magenta
"Special        xxx ctermfg=5 guifg=SlateBlue
"Statement      xxx ctermfg=130 gui=bold guifg=Brown
"PreProc        xxx ctermfg=5 guifg=Purple
"Underlined     xxx cterm=underline ctermfg=5 gui=underline guifg=SlateBlue
"Ignore         xxx ctermfg=15 guifg=bg
"Todo           xxx ctermfg=0 ctermbg=11 guifg=Blue guibg=Yellow
"Character      xxx links to Constant
"Boolean        xxx links to Constant
"Float          xxx links to Number
"Function       xxx links to Identifier
"Conditional    xxx links to Statement
"Repeat         xxx links to Statement
"Label          xxx links to Statement
"Keyword        xxx links to Statement
"Exception      xxx links to Statement
"Include        xxx links to PreProc
"Define         xxx links to PreProc
"Macro          xxx links to PreProc
"PreCondit      xxx links to PreProc
"StorageClass   xxx links to Type
"Structure      xxx links to Type
"Typedef        xxx links to Type
"Tag            xxx links to Special
"SpecialComment xxx links to Special
"Debug          xxx links to Special
"GrepperPrompt  xxx links to Question
"IndentGuidesOdd xxx cleared
"IndentGuidesEven xxx cleared
"SyntasticError xxx links to SpellBad
"SyntasticWarning xxx links to SpellCap
"SyntasticStyleError xxx links to SyntasticError
"SyntasticStyleWarning xxx links to SyntasticWarning
"GitGutterAddDefault xxx ctermfg=2 guifg=#009900
"GitGutterChangeDefault xxx ctermfg=3 guifg=#bbbb00
"GitGutterDeleteDefault xxx ctermfg=1 guifg=#ff2222
"GitGutterChangeDeleteDefault xxx links to GitGutterChangeDefault
"GitGutterAddInvisible xxx guifg=bg
"GitGutterChangeInvisible xxx guifg=bg
"GitGutterDeleteInvisible xxx guifg=bg
"GitGutterChangeDeleteInvisible xxx links to GitGutterChangeInvisible
"GitGutterAdd   xxx links to GitGutterAddDefault
"GitGutterChange xxx links to GitGutterChangeDefault
"GitGutterDelete xxx links to GitGutterDeleteDefault
"GitGutterChangeDelete xxx links to GitGutterChangeDeleteDefault
"GitGutterAddLine xxx links to DiffAdd
"GitGutterChangeLine xxx links to DiffChange
"GitGutterDeleteLine xxx links to DiffDelete
"GitGutterChangeDeleteLine xxx links to GitGutterChangeLine
"               xxx cleared
"htmlTagName    xxx links to htmlStatement
"htmlArg        xxx links to Type
"htmlError      xxx links to Error
"htmlSpecialChar xxx links to Special
"javaScriptExpression xxx links to javaScript
"htmlString     xxx links to String
"htmlValue      xxx links to String
"htmlTagN       xxx cleared
"htmlTagError   xxx links to htmlError
"htmlEndTag     xxx links to Identifier
"htmlEvent      xxx links to javaScript
"htmlCssDefinition xxx links to Special
"htmlTag        xxx links to Function
"htmlSpecialTagName xxx links to Exception
"htmlCommentPart xxx links to Comment
"htmlCommentError xxx links to htmlError
"htmlComment    xxx links to Comment
"htmlPreStmt    xxx links to PreProc
"htmlPreError   xxx links to Error
"htmlPreAttr    xxx links to String
"htmlPreProc    xxx links to PreProc
"htmlPreProcAttrError xxx links to Error
"htmlPreProcAttrName xxx links to PreProc
"htmlLink       xxx links to Underlined
"javaScript     xxx cleared
"htmlStrike     xxx cterm=underline gui=underline
"htmlBoldUnderline xxx cterm=bold,underline gui=bold,underline
"htmlBoldItalic xxx cterm=bold,italic gui=bold,italic
"htmlBold       xxx cterm=bold gui=bold
"htmlBoldUnderlineItalic xxx cterm=bold,underline,italic gui=bold,underline,italic
"htmlBoldItalicUnderline xxx links to htmlBoldUnderlineItalic
"htmlUnderlineBold xxx links to htmlBoldUnderline
"htmlUnderlineItalic xxx cterm=underline,italic gui=underline,italic
"htmlUnderline  xxx cterm=underline gui=underline
"htmlUnderlineBoldItalic xxx links to htmlBoldUnderlineItalic
"htmlUnderlineItalicBold xxx links to htmlBoldUnderlineItalic
"htmlItalicBold xxx links to htmlBoldItalic
"htmlItalicUnderline xxx links to htmlUnderlineItalic
"htmlItalic     xxx cterm=italic gui=italic
"htmlItalicBoldUnderline xxx links to htmlBoldUnderlineItalic
"htmlItalicUnderlineBold xxx links to htmlBoldUnderlineItalic
"htmlLeadingSpace xxx links to None
"htmlH1         xxx links to Title
"htmlH2         xxx links to htmlH1
"htmlH3         xxx links to htmlH2
"htmlH4         xxx links to htmlH3
"htmlH5         xxx links to htmlH4
"htmlH6         xxx links to htmlH5
"htmlTitle      xxx links to Title
"cssStyle       xxx cleared
"htmlHead       xxx links to PreProc
"jsNoise        xxx links to Noise
"jsObjectProp   xxx cleared
"jsFuncCall     xxx links to Function
"jsPrototype    xxx links to Special
"jsTaggedTemplate xxx links to StorageClass
"jsDot          xxx links to Noise
"jsParensError  xxx links to Error
"jsStorageClass xxx links to StorageClass
"jsDestructuringBlock xxx cleared
"jsDestructuringArray xxx cleared
"jsVariableDef  xxx cleared
"jsFlowDefinition xxx cleared
"jsOperatorKeyword xxx links to jsOperator
"jsOperator     xxx links to Operator
"jsBooleanTrue  xxx links to Boolean
"jsBooleanFalse xxx links to Boolean
"jsImport       xxx links to Include
"jsModuleAsterisk xxx links to Noise
"jsModuleKeyword xxx cleared
"jsModuleGroup  xxx cleared
"jsFlowImportType xxx cleared
"jsExport       xxx links to Include
"jsExportDefault xxx links to StorageClass
"jsFlowTypeStatement xxx cleared
"jsModuleAs     xxx links to Include
"jsFrom         xxx links to Include
"jsModuleComma  xxx links to jsNoise
"jsExportDefaultGroup xxx links to jsExportDefault
"jsString       xxx links to String
"jsFlowTypeKeyword xxx cleared
"jsSpecial      xxx links to Special
"jsTemplateExpression xxx cleared
"jsTemplateString xxx links to String
"jsNumber       xxx links to Number
"jsFloat        xxx links to Float
"jsTemplateBraces xxx links to Noise
"jsRegexpCharClass xxx links to Character
"jsRegexpBoundary xxx links to SpecialChar
"jsRegexpBackRef xxx links to SpecialChar
"jsRegexpQuantifier xxx links to SpecialChar
"jsRegexpOr     xxx links to Conditional
"jsRegexpMod    xxx links to SpecialChar
"jsRegexpGroup  xxx links to jsRegexpString
"jsRegexpString xxx links to String
"jsObjectSeparator xxx links to Noise
"jsObjectShorthandProp xxx links to jsObjectKey
"jsFunctionKey  xxx cleared
"jsObjectValue  xxx cleared
"jsObjectKey    xxx cleared
"jsObjectKeyString xxx links to String
"jsBrackets     xxx links to Noise
"jsFuncArgs     xxx cleared
"jsObjectKeyComputed xxx cleared
"jsObjectColon  xxx links to jsNoise
"jsObjectFuncName xxx links to Function
"jsObjectMethodType xxx links to Type
"jsObjectStringKey xxx links to String
"jsNull         xxx links to Type
"jsReturn       xxx links to Statement
"jsUndefined    xxx links to Type
"jsNan          xxx links to Number
"jsThis         xxx links to Special
"jsSuper        xxx links to Constant
"jsBlock        xxx cleared
"jsBlockLabel   xxx links to Identifier
"jsBlockLabelKey xxx links to jsBlockLabel
"jsStatement    xxx links to Statement
"jsConditional  xxx links to Conditional
"jsParenIfElse  xxx cleared
"jsCommentIfElse xxx links to jsComment
"jsIfElseBlock  xxx cleared
"jsParenSwitch  xxx cleared
"jsRepeat       xxx links to Repeat
"jsParenRepeat  xxx cleared
"jsForAwait     xxx links to Keyword
"jsDo           xxx links to Repeat
"jsRepeatBlock  xxx cleared
"jsLabel        xxx links to Label
"jsSwitchColon  xxx links to Noise
"jsSwitchCase   xxx cleared
"jsTry          xxx links to Exception
"jsTryCatchBlock xxx cleared
"jsFinally      xxx links to Exception
"jsFinallyBlock xxx cleared
"jsCatch        xxx links to Exception
"jsParenCatch   xxx cleared
"jsException    xxx links to Exception
"jsAsyncKeyword xxx links to Keyword
"jsSwitchBlock  xxx cleared
"jsGlobalObjects xxx links to Constant
"jsGlobalNodeObjects xxx links to Constant
"jsExceptions   xxx links to Constant
"jsBuiltins     xxx links to Constant
"jsFutureKeys   xxx cleared
"jsDomErrNo     xxx links to Constant
"jsDomNodeConsts xxx links to Constant
"jsHtmlEvents   xxx links to Special
"jsSpreadExpression xxx cleared
"jsBracket      xxx cleared
"jsParens       xxx links to Noise
"jsParen        xxx cleared
"jsParensDecorator xxx links to jsParens
"jsParenDecorator xxx cleared
"jsParensIfElse xxx links to jsParens
"jsParensRepeat xxx links to jsParens
"jsCommentRepeat xxx links to jsComment
"jsParensSwitch xxx links to jsParens
"jsParensCatch  xxx links to jsParens
"jsFuncParens   xxx links to Noise
"jsFuncArgCommas xxx cleared
"jsComment      xxx links to Comment
"jsFuncArgExpression xxx cleared
"jsRestExpression xxx links to jsFuncArgs
"jsFlowArgumentDef xxx cleared
"jsCommentFunction xxx links to jsComment
"jsFuncBlock    xxx cleared
"jsFlowReturn   xxx cleared
"jsClassBraces  xxx links to Noise
"jsClassFuncName xxx links to jsFuncName
"jsClassMethodType xxx links to Type
"jsArrowFunction xxx links to Type
"jsArrowFuncArgs xxx links to jsFuncArgs
"jsGenerator    xxx links to jsFunction
"jsDecorator    xxx links to Special
"jsClassProperty xxx links to jsObjectKey
"jsClassPropertyComputed xxx cleared
"jsClassStringKey xxx links to String
"jsClassBlock   xxx cleared
"jsFuncBraces   xxx links to Noise
"jsIfElseBraces xxx links to Noise
"jsTryCatchBraces xxx links to Noise
"jsFinallyBraces xxx links to Noise
"jsSwitchBraces xxx links to Noise
"jsRepeatBraces xxx links to Noise
"jsDestructuringBraces xxx links to Noise
"jsDestructuringProperty xxx links to jsFuncArgs
"jsDestructuringAssignment xxx links to jsObjectKey
"jsDestructuringNoise xxx links to Noise
"jsDestructuringPropertyComputed xxx cleared
"jsDestructuringPropertyValue xxx cleared
"jsObjectBraces xxx links to Noise
"jsObject       xxx cleared
"jsBraces       xxx links to Noise
"jsModuleBraces xxx links to Noise
"jsSpreadOperator xxx links to Operator
"jsRestOperator xxx links to Operator
"jsTernaryIfOperator xxx links to Operator
"jsTernaryIf    xxx cleared
"jsFuncName     xxx links to Function
"jsFlowFunctionGroup xxx cleared
"jsFuncArgOperator xxx links to jsFuncArgs
"jsArguments    xxx links to Special
"jsFunction     xxx links to Type
"jsClassKeyword xxx links to Keyword
"jsExtendsKeyword xxx links to Keyword
"jsClassNoise   xxx links to Noise
"jsFlowClassFunctionGroup xxx cleared
"jsFlowClassGroup xxx cleared
"jsCommentClass xxx links to jsComment
"jsClassDefinition xxx links to jsFuncName
"jsClassValue   xxx cleared
"jsFlowClassDef xxx cleared
"jsDestructuringValue xxx cleared
"jsDestructuringValueAssignment xxx cleared
"jsCommentTodo  xxx links to Todo
"jsEnvComment   xxx links to PreProc
"jsDecoratorFunction xxx links to Function
"jsCharacter    xxx links to Character
"jsBranch       xxx links to Conditional
"jsError        xxx links to Error
"jsOf           xxx links to Operator
"Noise          xxx cleared
"jsDomElemAttrs xxx links to Label
"jsDomElemFuncs xxx links to PreProc
"jsHtmlElemAttrs xxx links to Label
"jsHtmlElemFuncs xxx links to PreProc
"jsCssStyles    xxx links to Label
"htmlCssStyleComment xxx links to Comment
"htmlScriptTag  xxx links to htmlTag
"htmlEventSQ    xxx links to htmlEvent
"htmlEventDQ    xxx links to htmlEvent
"vbConditional  xxx links to Conditional
"vbOperator     xxx links to Operator
"vbBoolean      xxx links to Boolean
"vbConst        xxx links to Constant
"vbRepeat       xxx links to Repeat
"vbEvents       xxx links to Special
"vbFunction     xxx links to Identifier
"vbMethods      xxx links to PreProc
"vbStatement    xxx links to Statement
"vbKeyword      xxx links to Statement
"vbTodo         xxx links to Todo
"vbTypes        xxx links to Type
"vbDefine       xxx links to Constant
"vbNumber       xxx links to Number
"vbFloat        xxx links to Float
"vbString       xxx links to String
"vbComment      xxx links to Comment
"vbLineNumber   xxx links to Comment
"vbTypeSpecifier xxx links to Type
"vbError        xxx links to Error
"vbIdentifier   xxx links to Identifier
"cssTagName     xxx links to Statement
"cssSelectorOp  xxx links to Special
"cssSelectorOp2 xxx links to Special
"cssUnicodeEscape xxx links to Special
"cssStringQ     xxx links to String
"cssStringQQ    xxx links to String
"cssAttributeSelector xxx links to String
"cssClassNameDot xxx links to Function
"cssClassName   xxx links to Function
"cssIdentifier  xxx links to Function
"cssUnitDecorators xxx links to Number
"cssValueInteger xxx links to Number
"cssValueNumber xxx links to Number
"cssValueLength xxx links to Number
"cssValueAngle  xxx links to Number
"cssValueTime   xxx links to Number
"cssValueFrequency xxx links to Number
"cssIncludeKeyword xxx links to atKeyword
"cssMediaProp   xxx links to cssProp
"cssMediaKeyword xxx links to Statement
"cssMediaAttr   xxx links to cssAttr
"cssVendor      xxx links to Comment
"cssMediaType   xxx links to Special
"cssMediaComma  xxx links to Normal
"cssComment     xxx links to Comment
"cssMediaBlock  xxx cleared
"cssInclude     xxx links to Include
"cssBraces      xxx links to Function
"cssColor       xxx links to Constant
"cssURL         xxx links to String
"cssImportant   xxx links to Special
"cssError       xxx links to Error
"cssFunction    xxx links to Constant
"cssDefinition  xxx cleared
"cssPseudoClass xxx cleared
"cssPagePseudo  xxx links to PreProc
"cssPageWrap    xxx cleared
"cssPage        xxx links to atKeyword
"cssPageMargin  xxx links to atKeyword
"cssPageProp    xxx links to cssProp
"cssAttrRegion  xxx cleared
"cssHacks       xxx links to Comment
"cssKeyFrameWrap xxx cleared
"cssKeyFrame    xxx links to atKeyword
"cssKeyFrameSelector xxx links to Constant
"cssFontDescriptorBlock xxx cleared
"cssFontDescriptor xxx links to Special
"cssCommonAttr  xxx links to cssAttr
"cssFontDescriptorProp xxx links to cssProp
"cssFontDescriptorFunction xxx links to Constant
"cssFontDescriptorAttr xxx links to cssAttr
"cssNoise       xxx links to Noise
"cssFunctionName xxx links to Function
"cssFunctionComma xxx links to Function
"cssGradientAttr xxx links to cssAttr
"cssAnimationProp xxx links to cssProp
"cssAnimationAttr xxx links to cssAttr
"cssBackgroundProp xxx links to cssProp
"cssBackgroundAttr xxx links to cssAttr
"cssBorderProp  xxx links to cssProp
"cssBorderAttr  xxx links to cssAttr
"cssBoxProp     xxx links to cssProp
"cssBoxAttr     xxx links to cssAttr
"cssColorProp   xxx links to cssProp
"cssDimensionProp xxx links to cssProp
"cssFlexibleBoxProp xxx links to cssProp
"cssFlexibleBoxAttr xxx links to cssAttr
"cssFontProp    xxx links to cssProp
"cssFontAttr    xxx links to cssAttr
"cssMultiColumnProp xxx links to cssProp
"cssMultiColumnAttr xxx links to cssAttr
"cssGeneratedContentProp xxx links to cssProp
"cssGeneratedContentAttr xxx links to cssAttr
"cssGridProp    xxx links to cssProp
"cssHyerlinkProp xxx links to cssProp
"cssListProp    xxx links to cssProp
"cssListAttr    xxx links to cssAttr
"cssPositioningProp xxx links to cssProp
"cssPositioningAttr xxx links to cssAttr
"cssPrintAttr   xxx links to cssAttr
"cssTableProp   xxx links to cssProp
"cssTableAttr   xxx links to cssAttr
"cssTextProp    xxx links to cssProp
"cssTextAttr    xxx links to cssAttr
"cssTransformProp xxx links to cssProp
"cssTransitionProp xxx links to cssProp
"cssTransitionAttr xxx links to cssAttr
"cssUIProp      xxx links to cssProp
"cssUIAttr      xxx links to cssAttr
"cssIEUIAttr    xxx links to cssAttr
"cssIEUIProp    xxx links to cssProp
"cssAuralProp   xxx links to cssProp
"cssAuralAttr   xxx links to cssAttr
"cssMobileTextProp xxx links to cssProp
"cssBraceError  xxx links to Error
"cssAttrComma   xxx links to Special
"cssPseudoClassId xxx links to PreProc
"cssPseudoClassFn xxx cleared
"cssSpecialCharQQ xxx cleared
"cssSpecialCharQ xxx cleared
"cssDeprecated  xxx links to Error
"cssProp        xxx links to StorageClass
"cssContentForPagedMediaProp xxx links to cssProp
"cssLineboxProp xxx links to cssProp
"cssMarqueeProp xxx links to cssProp
"cssPagedMediaProp xxx links to cssProp
"cssPrintProp   xxx links to cssProp
"cssRubyProp    xxx links to cssProp
"cssSpeechProp  xxx links to cssProp
"cssRenderProp  xxx links to cssProp
"cssAttr        xxx links to Constant
"cssContentForPagedMediaAttr xxx links to cssAttr
"cssDimensionAttr xxx links to cssAttr
"cssGridAttr    xxx links to cssAttr
"cssHyerlinkAttr xxx links to cssAttr
"cssLineboxAttr xxx links to cssAttr
"cssMarginAttr  xxx links to cssAttr
"cssMarqueeAttr xxx links to cssAttr
"cssPaddingAttr xxx links to cssAttr
"cssPagedMediaAttr xxx links to cssAttr
"cssRubyAttr    xxx links to cssAttr
"cssSpeechAttr  xxx links to cssAttr
"cssTransformAttr xxx links to cssAttr
"cssRenderAttr  xxx links to cssAttr
"cssPseudoClassLang xxx links to Constant
"atKeyword      xxx links to PreProc
"cssMedia       xxx links to atKeyword
"cssUnicodeRange xxx links to Constant
"cssLength      xxx cleared
"cssString      xxx links to String
"htmlStyleArg   xxx links to htmlString
"htmlStatement  xxx links to Statement
"None           xxx cleared
"htmlSpecial    xxx links to Special
"coffeeStatement xxx links to Statement
"coffeeRepeat   xxx links to Repeat
"coffeeConditional xxx links to Conditional
"coffeeException xxx links to Exception
"coffeeKeyword  xxx links to Keyword
"coffeeOperator xxx links to Operator
"coffeeExtendedOp xxx links to coffeeOperator
"coffeeSpecialOp xxx links to SpecialChar
"coffeeBoolean  xxx links to Boolean
"coffeeGlobal   xxx links to Type
"coffeeSpecialVar xxx links to Special
"coffeeSpecialIdent xxx links to Identifier
"coffeeObject   xxx links to Structure
"coffeeConstant xxx links to Constant
"coffeeEscape   xxx links to SpecialChar
"coffeeInterp   xxx cleared
"coffeeString   xxx links to String
"coffeeNumber   xxx links to Number
"coffeeFloat    xxx links to Float
"coffeeReservedError xxx links to Error
"coffeeObjAssign xxx links to Identifier
"coffeeTodo     xxx links to Todo
"coffeeComment  xxx links to Comment
"coffeeBlockComment xxx links to coffeeComment
"coffeeHeregexComment xxx links to coffeeComment
"coffeeEmbedDelim xxx links to Delimiter
"coffeeEmbed    xxx cleared
"coffeeInterpDelim xxx links to PreProc
"coffeeRegexCharSet xxx links to coffeeRegex
"coffeeRegex    xxx links to String
"coffeeHeregexCharSet xxx links to coffeeHeregex
"coffeeHeregex  xxx links to coffeeRegex
"coffeeHeredoc  xxx links to String
"coffeeSpaceError xxx links to Error
"coffeeSemicolonError xxx links to Error
"coffeeDotAccess xxx links to coffeeExtendedOp
"coffeeProtoAccess xxx links to coffeeExtendedOp
"coffeeCurly    xxx links to coffeeBlock
"coffeeCurlies  xxx cleared
"coffeeBracket  xxx links to coffeeBlock
"coffeeBrackets xxx cleared
"coffeeParen    xxx links to coffeeBlock
"coffeeParens   xxx cleared
"coffeeBlock    xxx links to coffeeSpecialOp
"coffeeScript   xxx cleared
"pythonStatement xxx links to Statement
"pythonFunction xxx links to Function
"pythonConditional xxx links to Conditional
"pythonRepeat   xxx links to Repeat
"pythonOperator xxx links to Operator
"pythonException xxx links to Exception
"pythonInclude  xxx links to Include
"pythonAsync    xxx links to Statement
"pythonDecorator xxx links to Define
"pythonDecoratorName xxx links to Function
"pythonDoctestValue xxx links to Define
"pythonMatrixMultiply xxx cleared
"pythonTodo     xxx links to Todo
"pythonComment  xxx links to Comment
"pythonQuotes   xxx links to String
"pythonEscape   xxx links to Special
"pythonString   xxx links to String
"pythonTripleQuotes xxx links to pythonQuotes
"pythonSpaceError xxx cleared
"pythonDoctest  xxx links to Special
"pythonRawString xxx links to String
"pythonNumber   xxx links to Number
"pythonBuiltin  xxx links to Function
"pythonAttribute xxx cleared
"pythonExceptions xxx links to Structure
"pythonSync     xxx cleared
"jediIgnore     xxx links to Ignore
"jediFatSymbol  xxx links to Ignore
"jediFat        xxx cterm=bold,underline ctermbg=0 gui=bold,underline guibg=#555555
"jediSpace      xxx links to Normal
"jediFunction   xxx ctermfg=6 ctermbg=0 guifg=Black guibg=Grey
"jediUsage      xxx cterm=reverse gui=standout
"shDoError      xxx links to Error
"shIfError      xxx links to Error
"shInError      xxx links to Error
"shCaseError    xxx links to Error
"shEsacError    xxx links to Error
"shCurlyError   xxx links to Error
"shParenError   xxx links to Error
"shTestError    xxx links to Error
"shOK           xxx cleared
"shArithmetic   xxx links to Special
"shCaseEsac     xxx cleared
"shComment      xxx links to Comment
"shDeref        xxx links to shShellVariables
"shDo           xxx cleared
"shDerefSimple  xxx links to shDeref
"shEcho         xxx links to shString
"shEscape       xxx links to shCommandSub
"shNumber       xxx links to Number
"shOperator     xxx links to Operator
"shPosnParm     xxx links to shShellVariables
"shExSingleQuote xxx links to shSingleQuote
"shExDoubleQuote xxx links to shDoubleQuote
"shHereString   xxx links to shRedir
"shRedir        xxx links to shOperator
"shSingleQuote  xxx links to shString
"shDoubleQuote  xxx links to shString
"shStatement    xxx links to Statement
"shVariable     xxx links to shSetList
"shAlias        xxx links to Identifier
"shTest         xxx cleared
"shCtrlSeq      xxx links to Special
"shSpecial      xxx links to Special
"shParen        xxx links to shArithmetic
"bashSpecialVariables xxx cleared
"bashStatement  xxx cleared
"shIf           xxx cleared
"shFor          xxx cleared
"shCaseStart    xxx links to shConditional
"shCase         xxx cleared
"shCaseBar      xxx links to shConditional
"shCaseIn       xxx links to shConditional
"shCaseCommandSub xxx links to shCommandSub
"shCaseExSingleQuote xxx cleared
"shCaseSingleQuote xxx links to shSingleQuote
"shCaseDoubleQuote xxx links to shDoubleQuote
"shStringSpecial xxx links to shSpecial
"shCaseRange    xxx cleared
"shColon        xxx links to shComment
"shCommandSub   xxx links to Special
"shExpr         xxx cleared
"shHereDoc      xxx links to shString
"shSetList      xxx links to Identifier
"shSource       xxx links to shOperator
"shCmdParenRegion xxx cleared
"shOption       xxx links to shCommandSub
"shSubSh        xxx cleared
"shComma        xxx cleared
"shDerefSpecial xxx links to shDeref
"shDerefVar     xxx links to shDeref
"shDerefWordError xxx links to Error
"shDerefPSR     xxx links to shDerefOp
"shDerefPPS     xxx links to shDerefOp
"shDerefOff     xxx cleared
"shDerefOp      xxx links to shOperator
"shDerefVarArray xxx cleared
"shDerefOpError xxx links to Error
"shEchoQuote    xxx links to shString
"shCharClass    xxx links to Identifier
"shDblBrace     xxx cleared
"shBeginHere    xxx links to shRedir
"shHerePayload  xxx links to shHereDoc
"shWrapLineOperator xxx links to shOperator
"shSetOption    xxx links to shOption
"shAtExpr       xxx links to shSetList
"shDblParen     xxx cleared
"shFunctionKey  xxx links to Function
"shFunctionOne  xxx cleared
"shFunctionTwo  xxx cleared
"shConditional  xxx links to Conditional
"shForPP        xxx links to shLoop
"shSet          xxx links to Statement
"shTestOpr      xxx links to shConditional
"shTouch        xxx cleared
"shSpecialNoZS  xxx links to shSpecial
"shEchoDelim    xxx links to shOperator
"shQuickComment xxx links to shComment
"shSpecialVar   xxx cleared
"shEmbeddedEcho xxx links to shString
"shTouchCmd     xxx links to shStatement
"shPattern      xxx links to shString
"shExprRegion   xxx links to Delimiter
"shSpecialNxt   xxx links to shSpecial
"shSubShRegion  xxx links to shOperator
"shRange        xxx links to shOperator
"shNoQuote      xxx links to shDoubleQuote
"shString       xxx links to String
"shAstQuote     xxx links to shDoubleQuote
"shTestDoubleQuote xxx links to shString
"shTestSingleQuote xxx links to shString
"shTestPattern  xxx links to shString
"shLoop         xxx links to shStatement
"shCurlyIn      xxx cleared
"shRepeat       xxx links to Repeat
"shSnglCase     xxx links to Statement
"shQuote        xxx links to shOperator
"shCmdSubRegion xxx links to shShellVariables
"shArithRegion  xxx links to shShellVariables
"shSkipInitWS   xxx cleared
"shBkslshSnglQuote xxx cleared
"shBkslshDblQuote xxx cleared
"shTodo         xxx links to Todo
"shHereDoc01    xxx links to shRedir
"shHereDoc02    xxx links to shRedir
"shHereDoc03    xxx links to shRedir
"shHereDoc04    xxx links to shRedir
"shHereDoc05    xxx links to shRedir
"shHereDoc06    xxx links to shRedir
"shHereDoc07    xxx links to shRedir
"shHereDoc08    xxx links to shRedir
"shHereDoc09    xxx links to shRedir
"shHereDoc10    xxx links to shRedir
"shHereDoc11    xxx links to shRedir
"shHereDoc12    xxx links to shRedir
"shHereDoc13    xxx links to shRedir
"shHereDoc14    xxx links to shRedir
"shHereDoc15    xxx links to shRedir
"shVarAssign    xxx cleared
"shSetListDelim xxx links to shOperator
"shFunction     xxx links to Function
"shFunctionStart xxx cleared
"shFunctionThree xxx cleared
"shFunctionFour xxx cleared
"shDerefPattern xxx cleared
"shDerefString  xxx links to shDoubleQuote
"shDerefEscape  xxx cleared
"shDerefDelim   xxx links to shOperator
"shDerefLen     xxx cleared
"shDerefPPSleft xxx cleared
"shDerefPPSright xxx cleared
"shDerefPSRleft xxx cleared
"shDerefPSRright xxx cleared
"shCondError    xxx links to Error
"shCaseEsacSync xxx cleared
"shDoSync       xxx cleared
"shForSync      xxx cleared
"shIfSync       xxx cleared
"shUntilSync    xxx cleared
"shWhileSync    xxx cleared
"shShellVariables xxx links to PreProc
"shDerefPOL     xxx links to shDerefOp
"shFunctionName xxx links to Function
"puppetDefType  xxx links to Define
"puppetDefName  xxx links to Type
"puppetDefArguments xxx cleared
"puppetNodeRe   xxx links to Type
"puppetDefine   xxx cleared
"puppetType     xxx links to Type
"puppetArgument xxx links to Identifier
"puppetString   xxx links to String
"puppetComment  xxx links to Comment
"puppetMultilineComment xxx links to Comment
"puppetTypeName xxx links to Statement
"puppetTypeDefault xxx links to Type
"puppetInstance xxx cleared
"puppetTypeRArrow xxx cleared
"puppetParamName xxx links to Identifier
"puppetParam    xxx cleared
"puppetParamRArrow xxx cleared
"puppetVariable xxx links to Identifier
"puppetParen    xxx links to Delimiter
"puppetBrace    xxx links to Delimiter
"puppetBrack    xxx links to Delimiter
"puppetParamString xxx cleared
"puppetParamKeyword xxx links to Keyword
"puppetParamSpecial xxx links to Boolean
"puppetParamDigits xxx links to String
"puppetFunction xxx links to Function
"puppetNotVariable xxx links to String
"puppetKeyword  xxx links to Keyword
"puppetControl  xxx links to Statement
"puppetSpecial  xxx links to Special
"puppetClass    xxx links to Include
"puppetRegexParen xxx links to Delimiter
"puppetRegexBrace xxx links to Delimiter
"puppetRegexOrpuppetRegexBrack xxx cleared
"puppetRegexComment xxx links to Comment
"puppetRegex    xxx links to Constant
"puppetRegexSpecChar xxx links to SpecialChar
"puppetRegexSubName xxx links to Identifier
"puppetRegexBrack xxx links to Delimiter
"puppetRegexOr  xxx links to Delimiter
"puppetRegexSpecialChar xxx cleared
"puppetTodo     xxx links to Todo
"puppetRegexAngBrack xxx links to Delimiter
"puppetRegexTick xxx links to Delimiter
"puppetTypeBrack xxx links to Delimiter
"puppetTypeBrace xxx links to Delimiter
"puppetDelimiter xxx links to Delimiter
"phpRegion      xxx cleared
"phpRegionAsp   xxx cleared
"phpRegionSc    xxx cleared
"sqlSpecial     xxx links to Special
"sqlKeyword     xxx links to sqlSpecial
"sqlOperator    xxx links to sqlStatement
"sqlStatement   xxx links to Statement
"sqlType        xxx links to Type
"Quote          xxx links to Special
"sqlString      xxx links to String
"sqlNumber      xxx links to Number
"sqlTodo        xxx links to Todo
"sqlComment     xxx links to Comment
"sqlFold        xxx cleared
"sqlFunction    xxx links to Function
"phpEnvVar      xxx links to Identifier
"phpIntVar      xxx links to Identifier
"phpCoreConstant xxx links to Constant
"phpConstant    xxx links to Constant
"phpFunctions   xxx links to Function
"phpMethods     xxx links to Function
"phpConditional xxx links to Conditional
"phpRepeat      xxx links to Repeat
"phpLabel       xxx links to Label
"phpStatement   xxx links to Statement
"phpKeyword     xxx links to Statement
"phpType        xxx links to Type
"phpStructure   xxx links to Structure
"phpOperator    xxx links to Operator
"phpRelation    xxx links to Operator
"phpMemberSelector xxx links to Structure
"phpVarSelector xxx links to Operator
"phpIdentifier  xxx links to Identifier
"phpParent      xxx links to Delimiter
"phpIdentifierSimply xxx links to Identifier
"phpIdentifierComplexP xxx cleared
"phpIdentifierComplex xxx cleared
"phpBrackets    xxx links to Delimiter
"phpInterpSimpleError xxx links to Error
"phpInterpBogusDollarCurley xxx links to Error
"phpinterpSimpleBracketsInner xxx links to String
"phpInterpSimpleBrackets xxx cleared
"phpInterpSimple xxx cleared
"phpInterpVarname xxx links to Identifier
"phpInterpMethodName xxx cleared
"phpInterpSimpleCurly xxx links to Delimiter
"phpInterpDollarCurley1Helper xxx cleared
"phpInterpDollarCurly1 xxx links to Error
"phpInterpDollarCurley2Helper xxx cleared
"phpInterpDollarCurly2 xxx links to Error
"phpInterpComplex xxx cleared
"phpMethodsVar  xxx cleared
"phpInclude     xxx links to Include
"phpDefine      xxx links to Define
"phpBoolean     xxx links to Boolean
"phpNumber      xxx links to Number
"phpFloat       xxx links to Float
"phpBackslashSequences xxx links to SpecialChar
"phpOctalError  xxx links to Error
"phpBackslashDoubleQuote xxx links to SpecialChar
"phpBackslashSingleQuote xxx links to SpecialChar
"phpTodo        xxx links to Todo
"phpComment     xxx links to Comment
"phpStringDouble xxx links to String
"phpBacktick    xxx links to String
"phpStringSingle xxx links to String
"phpHereDoc     xxx cleared
"phpNowDoc      xxx cleared
"phpException   xxx links to Exception
"phpParentError xxx links to Error
"phpStorageClass xxx links to StorageClass
"phpFoldFunction xxx cleared
"phpFoldClass   xxx cleared
"phpFoldInterface xxx cleared
"phpFoldTry     xxx cleared
"phpFoldCatch   xxx cleared
"phpSCKeyword   xxx links to StorageClass
"phpFoldHtmlInside xxx cleared
"phpFCKeyword   xxx links to Define
"phpSpecialFunction xxx links to phpOperator
"phpClasses     xxx links to phpFunctions
"phpInterfaces  xxx links to phpConstant
"phpAssignByRef xxx links to Type
"phpComparison  xxx links to Statement
"phpRegionSync  xxx cleared
"phpDocCustomTags xxx links to Type
"phpDocTags     xxx links to PreProc
"phpDocTodo     xxx links to Todo
"phpBaselib     xxx links to Function
"phpIdentifierConst xxx links to Delimiter
"cssSelector    xxx links to Function
"cssDefineBlock xxx cleared
"cssCommonVal   xxx links to Type
"cssTodo        xxx cleared
"cssBackgroundVal xxx links to Type
"cssFuncVal     xxx links to Function
"cssVisualProp  xxx links to StorageClass
"cssColorVal    xxx links to Constant
"cssBorderVal   xxx links to Type
"cssFontVal     xxx links to Type
"cssTextVal     xxx links to Type
"cssListVal     xxx links to Type
"cssVisualVal   xxx links to Type
"cssCommonProp  xxx links to StorageClass
"cssSpecialProp xxx links to Special
"cssRuleProp    xxx links to PreProc
"cssPseudo      xxx links to PreProc
"cssAdvancedProp xxx links to StorageClass
"cssAdvancedVal xxx links to Function
"stylusVariable xxx links to Identifier
"stylusCssAttribute xxx cleared
"stylusVariableAssignment xxx cleared
"stylusProperty xxx cleared
"stylusFunction xxx links to Function
"stylusControl  xxx links to PreProc
"stylusUserFunction xxx cleared
"stylusInterpolation xxx links to Delimiter
"stylusComment  xxx links to Comment
"stylusImportList xxx cleared
"stylusImport   xxx cleared
"stylusAmpersand xxx links to Character
"stylusClass    xxx links to Type
"stylusClassChar xxx links to Special
"stylusEscape   xxx links to Special
"stylusId       xxx links to Identifier
"stylusIdChar   xxx links to Special
"cssPagingProp  xxx cleared
"sassEndOfLineComment xxx links to sassComment
"scssComment    xxx links to sassComment
"sassDefault    xxx links to cssImportant
"sassDefinition xxx cleared
"sassCssAttribute xxx cleared
"sassProperty   xxx cleared
"sassVariable   xxx links to Identifier
"sassFunction   xxx links to Function
"sassInterpolation xxx cleared
"sassVariableAssignment xxx cleared
"sassInterpolationDelimiter xxx links to Delimiter
"sassMixinName  xxx cleared
"sassMixin      xxx links to PreProc
"sassMixing     xxx links to PreProc
"sassExtend     xxx links to PreProc
"sassPlaceholder xxx links to PreProc
"sassFunctionName xxx cleared
"sassFunctionDecl xxx links to PreProc
"sassReturn     xxx links to PreProc
"sassEscape     xxx links to Special
"sassId         xxx links to Identifier
"sassIdChar     xxx links to Special
"sassClass      xxx links to Type
"sassClassChar  xxx links to Special
"sassAmpersand  xxx links to Character
"sassMedia      xxx links to PreProc
"sassMediaOperators xxx links to PreProc
"sassMediaQuery xxx cleared
"sassCharset    xxx links to PreProc
"sassInclude    xxx links to Include
"sassDebug      xxx links to sassControl
"sassDebugLine  xxx cleared
"sassWarn       xxx links to sassControl
"sassWarnLine   xxx cleared
"sassControl    xxx links to PreProc
"sassFor        xxx links to PreProc
"sassControlLine xxx cleared
"sassTodo       xxx links to Todo
"sassComment    xxx links to Comment
"sassCssComment xxx links to sassComment
"javascriptParenthesisBlock xxx cleared
"jadeJavascriptOutputChar xxx cleared
"jadeJavascript xxx cleared
"jadeJavascriptChar xxx cleared
"jadeBegin      xxx cleared
"jadeComment    xxx links to Comment
"jadeHtmlComment xxx links to jadeComment
"jadeTag        xxx links to Special
"jadeClassChar  xxx links to Special
"jadeIdChar     xxx links to Special
"jadePlainChar  xxx cleared
"jadeAttributes xxx cleared
"jadeBlockExpansionChar xxx links to Special
"jadeAttributesDelimiter xxx links to Identifier
"jadeHtmlArg    xxx links to htmlArg
"jadeAttributeString xxx links to String
"jadeClass      xxx links to Type
"jadeId         xxx links to Identifier
"jadeDocType    xxx links to PreProc
"jadeInterpolationDelimiter xxx links to Delimiter
"jadeInterpolation xxx cleared
"jadeInterpolationEscape xxx cleared
"jadeFilter     xxx links to PreProc
"jadeJavascriptFilter xxx cleared
"jadeCoffeescriptFilter xxx cleared
"jadePlainFilter xxx cleared
"jadeError      xxx cleared
"jadeJavascriptBlock xxx cleared
"jadeCssBlock   xxx cleared
"jsonNoise      xxx links to Noise
"jsonString     xxx links to String
"jsonStringMatch xxx cleared
"jsonQuote      xxx links to Quote
"jsonEscape     xxx links to Special
"jsonStringSQError xxx links to Error
"jsonKeyword    xxx links to Label
"jsonKeywordMatch xxx cleared
"jsonNumber     xxx links to Number
"jsonNoQuotesError xxx links to Error
"jsonTripleQuotesError xxx links to Error
"jsonNumError   xxx links to Error
"jsonCommentError xxx links to Error
"jsonSemicolonError xxx links to Error
"jsonTrailingCommaError xxx links to Error
"jsonMissingCommaError xxx links to Error
"jsonPadding    xxx links to Operator
"jsonBoolean    xxx links to Boolean
"jsonNull       xxx links to Function
"jsonBraces     xxx links to Delimiter
"jsonFold       xxx cleared
"jsonTest       xxx links to Label
"cStatement     xxx links to Statement
"cLabel         xxx links to Label
"cConditional   xxx links to Conditional
"cRepeat        xxx links to Repeat
"cTodo          xxx links to Todo
"cBadContinuation xxx links to Error
"cSpecial       xxx links to SpecialChar
"cFormat        xxx links to cSpecial
"cString        xxx links to String
"cCppString     xxx links to cString
"cSpaceError    xxx links to cError
"cCppSkip       xxx cleared
"cCharacter     xxx links to Character
"cSpecialError  xxx links to cError
"cSpecialCharacter xxx links to cSpecial
"cBadBlock      xxx cleared
"cCurlyError    xxx links to cError
"cErrInParen    xxx links to cError
"cCppParen      xxx cleared
"cErrInBracket  xxx links to cError
"cCppBracket    xxx cleared
"cBlock         xxx cleared
"cParenError    xxx links to cError
"cIncluded      xxx links to cString
"cCommentSkip   xxx links to cComment
"cCommentString xxx links to cString
"cComment2String xxx links to cString
"cCommentStartError xxx links to cError
"cUserLabel     xxx links to Label
"cBitField      xxx cleared
"cOctalZero     xxx links to PreProc
"cNumber        xxx links to Number
"cFloat         xxx links to Float
"cOctal         xxx links to Number
"cOctalError    xxx links to cError
"cNumbersCom    xxx cleared
"cParen         xxx cleared
"cBracket       xxx cleared
"cNumbers       xxx cleared
"cCommentL      xxx links to cComment
"cCommentStart  xxx links to cComment
"cComment       xxx links to Comment
"cCommentError  xxx links to cError
"cOperator      xxx links to Operator
"cType          xxx links to Type
"cStructure     xxx links to Structure
"cStorageClass  xxx links to StorageClass
"cConstant      xxx links to Constant
"cPreCondit     xxx links to PreCondit
"cPreConditMatch xxx links to cPreCondit
"cCppInIf       xxx cleared
"cCppInElse     xxx cleared
"cCppInElse2    xxx links to cCppOutIf2
"cCppOutIf      xxx cleared
"cCppOutIf2     xxx links to cCppOut
"cCppOutElse    xxx cleared
"cCppInSkip     xxx cleared
"cCppOutSkip    xxx links to cCppOutIf2
"cCppOutWrapper xxx links to cPreCondit
"cCppInWrapper  xxx links to cCppOutWrapper
"cPreProc       xxx links to PreProc
"cInclude       xxx links to Include
"cDefine        xxx links to Macro
"cMulti         xxx cleared
"cUserCont      xxx cleared
"cError         xxx links to Error
"cCppOut        xxx links to Comment
"cppStatement   xxx links to Statement
"cppAccess      xxx links to cppStatement
"cppModifier    xxx links to Type
"cppType        xxx links to Type
"cppExceptions  xxx links to Exception
"cppOperator    xxx links to Operator
"cppCast        xxx links to cppStatement
"cppStorageClass xxx links to StorageClass
"cppStructure   xxx links to Structure
"cppBoolean     xxx links to Boolean
"cppConstant    xxx links to Constant
"cppRawStringDelimiter xxx links to Delimiter
"cppRawString   xxx links to String
"cppNumber      xxx links to Number
"cppMinMax      xxx cleared
"helpHeadline   xxx links to Statement
"helpSectionDelim xxx links to PreProc
"helpIgnore     xxx links to Ignore
"helpExample    xxx links to Comment
"helpBar        xxx links to Ignore
"helpHyperTextJump xxx links to Identifier
"helpStar       xxx links to Ignore
"helpHyperTextEntry xxx links to String
"helpBacktick   xxx links to Ignore
"helpNormal     xxx cleared
"helpVim        xxx links to Identifier
"helpOption     xxx links to Type
"helpCommand    xxx links to Comment
"helpHeader     xxx links to PreProc
"helpGraphic    xxx cleared
"helpNote       xxx links to Todo
"helpWarning    xxx links to Todo
"helpDeprecated xxx links to Todo
"helpSpecial    xxx links to Special
"helpComment    xxx links to Comment
"helpConstant   xxx links to Constant
"helpString     xxx links to String
"helpCharacter  xxx links to Character
"helpNumber     xxx links to Number
"helpBoolean    xxx links to Boolean
"helpFloat      xxx links to Float
"helpIdentifier xxx links to Identifier
"helpFunction   xxx links to Function
"helpStatement  xxx links to Statement
"helpConditional xxx links to Conditional
"helpRepeat     xxx links to Repeat
"helpLabel      xxx links to Label
"helpOperator   xxx links to Operator
"helpKeyword    xxx links to Keyword
"helpException  xxx links to Exception
"helpPreProc    xxx links to PreProc
"helpInclude    xxx links to Include
"helpDefine     xxx links to Define
"helpMacro      xxx links to Macro
"helpPreCondit  xxx links to PreCondit
"helpType       xxx links to Type
"helpStorageClass xxx links to StorageClass
"helpStructure  xxx links to Structure
"helpTypedef    xxx links to Typedef
"helpSpecialChar xxx links to SpecialChar
"helpTag        xxx links to Tag
"helpDelimiter  xxx links to Delimiter
"helpSpecialComment xxx links to SpecialComment
"helpDebug      xxx links to Debug
"helpUnderlined xxx links to Underlined
"helpError      xxx links to Error
"helpTodo       xxx links to Todo
"helpURL        xxx links to String
"manReference   xxx links to PreProc
"manSectionHeading xxx links to Statement
"manTitle       xxx links to Title
"manSubHeading  xxx links to Function
"manOptionDesc  xxx links to Constant
"manUnderline   xxx cterm=underline gui=underline
"manBold        xxx cterm=bold gui=bold
"manItalic      xxx cterm=italic gui=italic
"markdownValid  xxx cleared
"markdownLineStart xxx cleared
"markdownH1     xxx links to htmlH1
"markdownH2     xxx links to htmlH2
"markdownH3     xxx links to htmlH3
"markdownH4     xxx links to htmlH4
"markdownH5     xxx links to htmlH5
"markdownH6     xxx links to htmlH6
"markdownBlockquote xxx links to Comment
"markdownListMarker xxx links to htmlTagName
"markdownOrderedListMarker xxx links to markdownListMarker
"markdownCodeBlock xxx cleared
"markdownRule   xxx links to PreProc
"markdownLineBreak xxx cleared
"markdownLinkText xxx links to htmlLink
"markdownItalic xxx links to htmlItalic
"markdownBold   xxx links to htmlBold
"markdownCode   xxx cleared
"markdownEscape xxx links to Special
"markdownError  xxx links to Error
"markdownHeadingRule xxx links to markdownRule
"markdownAutomaticLink xxx links to markdownUrl
"markdownH1Delimiter xxx links to markdownHeadingDelimiter
"markdownH2Delimiter xxx links to markdownHeadingDelimiter
"markdownH3Delimiter xxx links to markdownHeadingDelimiter
"markdownH4Delimiter xxx links to markdownHeadingDelimiter
"markdownH5Delimiter xxx links to markdownHeadingDelimiter
"markdownH6Delimiter xxx links to markdownHeadingDelimiter
"markdownLinkDelimiter xxx cleared
"markdownUrl    xxx links to Float
"markdownIdDeclaration xxx links to Typedef
"markdownUrlTitle xxx links to String
"markdownUrlDelimiter xxx links to htmlTag
"markdownUrlTitleDelimiter xxx links to Delimiter
"markdownLinkTextDelimiter xxx cleared
"markdownLink   xxx cleared
"markdownId     xxx links to Type
"markdownIdDelimiter xxx links to markdownLinkDelimiter
"markdownItalicDelimiter xxx links to markdownItalic
"markdownBoldDelimiter xxx links to markdownBold
"markdownBoldItalicDelimiter xxx links to markdownBoldItalic
"markdownBoldItalic xxx links to htmlBoldItalic
"markdownCodeDelimiter xxx links to Delimiter
"markdownFootnote xxx links to Typedef
"markdownFootnoteDefinition xxx links to Typedef
"markdownHighlightpython xxx cleared
"markdownHighlightsh xxx cleared
"markdownHighlightpuppet xxx cleared
"markdownHighlightphp xxx cleared
"markdownHighlighthtml xxx cleared
"markdownHighlightcss xxx cleared
"markdownHighlightstylus xxx cleared
"markdownHighlightscss xxx cleared
"markdownHighlightsass xxx cleared
"markdownHighlightjade xxx cleared
"markdownHighlightjavascript xxx cleared
"markdownHighlightjson xxx cleared
"markdownHighlightcoffee xxx cleared
"markdownHighlightc xxx cleared
"markdownHighlightcpp xxx cleared
"markdownHighlightsql xxx cleared
"markdownHighlighthelp xxx cleared
"markdownHighlightman xxx cleared
"markdownHeadingDelimiter xxx links to Delimiter
"SyntasticErrorSign xxx links to Error
"SyntasticWarningSign xxx links to Todo
"SyntasticStyleErrorSign xxx links to SyntasticErrorSign
"SyntasticStyleWarningSign xxx links to SyntasticWarningSign
"SyntasticStyleErrorLine xxx links to SyntasticErrorLine
"SyntasticErrorLine xxx cleared
"SyntasticStyleWarningLine xxx links to SyntasticWarningLine
"SyntasticWarningLine xxx cleared
"qfSeparator    xxx cleared
"qfFileName     xxx links to Directory
"qfLineNr       xxx links to LineNr
"qfError        xxx links to Error
