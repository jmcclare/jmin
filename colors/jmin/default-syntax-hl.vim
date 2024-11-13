"
" There are two blocks of highlighting here. They both filter the included
" syntax files in /usr/share/nvim/runtime/syntax. This does not include any
" `hi` commands from custom or plugin syntax files.
"
" The first set takes those `hi` commands and changes them all to `hi clear`
" commands. It is generated with the following command.
"
" :r!grep --no-filename -RE '^hi ' /usr/share/nvim/runtime/syntax/ 2> /dev/null | sed -e 's/ def//'| sed -e 's/ link//' | sed -rn -e 's/(hi [^ 	]*).*/\1/p' | sed -e 's/hi /hi clear /'
"
" The second set resets all of the `hi` commands in the syntax files by
" removing the `def` keyword from the commands. That set is generated with the
" following command.
"
"   :r!grep --no-filename -RE '^hi ' /usr/share/nvim/runtime/syntax/ 2> /dev/null | sed -e 's/ def//'
"
" It would be best if there were some way to filter everything nvim finds in
" `runtime/syntax` on the fly and run the commands out of memory.
"


" First set.

hi clear msidlInclude
hi clear msidlPreProc
hi clear msidlPreCondit
hi clear msidlDefine
hi clear msidlIncluded
hi clear msidlString
hi clear msidlComment
hi clear msidlTodo
hi clear msidlSpecial
hi clear msidlLiteral
hi clear msidlUUID
hi clear msidlImport
hi clear msidlEnum
hi clear msidlStruct
hi clear msidlTypedef
hi clear msidlAttribute
hi clear msidlStandardType
hi clear msidlSafeArray
hi clear par1
hi clear par2
hi clear par3
hi clear par4
hi clear par5
hi clear rexxStringConstant
hi clear rexxLabel2
hi clear doLoopSelectLabelRegion
hi clear endIterateLeaveLabelRegion
hi clear rexxLoopKeywords
hi clear rexxNumber
hi clear rexxRegularCallSignal
hi clear rexxExceptionHandling
hi clear rexxLabel
hi clear rexxCharacter
hi clear rexxParenError
hi clear rexxInParen
hi clear rexxCommentError
hi clear rexxError
hi clear rexxKeyword
hi clear rexxKeywordStatements
hi clear rexxFunction
hi clear rexxString
hi clear rexxComment
hi clear rexxTodo
hi clear rexxSpecialVariable
hi clear rexxConditional
hi clear rexxOperator
hi clear rexxMessageOperator
hi clear rexxLineComment
hi clear rexxLineContinue
hi clear rexxDirective
hi clear rexxClassDirective
hi clear rexxMethodDirective
hi clear rexxAttributeDirective
hi clear rexxRequiresDirective
hi clear rexxRoutineDirective
hi clear rexxOptionsDirective
hi clear rexxOptionsDirective2
hi clear rexxOptionsDirective3
hi clear rexxConstantDirective
hi clear rexxConst
hi clear rexxTypeSpecifier
hi clear rexxBuiltinClass
hi clear rexxEnvironmentSymbol
hi clear rexxMessage
hi clear rexxParse
hi clear rexxParse2
hi clear rexxGuard
hi clear rexxTrace
hi clear rexxRaise
hi clear rexxRaise2
hi clear rexxForward
hi clear rexxForward2
hi clear cheetahPlaceHolder
hi clear cheetahDirective
hi clear cheetahKeyword
hi clear cheetahContinuation
hi clear cheetahComment
hi clear cheetahMultiLineComment
hi clear hostconfTodo
hi clear hostconfComment
hi clear hostconfKeyword
hi clear hostconfLookupOrder
hi clear hostconfLookupOrderDelimiter
hi clear hostconfDomain
hi clear hostconfDomainDelimiter
hi clear hostconfBoolean
hi clear hostconfSpoofValue
hi clear objError
hi clear objComment
hi clear objInclude
hi clear objFloat
hi clear objInt
hi clear objGroup
hi clear objIndex
hi clear objMaterial
hi clear objVertex
hi clear objNormale
hi clear objVertice
hi clear objFace
hi clear objKeywords
hi clear sudoersSpecEquals
hi clear sudoersTodo
hi clear sudoersComment
hi clear sudoersAlias
hi clear sudoersUserAlias
hi clear sudoersUserNameInList
hi clear sudoersUIDInList
hi clear sudoersGroupInList
hi clear sudoersUserNetgroupInList
hi clear sudoersUserAliasInList
hi clear sudoersUserName
hi clear sudoersUID
hi clear sudoersGroup
hi clear sudoersUserNetgroup
hi clear sudoersUserAliasRef
hi clear sudoersUserNameInSpec
hi clear sudoersUIDInSpec
hi clear sudoersGroupInSpec
hi clear sudoersUserNetgroupInSpec
hi clear sudoersUserAliasInSpec
hi clear sudoersUserNameInRunas
hi clear sudoersUIDInRunas
hi clear sudoersGroupInRunas
hi clear sudoersUserNetgroupInRunas
hi clear sudoersUserAliasInRunas
hi clear sudoersHostAlias
hi clear sudoersHostNameInList
hi clear sudoersIPAddrInList
hi clear sudoersNetworkInList
hi clear sudoersHostNetgroupInList
hi clear sudoersHostAliasInList
hi clear sudoersHostName
hi clear sudoersIPAddr
hi clear sudoersNetwork
hi clear sudoersHostNetgroup
hi clear sudoersHostAliasRef
hi clear sudoersHostNameInSpec
hi clear sudoersIPAddrInSpec
hi clear sudoersNetworkInSpec
hi clear sudoersHostNetgroupInSpec
hi clear sudoersHostAliasInSpec
hi clear sudoersCmndAlias
hi clear sudoersCmndNameInList
hi clear sudoersCmndAliasInList
hi clear sudoersCmndNameInSpec
hi clear sudoersCmndAliasInSpec
hi clear sudoersUserAliasEquals
hi clear sudoersUserListComma
hi clear sudoersUserListColon
hi clear sudoersUserSpecComma
hi clear sudoersUserRunasBegin
hi clear sudoersUserRunasComma
hi clear sudoersUserRunasEnd
hi clear sudoersHostAliasEquals
hi clear sudoersHostListComma
hi clear sudoersHostListColon
hi clear sudoersHostSpecComma
hi clear sudoersCmndAliasEquals
hi clear sudoersCmndListComma
hi clear sudoersCmndListColon
hi clear sudoersCmndSpecComma
hi clear sudoersCmndSpecColon
hi clear sudoersUserNegationInList
hi clear sudoersHostNegationInList
hi clear sudoersCmndNegationInList
hi clear sudoersUserNegation
hi clear sudoersHostNegation
hi clear sudoersUserNegationInSpec
hi clear sudoersHostNegationInSpec
hi clear sudoersUserNegationInRunas
hi clear sudoersCmndNegationInSpec
hi clear sudoersCommandArgs
hi clear sudoersCommandEmpty
hi clear sudoersDefaultEntry
hi clear sudoersDefaultTypeAt
hi clear sudoersDefaultTypeColon
hi clear sudoersDefaultTypeGreaterThan
hi clear sudoersBooleanParameter
hi clear sudoersIntegerParameter
hi clear sudoersStringParameter
hi clear sudoersListParameter
hi clear sudoersParameterListComma
hi clear sudoersIntegerParameterEquals
hi clear sudoersStringParameterEquals
hi clear sudoersListParameterEquals
hi clear sudoersIntegerValue
hi clear sudoersStringValue
hi clear sudoersListValue
hi clear sudoersPASSWD
hi clear dtGroup
hi clear dtComment
hi clear dtDelim
hi clear dtLocaleKey
hi clear dtLocaleName
hi clear dtXLocale
hi clear dtALocale
hi clear dtNumericKey
hi clear dtBooleanKey
hi clear dtBooleanValue
hi clear dtStringKey
hi clear dtExecKey
hi clear dtExecParam
hi clear dtTypeKey
hi clear dtTypeValue
hi clear dtNotStLabel
hi clear dtXAddKey
hi clear tfComment
hi clear tfString
hi clear tfNumber
hi clear tfFloat
hi clear tfIdentifier
hi clear tfVar
hi clear tfWorld
hi clear tfReadonly
hi clear tfHook
hi clear tfFunctions
hi clear tfRepeat
hi clear tfConditional
hi clear tfLabel
hi clear tfStatement
hi clear tfType
hi clear tfInclude
hi clear tfDefine
hi clear tfSpecialChar
hi clear tfSpecialCharEsc
hi clear tfParentError
hi clear tfTodo
hi clear tfEndCommand
hi clear tfJoinLines
hi clear tfOperator
hi clear tfRelation
hi clear sbtString
hi clear sbtIdentitifer
hi clear sbtBeginningSeq
hi clear sbtSpecial
hi clear sbtComment
hi clear sbtLineComment
hi clear sbtDocComment
hi clear xkbModif
hi clear xkbTModif
hi clear xkbPreproc
hi clear xkbIdentifier
hi clear xkbFunction
hi clear xkbSect
hi clear xkbPhysicalKey
hi clear xkbKeyword
hi clear xkbComment
hi clear xkbTodo
hi clear xkbConstant
hi clear xkbString
hi clear xkbSpecialChar
hi clear xkbSpecial
hi clear xkbParenError
hi clear xkbBraceError
hi clear xkbBraketError
hi clear xkbBalancingError
hi clear xkbCommentStartError
hi clear xkbCommentError
hi clear xkbError
hi clear ahdlNumber
hi clear ahdlMegafunction
hi clear ahdlSpecialChar
hi clear ahdlKeyword
hi clear ahdlString
hi clear ahdlComment
hi clear ahdlIdentifier
hi clear ahdlOperator
hi clear ahdlTodo
hi clear autohotkeyTodo
hi clear autohotkeyComment
hi clear autohotkeyCommentStart
hi clear autohotkeyEscape
hi clear autohotkeyHotkey
hi clear autohotkeyKey
hi clear autohotkeyDelimiter
hi clear autohotkeyHotstringDefinition
hi clear autohotkeyHotstring
hi clear autohotkeyHotstringDelimiter
hi clear autohotkeyHotstringOptions
hi clear autohotkeyString
hi clear autohotkeyStringDelimiter
hi clear autohotkeyVariable
hi clear autohotkeyVariableDelimiter
hi clear autohotkeyBuiltinVariable
hi clear autohotkeyCommand
hi clear autohotkeyFunction
hi clear autohotkeyStatement
hi clear autohotkeyRepeat
hi clear autohotkeyConditional
hi clear autohotkeyPreProcStart
hi clear autohotkeyInclude
hi clear autohotkeyPreProc
hi clear autohotkeyMatchClass
hi clear autohotkeyNumber
hi clear autohotkeyInteger
hi clear autohotkeyFloat
hi clear autohotkeyType
hi clear autohotkeyBoolean
hi clear mailVerbatim
hi clear mailHeader
hi clear mailHeaderKey
hi clear mailSignature
hi clear mailHeaderEmail
hi clear mailEmail
hi clear mailURL
hi clear mailSubject
hi clear mailQuoted1
hi clear mailQuoted3
hi clear mailQuoted5
hi clear mailQuoted2
hi clear mailQuoted4
hi clear mailQuoted6
hi clear mailQuoteExp1
hi clear mailQuoteExp2
hi clear mailQuoteExp3
hi clear mailQuoteExp4
hi clear mailQuoteExp5
hi clear mailQuoteExp6
hi clear AspVBSVariableSimple
hi clear AspVBSVariableComplex
hi clear AspVBSLineNumber
hi clear AspVBSNumber
hi clear AspVBSError
hi clear AspVBSStatement
hi clear AspVBSString
hi clear AspVBSComment
hi clear AspVBSTodo
hi clear AspVBSFunction
hi clear AspVBSMethods
hi clear AspVBSEvents
hi clear AspVBSTypeSpecifier
hi clear wvdialComment
hi clear wvdialSection
hi clear wvdialVar
hi clear wvdialValue
hi clear wvdialEqual
hi clear chAccess
hi clear chExceptions
hi clear chStatement
hi clear chType
hi clear chStructure
hi clear sasComment
hi clear sasTodo
hi clear sasSectLbl
hi clear sasSectLblEnds
hi clear sasNumber
hi clear sasDateTime
hi clear sasString
hi clear sasDataStepControl
hi clear sasProcTemplateClause
hi clear sasProcSQLClause
hi clear sasDS2Control
hi clear sasIMLControl
hi clear sasOperator
hi clear sasGlobalStatementKeyword
hi clear sasGlobalStatementODSKeyword
hi clear sasSectionKeyword
hi clear sasDataStepFunctionName
hi clear sasDataStepCallRoutineName
hi clear sasDataStepStatementKeyword
hi clear sasDataStepStatementHashKeyword
hi clear sasDataStepHashOperator
hi clear sasDataStepHashMethodName
hi clear sasDataStepHashAttributeName
hi clear sasProcStatementKeyword
hi clear sasODSGraphicsProcStatementKeyword
hi clear sasGraphProcStatementKeyword
hi clear sasAnalyticalProcStatementKeyword
hi clear sasProcTemplateStatementKeyword
hi clear sasProcTemplateStatementComplexKeyword
hi clear sasProcTemplateGTLStatementKeyword
hi clear sasProcTemplateGTLComplexKeyword
hi clear sasProcSQLFunctionName
hi clear sasProcSQLStatementKeyword
hi clear sasProcSQLStatementComplexKeyword
hi clear sasProcSQLStatementNextKeyword
hi clear sasDS2FunctionName
hi clear sasDS2StatementKeyword
hi clear sasIMLFunctionName
hi clear sasIMLCallRoutineName
hi clear sasIMLStatementKeyword
hi clear sasMacroReserved
hi clear sasMacroVariable
hi clear sasMacroFunctionName
hi clear sasDataLine
hi clear sasFormat
hi clear sasReserved
hi clear awkConditional
hi clear awkFunction
hi clear awkRepeat
hi clear awkStatement
hi clear awkString
hi clear awkSpecialPrintf
hi clear awkSpecialCharacter
hi clear awkSearch
hi clear awkBrackets
hi clear awkBrktRegExp
hi clear awkCharClass
hi clear awkNestRegExp
hi clear awkRegExp
hi clear awkNumber
hi clear awkFloat
hi clear awkFileIO
hi clear awkOperator
hi clear awkExpression
hi clear awkBoolLogic
hi clear awkPatterns
hi clear awkVariables
hi clear awkFieldVars
hi clear awkLineSkip
hi clear awkSemicolon
hi clear awkComma
hi clear awkIdentifier
hi clear awkComment
hi clear awkTodo
hi clear awkArrayArray
hi clear awkArrayElement
hi clear awkParenError
hi clear awkInParen
hi clear awkError
hi clear descFlag
hi clear descLicense
hi clear descCategory
hi clear descTag
hi clear descUrl
hi clear descEmail
hi clear descInstallX
hi clear descInstallO
hi clear descDash
hi clear descDigit
hi clear descCompilePriority
hi clear descSum
hi clear descTarball
hi clear descText
hi clear upstartComment
hi clear upstartTodo
hi clear upstartString
hi clear upstartStatement
hi clear upstartOption
hi clear upstartEvent
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear melBoolean
hi clear melFunction
hi clear melIdentifier
hi clear melStatement
hi clear melConditional
hi clear melRepeat
hi clear melLabel
hi clear melOperator
hi clear melKeyword
hi clear melException
hi clear melInclude
hi clear melType
hi clear melStorageClass
hi clear melDebug
hi clear melTodo
hi clear melCharSpecial
hi clear melString
hi clear melInteger
hi clear melFloat
hi clear melMatrixVector
hi clear melComment
hi clear melError
hi clear melSpaceError
hi clear melCharError
hi clear melParenError
hi clear melInParen
hi clear melCommentError
hi clear 
hi clear qfFileName
hi clear qfLineNr
hi clear qfError
hi clear diffOldFile
hi clear diffNewFile
hi clear diffIndexLine
hi clear diffFile
hi clear diffOnly
hi clear diffIdentical
hi clear diffDiffer
hi clear diffBDiffer
hi clear diffIsA
hi clear diffNoEOL
hi clear diffCommon
hi clear diffRemoved
hi clear diffChanged
hi clear diffAdded
hi clear diffLine
hi clear diffSubname
hi clear diffComment
hi clear n1qlBucketSpec
hi clear n1qlComment
hi clear n1qlKeyword
hi clear n1qlOperator
hi clear n1qlSpecial
hi clear n1qlStatement
hi clear n1qlString
hi clear n1qlTODO
hi clear n1qlType
hi clear logindefsComment
hi clear logindefsTodo
hi clear logindefsKeyword
hi clear logindefsBooleanKeyword
hi clear logindefsEncryptKeyword
hi clear logindefsNumberKeyword
hi clear logindefsPathKeyword
hi clear logindefsPathsKeyword
hi clear logindefsStringKeyword
hi clear logindefsBoolean
hi clear logindefsEncryptMethod
hi clear logindefsNumber
hi clear logindefsDecimal
hi clear logindefsHex
hi clear logindefsOctal
hi clear logindefsOctalZero
hi clear logindefsOctalError
hi clear logindefsPath
hi clear logindefsPaths
hi clear logindefsPathDelim
hi clear logindefsString
hi clear snnspatGen
hi clear snnspatHeader
hi clear snnspatNoHeader
hi clear snnspatNumbers
hi clear snnspatComment
hi clear snnspatError
hi clear snnspatTodo
hi clear snnspatAccepted
hi clear snnspatBrac
hi clear issSection
hi clear issComment
hi clear issDirective
hi clear issParam
hi clear issFolder
hi clear issString
hi clear issURL
hi clear issPreProc
hi clear issDirsFlags
hi clear issFilesCopyMode
hi clear issFilesAttribs
hi clear issFilesPermissions
hi clear issFilesFlags
hi clear issIconsFlags
hi clear issINIFlags
hi clear issRegRootKey
hi clear issRegValueType
hi clear issRegFlags
hi clear issRunFlags
hi clear issTypesFlags
hi clear issComponentsFlags
hi clear issInstallDeleteType
hi clear issTasksFlags
hi clear takoutPos
hi clear takoutNeg
hi clear takoutTitle
hi clear takoutFile
hi clear takoutInteger
hi clear takoutSectionDelim
hi clear takoutSectionTitle
hi clear takoutHeaderDelim
hi clear takoutLabel
hi clear takoutError
hi clear plsqlAttribute
hi clear plsqlBlockError
hi clear plsqlBooleanLiteral
hi clear plsqlCharLiteral
hi clear plsqlComment
hi clear plsqlCommentL
hi clear plsqlConditional
hi clear plsqlError
hi clear plsqlErrInBracket
hi clear plsqlErrInBlock
hi clear plsqlErrInParen
hi clear plsqlException
hi clear plsqlFloatLiteral
hi clear plsqlFunction
hi clear plsqlGarbage
hi clear plsqlHostIdentifier
hi clear plsqlIdentifier
hi clear plsqlIntLiteral
hi clear plsqlOperator
hi clear plsqlParen
hi clear plsqlParenError
hi clear plsqlSpaceError
hi clear plsqlPseudo
hi clear plsqlKeyword
hi clear plsqlRepeat
hi clear plsqlStorage
hi clear plsqlSQLKeyword
hi clear plsqlStringError
hi clear plsqlStringLiteral
hi clear plsqlCommentString
hi clear plsqlComment2String
hi clear plsqlSymbol
hi clear plsqlTrigger
hi clear plsqlTypeAttribute
hi clear plsqlTodo
hi clear texinfoSpecialChar
hi clear texinfoHFSpecialChar
hi clear texinfoError
hi clear texinfoIdent
hi clear texinfoAssignment
hi clear texinfoSinglePar
hi clear texinfoIndexPar
hi clear texinfoSIPar
hi clear texinfoDIEPar
hi clear texinfoTexCmd
hi clear texinfoAtCmd
hi clear texinfoPrmAtCmd
hi clear texinfoBrcPrmAtCmd
hi clear texinfoMltlnAtCmdFLine
hi clear texinfoMltlnAtCmd
hi clear texinfoMltln2AtCmd
hi clear texinfoMltlnDMAtCmd
hi clear texinfoMltlnNAtCmd
hi clear texinfoThisAtCmd
hi clear texinfoComment
hi clear taskeditComment
hi clear taskeditHeading
hi clear taskeditKey
hi clear taskeditReadOnly
hi clear taskeditString
hi clear crmTodo
hi clear crmComment
hi clear crmVariable
hi clear crmSpecial
hi clear crmStatement
hi clear crmRegex
hi clear crmLabel
hi clear manconfTodo
hi clear manconfComment
hi clear manconfKeyword
hi clear manconfExt
hi clear sqljComment
hi clear sqljKeyword
hi clear sqljNumber
hi clear sqljOperator
hi clear sqljSpecial
hi clear sqljStatement
hi clear sqljString
hi clear sqljType
hi clear sqljPre
hi clear dictconfTodo
hi clear dictconfComment
hi clear dictconfKeyword
hi clear dictconfServer
hi clear dictconfServerOptsD
hi clear dictconfServerOpts
hi clear dictconfUsername
hi clear dictconfSecret
hi clear dictconfNumber
hi clear dictconfPager
hi clear DnsmasqKeywordSpecial
hi clear DnsmasqTodo
hi clear DnsmasqSpecial
hi clear DnsmasqIPv4
hi clear DnsmasqSubnet2
hi clear DnsmasqSubnet
hi clear DnsmasqRange
hi clear DnsmasqMac
hi clear DnsmasqTime
hi clear DnsmasqComment
hi clear DnsmasqTrailSpace
hi clear DnsmasqString
hi clear DnsmasqValues
hi clear foxproSpecial
hi clear foxproAtSymbol
hi clear foxproAtCmd
hi clear foxproPreProc
hi clear foxproFunc
hi clear foxproCmd
hi clear foxproEnBlk
hi clear foxproSysVar
hi clear foxproString
hi clear foxproConst
hi clear foxproNumber
hi clear foxproFloat
hi clear foxproComment
hi clear foxproParenErr
hi clear foxproCBConst
hi clear foxproCBField
hi clear foxproCBVar
hi clear foxproCBWin
hi clear foxproCBObject
hi clear straceComment
hi clear straceVerbosed
hi clear stracePID
hi clear straceNumber
hi clear straceNumberRHS
hi clear straceOtherRHS
hi clear straceString
hi clear straceConstant
hi clear straceEquals
hi clear straceSysCallEmbed
hi clear straceSysCall
hi clear straceParenthesis
hi clear straceOperator
hi clear straceSpecialChar
hi clear straceOtherPID
hi clear lssComment
hi clear lssElement
hi clear lssBold
hi clear lssReverse
hi clear lssUnderline
hi clear lssStandout
hi clear lssRedFg
hi clear lssBlueFg
hi clear lssGreenFg
hi clear lssBrownFg
hi clear lssMagentaFg
hi clear lssCyanFg
hi clear lssGrayFg
hi clear lssRedBg
hi clear lssBlueBg
hi clear lssGreenBg
hi clear lssBrownBg
hi clear lssMagentaBg
hi clear lssCyanBg
hi clear lssLightgrayBg
hi clear lssGrayBg
hi clear lssBrightredBg
hi clear lssBrightgreenBg
hi clear lssYellowBg
hi clear lssBrightblueBg
hi clear lssBrightmagentaBg
hi clear lssBrightcyanBg
hi clear lssWhiteBg
hi clear netrcKeyword
hi clear netrcMacro
hi clear netrcMachine
hi clear netrcLogin
hi clear netrcPassword
hi clear netrcMacroName
hi clear netrcSpecial
hi clear netrcInit
hi clear euphoria3Comment
hi clear euphoria3String
hi clear euphoria3Char
hi clear euphoria3Number
hi clear euphoria3Boolean
hi clear euphoria3Builtin
hi clear euphoria3Library
hi clear euphoria3Keyword
hi clear euphoria3Operator
hi clear euphoria3Debug
hi clear euphoria3Delimit
hi clear sisu_normal
hi clear sisu_bold
hi clear sisu_header
hi clear sisu_header_content
hi clear sisu_sub_header_title
hi clear sisu_sub_header_creator
hi clear sisu_sub_header_date
hi clear sisu_sub_header_publisher
hi clear sisu_sub_header_rights
hi clear sisu_sub_header_classify
hi clear sisu_sub_header_identifier
hi clear sisu_sub_header_original
hi clear sisu_sub_header_links
hi clear sisu_sub_header_notes
hi clear sisu_sub_header_make
hi clear sisu_heading
hi clear sisu_structure
hi clear sisu_contain
hi clear sisu_mark_endnote
hi clear sisu_require
hi clear sisu_link
hi clear sisu_linked
hi clear sisu_fontface
hi clear sisu_strikeout
hi clear sisu_content_alt
hi clear sisu_sem_content
hi clear sisu_sem_block
hi clear sisu_sem_marker
hi clear sisu_sem_marker_block
hi clear sisu_sem_ex_marker
hi clear sisu_sem_ex_marker_block
hi clear sisu_sem_ex_content
hi clear sisu_sem_ex_block
hi clear sisu_index
hi clear sisu_index_block
hi clear sisu_content_endnote
hi clear sisu_control
hi clear sisu_within_index
hi clear sisu_within_index_ignore
hi clear sisu_ocn
hi clear sisu_number
hi clear sisu_identifier
hi clear sisu_underline
hi clear sisu_markpara
hi clear sisu_marktail
hi clear sisu_mark
hi clear sisu_break
hi clear sisu_html
hi clear sisu_action
hi clear sisu_comment
hi clear sisu_error_sem_marker
hi clear sisu_error_wspace
hi clear sisu_error
hi clear tadsFunctionDef
hi clear tadsFunction
hi clear tadsClass
hi clear tadsClassDef
hi clear tadsObjectDef
hi clear tadsOperator
hi clear tadsStructure
hi clear tadsTodo
hi clear tadsLabel
hi clear tadsConditional
hi clear tadsRepeat
hi clear tadsException
hi clear tadsStatement
hi clear tadsStorageClass
hi clear tadsKeyWord
hi clear tadsSpecial
hi clear tadsNumber
hi clear tadsBoolean
hi clear tadsDoubleString
hi clear tadsSingleString
hi clear tadsOctalError
hi clear tadsCommentError
hi clear tadsBraceError
hi clear tadsInBrace
hi clear tadsError
hi clear tadsInclude
hi clear tadsPreProc
hi clear tadsDefine
hi clear tadsIncluded
hi clear tadsPreCondit
hi clear tadsString
hi clear tadsComment
hi clear mmaComment
hi clear mmaCommentStar
hi clear mmaFunctionComment
hi clear mmaLooseQuote
hi clear mmaGenericFunction
hi clear mmaVariable
hi clear mmaOperator
hi clear mmaPatternOp
hi clear mmaPureFunction
hi clear mmaString
hi clear mmaCommentString
hi clear mmaUnicode
hi clear mmaMessage
hi clear mmaNumber
hi clear mmaPattern
hi clear mmaError
hi clear mmaFixme
hi clear mmaPatternError
hi clear mmaTodo
hi clear mmaemPHAsis
hi clear mmaFunctionTitle
hi clear mmaMessageType
hi clear mmaItem
hi clear confComment
hi clear confTodo
hi clear confString
hi clear jsonPadding
hi clear jsonString
hi clear jsonTest
hi clear jsonEscape
hi clear jsonNumber
hi clear jsonBraces
hi clear jsonNull
hi clear jsonBoolean
hi clear jsonKeyword
hi clear jsonNumError
hi clear jsonCommentError
hi clear jsonSemicolonError
hi clear jsonTrailingCommaError
hi clear jsonMissingCommaError
hi clear jsonStringSQError
hi clear jsonNoQuotesError
hi clear jsonTripleQuotesError
hi clear jsonQuote
hi clear jsonNoise
hi clear tarComment
hi clear tarFilename
hi clear tarDirectory
hi clear sgmldeclDeclKeys
hi clear sgmldeclTypes
hi clear sgmldeclConst
hi clear sgmldeclNConst
hi clear sgmldeclString
hi clear sgmldeclDeclBlock
hi clear sgmldeclBool
hi clear sgmldeclSpecial
hi clear sgmldeclComment
hi clear sgmldeclStatem
hi clear sgmldeclVariables
hi clear catalogString
hi clear catalogComment
hi clear catalogTodo
hi clear catalogKeyword
hi clear bdfKeyword
hi clear bdfNumber
hi clear bdfTodo
hi clear bdfComment
hi clear bdfFont
hi clear bdfProperty
hi clear bdfXProperty
hi clear bdfString
hi clear bdfChars
hi clear bdfBitmap
hi clear amlComment
hi clear amlNumber
hi clear amlQuote
hi clear amlVar
hi clear amlVar2
hi clear amlFunction
hi clear amlDir
hi clear amlDir2
hi clear amlDirSym
hi clear amlOutput
hi clear amlArcCmd
hi clear amlFormedCmd
hi clear amlTabCmd
hi clear amlInfoCmd
hi clear amlVtrCmd
hi clear amlFormed
hi clear amlTab
hi clear laceTopStruct
hi clear laceOptionClause
hi clear laceOptionMark
hi clear laceClusterProp
hi clear laceAdaptClassName
hi clear laceExternal
hi clear laceCluster
hi clear laceEscape
hi clear laceBool
hi clear laceString
hi clear laceCharacter
hi clear laceClassName
hi clear laceNumber
hi clear laceOperator
hi clear laceArray
hi clear laceExport
hi clear laceCreation
hi clear laceBrackets
hi clear laceConstraint
hi clear laceComment
hi clear laceError
hi clear laceStringError
hi clear laceParenError
hi clear laceBracketError
hi clear laceTodo
hi clear updatedbTodo
hi clear updatedbComment
hi clear updatedbName
hi clear updatedbNameEq
hi clear updatedbValue
hi clear asmSection
hi clear asmLabel
hi clear asmComment
hi clear asmTodo
hi clear asmDirective
hi clear asmInclude
hi clear asmCond
hi clear asmMacro
hi clear hexNumber
hi clear decNumber
hi clear octNumber
hi clear binNumber
hi clear asmIdentifier
hi clear asmType
hi clear a2psTodo
hi clear a2psComment
hi clear a2psPreProc
hi clear a2psMacro
hi clear a2psKeyword
hi clear a2psKeywordColon
hi clear a2psVariableColon
hi clear a2psVariable
hi clear a2psVarPrefix
hi clear a2psLineCont
hi clear a2psSubst
hi clear a2psString
hi clear fetchmailComment
hi clear fetchmailTodo
hi clear fetchmailNumber
hi clear fetchmailString
hi clear fetchmailStringEsc
hi clear fetchmailKeyword
hi clear fetchmailServerOpts
hi clear fetchmailUserOpts
hi clear fetchmailSpecial
hi clear fetchmailSet
hi clear fetchmailOptions
hi clear gdbFuncDef
hi clear gdbComment
hi clear gdbStatement
hi clear gdbString
hi clear gdbCharacter
hi clear gdbVariable
hi clear gdbSet
hi clear gdbInfo
hi clear gdbDocument
hi clear gdbNumber
hi clear nanorcTodo
hi clear nanorcComment
hi clear nanorcKeyword
hi clear nanorcBoolOption
hi clear nanorcStringOption
hi clear nanorcNumberOption
hi clear nanorcSynGroupName
hi clear nanorcString
hi clear nanorcRegexes
hi clear nanorcNumber
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear nanorcBGColorSep
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear nanorcStartRegion
hi clear nanorcStartRegionEq
hi clear nanorcRegion
hi clear nanorcEndRegion
hi clear nanorcEndRegionEq
hi clear nanorcRegex
hi clear defComment
hi clear defKeyword
hi clear defStorage
hi clear defString
hi clear defNumber
hi clear defOrdinal
hi clear rcslogFile
hi clear rcslogRevision
hi clear rcslogDate
hi clear smartyTagName
hi clear smartyProperty
hi clear smartyInFunc
hi clear smartyBlock
hi clear smartyDot
hi clear smartyModifier
hi clear srecRecStart
hi clear srecRecTypeUnknown
hi clear srecRecType
hi clear srecByteCount
hi clear srecAddressFieldUnknown
hi clear srecNoAddress
hi clear srecDataAddress
hi clear srecRecCount
hi clear srecStartAddress
hi clear srecDataOdd
hi clear srecDataEven
hi clear srecDataUnexpected
hi clear srecChecksum
hi clear rtfControlWord
hi clear rtfNewControlWord
hi clear rtfControlSymbol
hi clear rtfCharacter
hi clear rtfUnicodeCharacter
hi clear rtfFootNote
hi clear rtfRed
hi clear rtfGreen
hi clear rtfBlue
hi clear rtfRed
hi clear rtfGreen
hi clear rtfBlue
hi clear upstreamdat_Parameter
hi clear upstreamdat_Comment
hi clear usserverlog_Date
hi clear usserverlog_MsgD
hi clear usserverlog_MsgE
hi clear usserverlog_MsgW
hi clear usserverlog_Process
hi clear usserverlog_IPaddr
hi clear usserverlog_Profile
hi clear usserverlog_Target
hi clear hexRecStart
hi clear hexDataByteCount
hi clear hexAddressFieldUnknown
hi clear hexDataAddress
hi clear hexNoAddress
hi clear hexRecTypeUnknown
hi clear hexRecType
hi clear hexDataFieldUnknown
hi clear hexDataOdd
hi clear hexDataEven
hi clear hexDataUnexpected
hi clear hexExtendedAddress
hi clear hexStartAddress
hi clear hexChecksum
hi clear cppAccess
hi clear cppCast
hi clear cppExceptions
hi clear cppOperator
hi clear cppStatement
hi clear cppModifier
hi clear cppType
hi clear cppStorageClass
hi clear cppStructure
hi clear cppBoolean
hi clear cppConstant
hi clear cppRawStringDelimiter
hi clear cppRawString
hi clear cppNumber
hi clear murphiComment
hi clear murphiString
hi clear murphiNumber
hi clear murphiBoolean
hi clear murphiIdentifier
hi clear murphiFunction
hi clear murphiStatement
hi clear murphiConditional
hi clear murphiRepeat
hi clear murphiLabel
hi clear murphiOperator
hi clear murphiKeyword
hi clear murphiType
hi clear murphiStructure
hi clear murphiSpecial
hi clear murphiDelimiter
hi clear murphiError
hi clear murphiTodo
hi clear sqrSection
hi clear sqrParagraph
hi clear sqrReserved
hi clear sqrParameter
hi clear sqrPreProc
hi clear sqrSubstVar
hi clear sqrCommand
hi clear sqrParam
hi clear sqrFunction
hi clear sqrString
hi clear sqrStrOpen
hi clear sqrNumber
hi clear sqrVariable
hi clear sqrComment
hi clear sqrTodo
hi clear sqrError
hi clear openroadKeyword
hi clear openroadNumber
hi clear openroadString
hi clear openroadComment
hi clear openroadOperator
hi clear openroadType
hi clear openroadFunc
hi clear openroadClass
hi clear openroadEvent
hi clear openroadConst
hi clear openroadVar
hi clear openroadIdent
hi clear openroadTodo
hi clear p6EscOctOld
hi clear p6PackageTwigil
hi clear p6StringAngle
hi clear p6StringFrench
hi clear p6StringAngles
hi clear p6StringSQ
hi clear p6StringDQ
hi clear p6StringQ
hi clear p6RxStringSQ
hi clear p6RxStringDQ
hi clear p6Substitution
hi clear p6Transliteration
hi clear p6StringAuto
hi clear p6StringP5Auto
hi clear p6Key
hi clear p6Match
hi clear p6RegexBlock
hi clear p6RxP5CharClass
hi clear p6RxP5QuoteMeta
hi clear p6RxCharClass
hi clear p6RxQuoteWords
hi clear p6ReduceOp
hi clear p6ReverseCrossOp
hi clear p6HyperOp
hi clear p6QuoteQ
hi clear p6RxRange
hi clear p6RxAnchor
hi clear p6RxP5Anchor
hi clear p6CodePoint
hi clear p6RxMeta
hi clear p6RxP5Range
hi clear p6RxP5CPId
hi clear p6RxP5Posix
hi clear p6RxP5Mod
hi clear p6RxP5HexSeq
hi clear p6RxP5OctSeq
hi clear p6RxP5WriteRefId
hi clear p6HexSequence
hi clear p6OctSequence
hi clear p6RxP5Named
hi clear p6RxP5PropId
hi clear p6RxP5Quantifier
hi clear p6RxP5CountId
hi clear p6RxP5Verb
hi clear p6Escape
hi clear p6EscNull
hi clear p6EscHash
hi clear p6EscQQ
hi clear p6EscQuote
hi clear p6EscDoubleQuote
hi clear p6EscBackTick
hi clear p6EscForwardSlash
hi clear p6EscVerticalBar
hi clear p6EscExclamation
hi clear p6EscDollar
hi clear p6EscOpenCurly
hi clear p6EscCloseCurly
hi clear p6EscCloseBracket
hi clear p6EscCloseAngle
hi clear p6EscCloseFrench
hi clear p6EscBackSlash
hi clear p6RxEscape
hi clear p6RxCapture
hi clear p6RxAlternation
hi clear p6RxP5
hi clear p6RxP5ReadRef
hi clear p6RxP5Oct
hi clear p6RxP5Hex
hi clear p6RxP5EscMeta
hi clear p6RxP5Meta
hi clear p6RxP5Escape
hi clear p6RxP5CodePoint
hi clear p6RxP5WriteRef
hi clear p6RxP5Prop
hi clear p6Property
hi clear p6Attention
hi clear p6Type
hi clear p6Error
hi clear p6BlockLabel
hi clear p6Float
hi clear p6Normal
hi clear p6Package
hi clear p6PackageScope
hi clear p6Number
hi clear p6VersionNum
hi clear p6String
hi clear p6Repeat
hi clear p6Keyword
hi clear p6Pragma
hi clear p6Module
hi clear p6DeclareRoutine
hi clear p6VarStorage
hi clear p6FlowControl
hi clear p6NumberBase
hi clear p6Twigil
hi clear p6StringSpecial2
hi clear p6VersionDot
hi clear p6Comment
hi clear p6Include
hi clear p6Shebang
hi clear p6ClosureTrait
hi clear p6Routine
hi clear p6Operator
hi clear p6Version
hi clear p6Context
hi clear p6Quote
hi clear p6TypeConstraint
hi clear p6Exception
hi clear p6Placeholder
hi clear p6Variable
hi clear p6VarSlash
hi clear p6VarNum
hi clear p6VarExclam
hi clear p6VarMatch
hi clear p6VarName
hi clear p6MatchVar
hi clear p6RxP5ReadRefId
hi clear p6RxP5ModDef
hi clear p6RxP5ModName
hi clear p6Conditional
hi clear p6StringSpecial
hi clear p6PodAbbr
hi clear p6PodAbbrEOF
hi clear p6PodAbbrNoCode
hi clear p6PodAbbrCode
hi clear p6PodPara
hi clear p6PodParaEOF
hi clear p6PodParaNoCode
hi clear p6PodParaCode
hi clear p6PodDelim
hi clear p6PodDelimEOF
hi clear p6PodDelimNoCode
hi clear p6PodDelimCode
hi clear p6PodImplicitCode
hi clear p6PodExtraConfig
hi clear p6PodVerticalBar
hi clear p6PodColon
hi clear p6PodSemicolon
hi clear p6PodComma
hi clear p6PodFormatOne
hi clear p6PodFormatTwo
hi clear p6PodFormatThree
hi clear p6PodFormatFrench
hi clear p6PodType
hi clear p6PodConfigOption
hi clear p6PodCode
hi clear p6Pod
hi clear p6PodComment
hi clear p6PodAutoQuote
hi clear p6PodConfigOperator
hi clear p6PodPrefix
hi clear p6PodName
hi clear p6PodFormatCode
hi clear p6PodFormat
hi clear pl1Attribute
hi clear pl1BlockError
hi clear pl1BooleanLiteral
hi clear pl1CharLiteral
hi clear pl1Comment
hi clear pl1CommentL
hi clear pl1Conditional
hi clear pl1Error
hi clear pl1ErrInBracket
hi clear pl1ErrInBlock
hi clear pl1ErrInParen
hi clear pl1Exception
hi clear pl1FloatLiteral
hi clear pl1Function
hi clear pl1Garbage
hi clear pl1HostIdentifier
hi clear pl1Identifier
hi clear pl1IntLiteral
hi clear pl1Operator
hi clear pl1Paren
hi clear pl1ParenError
hi clear pl1SpaceError
hi clear pl1Pseudo
hi clear pl1PreProc
hi clear pl1PreProcSym
hi clear pl1Keyword
hi clear pl1Other
hi clear pl1Repeat
hi clear pl1Statement
hi clear pl1Storage
hi clear pl1StringError
hi clear pl1StringLiteral
hi clear pl1CommentString
hi clear pl1Comment2String
hi clear pl1Symbol
hi clear pl1Trigger
hi clear pl1TypeAttribute
hi clear pl1Todo
hi clear sdIP
hi clear sdHostname
hi clear sdEncoding
hi clear sdCoding
hi clear sdSource
hi clear sdComment
hi clear sdIPError
hi clear sdError
hi clear sdStatement
hi clear sdIPSpecial
hi clear sdSpecial
hi clear sdDelimiter
hi clear hastepreproc
hi clear hastepreprocVar
hi clear hastepreprocError
hi clear eComment
hi clear eConstant
hi clear eStringId
hi clear eCommand
hi clear eString
hi clear eNumber
hi clear eBoolean
hi clear eFloat
hi clear eConditional
hi clear eProgLang
hi clear eOVP
hi clear eStdCmd
hi clear eIdentifier
hi clear eDelimiter
hi clear eError
hi clear eBraceError
hi clear eCurlyError
hi clear eParenError
hi clear uilCharacter
hi clear uilSpecialCharacter
hi clear uilNumber
hi clear uilCommentError
hi clear uilInclude
hi clear uilDefine
hi clear uilIncluded
hi clear uilSpecialFunction
hi clear uilRessource
hi clear uilSpecialStatement
hi clear uilError
hi clear uilPreCondit
hi clear uilType
hi clear uilString
hi clear uilComment
hi clear uilSpecial
hi clear uilTodo
hi clear smlBraceErr
hi clear smlBrackErr
hi clear smlParenErr
hi clear smlCommentErr
hi clear smlEndErr
hi clear smlThenErr
hi clear smlCharErr
hi clear smlComment
hi clear smlModPath
hi clear smlModule
hi clear smlModParam1
hi clear smlModType
hi clear smlMPRestr3
hi clear smlFullMod
hi clear smlModTypeRestr
hi clear smlWith
hi clear smlMTDef
hi clear smlConstructor
hi clear smlModPreRHS
hi clear smlMPRestr2
hi clear smlKeyword
hi clear smlFunDef
hi clear smlRefAssign
hi clear smlKeyChar
hi clear smlAnyVar
hi clear smlTopStop
hi clear smlOperator
hi clear smlBoolean
hi clear smlCharacter
hi clear smlNumber
hi clear smlReal
hi clear smlString
hi clear smlType
hi clear smlTodo
hi clear smlEncl
hi clear mglBoolean
hi clear mglComment
hi clear mglConditional
hi clear mglConstant
hi clear mglException
hi clear mglFunction
hi clear mglLabel
hi clear mglMatrixDelimiter
hi clear mglNumber
hi clear mglHexNumber
hi clear mglCharacter
hi clear mglIpAddr
hi clear mglOperator
hi clear mglPredefined
hi clear mglPreProc
hi clear mglRepeat
hi clear mglStatement
hi clear mglString
hi clear mglStringEscape
hi clear mglStringEscapeGPC
hi clear mglStringError
hi clear mglStruct
hi clear mglSymbolOperator
hi clear mglType
hi clear divaDRCKeywords
hi clear divaMeasKeywords
hi clear divaCtrlFunctions
hi clear divaExtFunctions
hi clear divaDRCFunctions
hi clear divaFunctions
hi clear divaLayerFunctions
hi clear divaChkFunctions
hi clear divaLVSFunctions
hi clear divaGeomFunctions
hi clear pythonStatement
hi clear pythonConditional
hi clear pythonRepeat
hi clear pythonOperator
hi clear pythonException
hi clear pythonInclude
hi clear pythonAsync
hi clear pythonDecorator
hi clear pythonDecoratorName
hi clear pythonFunction
hi clear pythonComment
hi clear pythonTodo
hi clear pythonString
hi clear pythonRawString
hi clear pythonQuotes
hi clear pythonTripleQuotes
hi clear pythonEscape
hi clear modelKeyword
hi clear modelBlock
hi clear modelComment
hi clear modelString
hi clear taskdataEncoded
hi clear taskdataKey
hi clear taskdataString
hi clear taskdataUUID
hi clear taskdataUndo
hi clear schemeSyntax
hi clear schemeFunc
hi clear schemeString
hi clear schemeCharacter
hi clear schemeNumber
hi clear schemeBoolean
hi clear schemeDelimiter
hi clear schemeConstant
hi clear schemeComment
hi clear schemeMultilineComment
hi clear schemeError
hi clear schemeExtSyntax
hi clear schemeExtFunc
hi clear schemeLang
hi clear treetopTodo
hi clear treetopComment
hi clear treetopKeyword
hi clear treetopGrammarName
hi clear treetopRubyModuleName
hi clear treetopRuleName
hi clear treetopString
hi clear treetopStringDelimiter
hi clear treetopCharacterClass
hi clear treetopCharacterClassDelimiter
hi clear treetopRubyBlockDelimiter
hi clear treetopSemanticPredicateDelimiter
hi clear treetopSubclassDeclarationDelimiter
hi clear treetopEllipsis
hi clear sindaMacro
hi clear sindaOptions
hi clear sindaRoutine
hi clear sindaControl
hi clear sindaSubRoutine
hi clear sindaIdentifier
hi clear sindaFortran
hi clear sindaMotran
hi clear sindaComment
hi clear sindaHeader
hi clear sindaIncludeFile
hi clear sindaInteger
hi clear sindaFloat
hi clear sindaScientific
hi clear sindaEndData
hi clear sindaTodo
hi clear smithRegister
hi clear smithKeyword
hi clear smithComment
hi clear smithString
hi clear smithNumber
hi clear matlabTransposeOperator
hi clear matlabOperator
hi clear matlabLineContinuation
hi clear matlabLabel
hi clear matlabConditional
hi clear matlabExceptions
hi clear matlabRepeat
hi clear matlabTodo
hi clear matlabString
hi clear matlabDelimiter
hi clear matlabTransposeOther
hi clear matlabNumber
hi clear matlabFloat
hi clear matlabFunction
hi clear matlabError
hi clear matlabImplicit
hi clear matlabStatement
hi clear matlabOO
hi clear matlabSemicolon
hi clear matlabComment
hi clear matlabMultilineComment
hi clear matlabCellComment
hi clear matlabScope
hi clear matlabArithmeticOperator
hi clear matlabRelationalOperator
hi clear matlabLogicalOperator
hi clear dtsCellProperty
hi clear dtsBinaryProperty
hi clear dtsStringProperty
hi clear dtsKeyword
hi clear dtsLabel
hi clear dtsNode
hi clear dtsReference
hi clear dtsComment
hi clear dtsCommentInner
hi clear dtsCommentLine
hi clear CfgOnOff
hi clear CfgComment
hi clear CfgSection
hi clear CfgString
hi clear CfgParams
hi clear CfgValues
hi clear CfgDirectory
hi clear UncPath
hi clear draculaIdentifier
hi clear draculaStatement
hi clear draculaType
hi clear draculaComment
hi clear draculaPreProc
hi clear cucumberUnparsedComment
hi clear cucumberComment
hi clear cucumberLanguage
hi clear cucumberFeature
hi clear cucumberBackground
hi clear cucumberScenario
hi clear cucumberScenarioOutline
hi clear cucumberExamples
hi clear cucumberPlaceholder
hi clear cucumberDelimiter
hi clear cucumberTags
hi clear cucumberString
hi clear cucumberGiven
hi clear cucumberWhen
hi clear cucumberThen
hi clear eiffelKeyword
hi clear eiffelProperty
hi clear eiffelInheritClause
hi clear eiffelStatement
hi clear eiffelDeclaration
hi clear eiffelAssertion
hi clear eiffelDebug
hi clear eiffelException
hi clear eiffelGenericCreate
hi clear eiffelAgent
hi clear eiffelConvert
hi clear eiffelTopStruct
hi clear eiffelAll
hi clear eiffelAnchored
hi clear eiffelBitType
hi clear eiffelBool
hi clear eiffelString
hi clear eiffelCharacter
hi clear eiffelClassName
hi clear eiffelNumber
hi clear eiffelStringEscape
hi clear eiffelOperator
hi clear eiffelArray
hi clear eiffelExport
hi clear eiffelCreation
hi clear eiffelBrackets
hi clear eiffelGeneric
hi clear eiffelGenericDecl
hi clear eiffelConstraint
hi clear eiffelCreate
hi clear eiffelPredefined
hi clear eiffelComment
hi clear eiffelError
hi clear eiffelBadConstant
hi clear eiffelStringError
hi clear eiffelParenError
hi clear eiffelBracketError
hi clear eiffelTodo
hi clear mpTeXdelim
hi clear mpBoolExp
hi clear mpNumExp
hi clear mpPairExp
hi clear mpPathExp
hi clear mpPenExp
hi clear mpPicExp
hi clear mpStringExp
hi clear mpInternal
hi clear mpCommand
hi clear mpType
hi clear mpPrimitive
hi clear mpDef
hi clear mpVardef
hi clear mpPrimaryDef
hi clear mpSecondaryDef
hi clear mpTertiaryDef
hi clear mpNewInternal
hi clear mpVariable
hi clear mpConstant
hi clear mpOnOff
hi clear mpDash
hi clear mpTeXKeyword
hi clear pfCmd
hi clear pfComment
hi clear pfCont
hi clear pfErrClose
hi clear pfIPv4
hi clear pfIPv6
hi clear pfNetmask
hi clear pfNum
hi clear pfService
hi clear pfString
hi clear pfTable
hi clear pfTodo
hi clear pfVar
hi clear pfVarAssign
hi clear pfWildAddr
hi clear abapError
hi clear abapComment
hi clear abapInclude
hi clear abapStatement
hi clear abapComplexStatement
hi clear abapSpecial
hi clear abapNamespace
hi clear abapSpecialTables
hi clear abapSymbolOperator
hi clear abapOperator
hi clear abapCharString
hi clear abapString
hi clear abapFloat
hi clear abapTypes
hi clear abapSymbol
hi clear abapStructure
hi clear abapField
hi clear abapNumber
hi clear abapHex
hi clear sysctlTodo
hi clear sysctlComment
hi clear sysctlToken
hi clear sysctlTokenEq
hi clear sysctlValue
hi clear modula2Ident
hi clear modula2StdConst
hi clear modula2Type
hi clear modula2StdFunc
hi clear modula2Header
hi clear modula2Keyword
hi clear modula2AttKeyword
hi clear modula2Comment
hi clear modula2Todo
hi clear modula2String
hi clear modula2Set
hi clear cdrtocKeyword
hi clear cdrtocHeaderKeyword
hi clear cdrtocHeaderCDText
hi clear cdrtocDelimiter
hi clear cdrtocCDTextDataBinaryEnd
hi clear cdrtocHeaderCDTextDataBinaryEnd
hi clear cdrtocNumber
hi clear cdrtocCDTextDataBinaryInteger
hi clear cdrtocHeaderCDTextDataBinaryInteger
hi clear cdrtocCDTextDataBinarySeparator
hi clear cdrtocHeaderCDTextDataBinarySeparator
hi clear cdrtocCDTextDataBinaryStart
hi clear cdrtocHeaderCDTextDataBinaryStart
hi clear cdrtocString
hi clear cdrtocCDTextDataString
hi clear cdrtocHeaderCDTextDataString
hi clear cdrtocCDTextDataStringDelimiters
hi clear cdrtocHeaderCDTextDataStringDelimiters
hi clear cdrtocCDTextDataStringSpecialChar
hi clear cdrtocHeaderCDTextDataStringSpecialChar
hi clear cdrtocCDTextEnd
hi clear cdrtocHeaderCDTextEnd
hi clear cdrtocType
hi clear cdrtocCDTextItem
hi clear cdrtocHeaderCDTextItem
hi clear cdrtocHeaderCDTextLanguageMap
hi clear cdrtocCDTextStart
hi clear cdrtocHeaderCDTextStart
hi clear cdrtocHeaderCatalog
hi clear cdrtocHeaderCatalogNumber
hi clear cdrtocComment
hi clear cdrtocHeaderCommentInitial
hi clear cdrtocHeaderLanguage
hi clear cdrtocLanguageEnd
hi clear cdrtocHeaderLanguageEnd
hi clear cdrtocHeaderLanguageMapColon
hi clear cdrtocIdentifier
hi clear cdrtocHeaderLanguageMapCountryCode
hi clear cdrtocHeaderLanguageMapCountryCodeName
hi clear cdrtocHeaderLanguageMapEnd
hi clear cdrtocHeaderLanguageMapLanguageNumber
hi clear cdrtocHeaderLanguageMapStart
hi clear cdrtocLanguageNumber
hi clear cdrtocHeaderLanguageNumber
hi clear cdrtocLanguageStart
hi clear cdrtocHeaderLanguageStart
hi clear cdrtocHeaderTOCType
hi clear cdrtocTodo
hi clear cdrtocTrackKeyword
hi clear cdrtocTrack
hi clear cdrtocTrackCDText
hi clear cdrtocTrackCDTextDataBinaryEnd
hi clear cdrtocTrackCDTextDataBinaryInteger
hi clear cdrtocTrackCDTextDataBinarySeparator
hi clear cdrtocTrackCDTextDataBinaryStart
hi clear cdrtocTrackCDTextDataString
hi clear cdrtocTrackCDTextDataStringDelimiters
hi clear cdrtocTrackCDTextDataStringSpecialChar
hi clear cdrtocTrackCDTextEnd
hi clear cdrtocTrackCDTextItem
hi clear cdrtocTrackCDTextStart
hi clear cdrtocLength
hi clear cdrtocTrackDatafileLength
hi clear cdrtocTrackFifoLength
hi clear cdrtocPreProc
hi clear cdrtocTrackFlag
hi clear cdrtocTrackFlagCopy
hi clear cdrtocSpecial
hi clear cdrtocTrackFlagNo
hi clear cdrtocTrackFlagPreEmphasis
hi clear cdrtocTrackISRC
hi clear cdrtocTrackIndex
hi clear cdrtocMMSSFF
hi clear cdrtocTrackIndexMMSSFF
hi clear cdrtocTrackCDTextLanguage
hi clear cdrtocTrackCDTextLanguageEnd
hi clear cdrtocTrackCDTextLanguageNumber
hi clear cdrtocTrackCDTextLanguageStart
hi clear cdrtocTrackContents
hi clear cdrtocTrackMarker
hi clear cdrtocTrackMarkerEndMMSSFF
hi clear cdrtocTrackMarkerStartMMSSFF
hi clear cdrtocTrackMode
hi clear cdrtocTrackPregap
hi clear cdrtocTrackPregapMMSSFF
hi clear cdrtocTrackSilenceLength
hi clear cdrtocTrackSubChannelMode
hi clear cdrtocTrackSubTrack
hi clear cdrtocFilename
hi clear cdrtocTrackSubTrackDatafileFilename
hi clear cdrtocTrackSubTrackDatafileFilenameDelimiters
hi clear cdrtocSpecialChar
hi clear cdrtocTrackSubTrackDatafileFilenameSpecialChar
hi clear cdrtocTrackSubTrackDatafileLength
hi clear cdrtocTrackSubTrackFifoFilename
hi clear cdrtocTrackSubTrackFifoFilenameDelimiters
hi clear cdrtocTrackSubTrackFifoFilenameSpecialChar
hi clear cdrtocTrackSubTrackFifoLength
hi clear cdrtocTrackSubTrackFileFilename
hi clear cdrtocTrackSubTrackFileFilenameDelimiters
hi clear cdrtocTrackSubTrackFileFilenameSpecialChar
hi clear cdrtocTrackSubTrackFileLength
hi clear cdrtocTrackSubTrackFileStart
hi clear cdrtocTrackSubTrackZeroDataLength
hi clear cdrtocTrackSubTrackZeroDataMode
hi clear cdrtocTrackSubTrackZeroDataSubChannelMode
hi clear cdrtocTrackSubTrackdatafileFilenameSpecialChar
hi clear litestepTodo
hi clear litestepComment
hi clear litestepDirective
hi clear litestepGenericDirective
hi clear litestepPreProc
hi clear litestepMultiCommandStart
hi clear litestepMultiCommand
hi clear litestepDelimiter
hi clear litestepVariableExpansion
hi clear litestepNumber
hi clear litestepString
hi clear litestepSubValue
hi clear litestepBoolean
hi clear litestepOperator
hi clear litestepRelationalOperator
hi clear litestepLogicalOperator
hi clear litestepMathOperator
hi clear litestepBuiltinDirective
hi clear litestepDeprecatedBuiltinDirective
hi clear litestepVariable
hi clear litestepBuiltinFolderVariable
hi clear litestepBuiltinConditionalVariable
hi clear litestepBuiltinResourceVariable
hi clear litestepBuiltinGUIDFolderMappingVariable
hi clear litestepBangStart
hi clear litestepBang
hi clear litestepBuiltinBang
hi clear calendarTodo
hi clear calendarComment
hi clear calendarCppString
hi clear calendarSpecial
hi clear calendarPreCondit
hi clear calendarCppOut
hi clear calendarCppOut2
hi clear calendarCppSkip
hi clear calendarIncluded
hi clear calendarInclude
hi clear calendarDefine
hi clear calendarPreProc
hi clear calendarKeyword
hi clear calendarNumber
hi clear calendarMonth
hi clear calendarWeekday
hi clear calendarWeekdayMod
hi clear calendarTime
hi clear calendarVariable
hi clear javaScriptComment
hi clear javaScriptLineComment
hi clear javaScriptCommentTodo
hi clear javaScriptSpecial
hi clear javaScriptStringS
hi clear javaScriptStringD
hi clear javaScriptCharacter
hi clear javaScriptSpecialCharacter
hi clear javaScriptNumber
hi clear javaScriptConditional
hi clear javaScriptRepeat
hi clear javaScriptBranch
hi clear javaScriptOperator
hi clear javaScriptType
hi clear javaScriptStatement
hi clear javaScriptFunction
hi clear javaScriptBraces
hi clear javaScriptError
hi clear javaScrParenError
hi clear javaScriptNull
hi clear javaScriptBoolean
hi clear javaScriptRegexpString
hi clear javaScriptIdentifier
hi clear javaScriptLabel
hi clear javaScriptException
hi clear javaScriptMessage
hi clear javaScriptGlobal
hi clear javaScriptMember
hi clear javaScriptDeprecated
hi clear javaScriptReserved
hi clear javaScriptDebug
hi clear javaScriptConstant
hi clear htmlTag
hi clear htmlEndTag
hi clear htmlArg
hi clear htmlTagName
hi clear htmlSpecialTagName
hi clear htmlValue
hi clear htmlSpecialChar
hi clear htmlPreStmt
hi clear htmlPreError
hi clear htmlPreProc
hi clear htmlPreAttr
hi clear htmlPreProcAttrName
hi clear htmlPreProcAttrError
hi clear htmlSpecial
hi clear htmlSpecialChar
hi clear htmlString
hi clear htmlStatement
hi clear htmlComment
hi clear htmlCommentPart
hi clear htmlValue
hi clear htmlCommentError
hi clear htmlTagError
hi clear htmlEvent
hi clear htmlError
hi clear javaScript
hi clear javaScriptExpression
hi clear htmlCssStyleComment
hi clear htmlCssDefinition
hi clear ttlCharacter
hi clear ttlNumber
hi clear ttlComment
hi clear ttlFirstComment
hi clear ttlString
hi clear ttlLabel
hi clear ttlIf
hi clear ttlElseIf
hi clear ttlThen
hi clear ttlConditional
hi clear ttlRepeat
hi clear ttlControlCommand
hi clear ttlVar
hi clear ttlOperator
hi clear ttlCommunicationCommand
hi clear ttlStringCommand
hi clear ttlFileCommand
hi clear ttlPasswordCommand
hi clear ttlMiscCommand
hi clear focexecString1
hi clear focexecString2
hi clear focexecNumber
hi clear focexecComment
hi clear focexecTable
hi clear focexecModify
hi clear focexecNormal
hi clear focexecSet
hi clear focexecDash
hi clear focexecFileDef
hi clear focexecJoin
hi clear focexecAmperVar
hi clear focexecFuse
hi clear abelHeader
hi clear abelSection
hi clear abelDeclaration
hi clear abelLogicalOperator
hi clear abelRangeOperator
hi clear abelAlternateOperator
hi clear abelArithmeticOperator
hi clear abelRelationalOperator
hi clear abelAssignmentOperator
hi clear abelTruthTableOperator
hi clear abelSpecifier
hi clear abelOperator
hi clear abelStatement
hi clear abelIdentifier
hi clear abelTypeId
hi clear abelTypeIdChar
hi clear abelType
hi clear abelNumber
hi clear abelString
hi clear abelConstant
hi clear abelComment
hi clear abelExtension
hi clear abelSpecialChar
hi clear abelTypeIdEnd
hi clear abelSpecial
hi clear abelDirective
hi clear abelTodo
hi clear abelError
hi clear sedAddress
hi clear sedACI
hi clear sedBranch
hi clear sedComment
hi clear sedDelete
hi clear sedError
hi clear sedFlag
hi clear sedFlagwrite
hi clear sedFunction
hi clear sedLabel
hi clear sedLineCont
hi clear sedPutHoldspc
hi clear sedReplaceMeta
hi clear sedRegexpMeta
hi clear sedRW
hi clear sedSemicolon
hi clear sedST
hi clear sedSpecial
hi clear sedWhitespace
hi clear sedTab
hi clear radianceKeyword
hi clear radianceExtraType
hi clear radianceSurfType
hi clear radianceLightType
hi clear radianceMatType
hi clear radiancePatType
hi clear radianceTexType
hi clear radianceMixType
hi clear radianceComment
hi clear radianceCommand
hi clear radianceID
hi clear radianceTodo
hi clear eximComment
hi clear eximFixme
hi clear eximEnd
hi clear eximNumber
hi clear eximDriverName
hi clear eximConstant
hi clear eximTime
hi clear eximKeyword
hi clear eximSpecialChar
hi clear eximMacroName
hi clear eximTransport
hi clear viminfoComment
hi clear viminfoError
hi clear viminfoStatement
hi clear viminfoNew
hi clear raccTodo
hi clear raccComment
hi clear raccPrecSpec
hi clear raccPrecToken
hi clear raccPrecString
hi clear raccTokenDecl
hi clear raccToken
hi clear raccTokenR
hi clear raccExpect
hi clear raccNumber
hi clear raccOptions
hi clear raccOptionsR
hi clear raccConvToken
hi clear raccStart
hi clear raccTargetS
hi clear raccSpecial
hi clear raccString
hi clear raccTarget
hi clear raccDelimiter
hi clear raccPreProc
hi clear raccKeyword
hi clear cudaStorageClass
hi clear cudaStructure
hi clear cudaType
hi clear cudaVariable
hi clear cudaConstant
hi clear mrxvtrcError
hi clear mrxvtrcComment
hi clear mrxvtrcClass
hi clear mrxvtrcOptions
hi clear mrxvtrcBColon
hi clear mrxvtrcCColon
hi clear mrxvtrcNColon
hi clear mrxvtrcSColon
hi clear mrxvtrcProfile
hi clear mrxvtrcPSOpts
hi clear mrxvtrcPCOpts
hi clear mrxvtrcPNOpts
hi clear mrxvtrcBoolVal
hi clear mrxvtrcStrVal
hi clear mrxvtrcColorVal
hi clear mrxvtrcNumVal
hi clear mrxvtrcSBstyle
hi clear mrxvtrcSBalign
hi clear mrxvtrcTSmode
hi clear mrxvtrcGrkKbd
hi clear mrxvtrcXftWt
hi clear mrxvtrcXftSl
hi clear mrxvtrcXftWd
hi clear mrxvtrcXftHt
hi clear mrxvtrcPedit
hi clear mrxvtrcMod
hi clear mrxvtrcSelSty
hi clear mrxvtrcMacro
hi clear mrxvtrcKey
hi clear mrxvtrcTitle
hi clear mrxvtrcShell
hi clear mrxvtrcCmd
hi clear mrxvtrcSubwin
hi clear spyceDirectiveKeyword
hi clear spyceDirectiveArg
hi clear spyceDirectiveString
hi clear spyceDirectiveValue
hi clear spyceDelim
hi clear spyceStmtDelim
hi clear spyceChunkDelim
hi clear spyceEvalDelim
hi clear spyceLambdaDelim
hi clear spyceCommentDelim
hi clear spyceBeginErrorS
hi clear spyceBeginErrorA
hi clear spyceEndErrorS
hi clear spyceEndErrorA
hi clear spyceStmtS
hi clear spyceStmtA
hi clear spyceChunkS
hi clear spyceChunkA
hi clear spyceEvalS
hi clear spyceEvalA
hi clear spyceDirectiveS
hi clear spyceDirectiveA
hi clear spyceCommentS
hi clear spyceCommentA
hi clear spyceLambdaS
hi clear spyceLambdaA
hi clear spyce
hi clear atlasConditional
hi clear atlasRepeat
hi clear atlasStatement
hi clear atlasNumber
hi clear atlasHexNumber
hi clear atlasOctalNumber
hi clear atlasBinNumber
hi clear atlasDecimalNumber
hi clear atlasFormatString
hi clear atlasString
hi clear atlasComment
hi clear atlasComment2
hi clear atlasInclude
hi clear atlasDefine
hi clear atlasReserved
hi clear atlasStorageClass
hi clear atlasIdentifier
hi clear atlasSpecial
hi clear smilTag
hi clear smilEndTag
hi clear smilArg
hi clear smilTagName
hi clear smilSpecialTagName
hi clear smilValue
hi clear smilSpecialChar
hi clear smilSpecial
hi clear smilSpecialChar
hi clear smilString
hi clear smilStatement
hi clear smilComment
hi clear smilCommentPart
hi clear smilPreProc
hi clear smilValue
hi clear smilCommentError
hi clear smilTagError
hi clear smilError
hi clear htmlComment
hi clear htmlCommentPart
hi clear jspComment
hi clear jspTag
hi clear jspDirective
hi clear jspDirName
hi clear jspDirArg
hi clear jspCommand
hi clear jspCommandName
hi clear jspCommandArg
hi clear occamType
hi clear occamKeyword
hi clear occamComment
hi clear occamCommentTitle
hi clear occamTodo
hi clear occamNote
hi clear occamString
hi clear occamCharString
hi clear occamNumber
hi clear occamCDirective
hi clear occamCDString
hi clear occamPPIdentifier
hi clear occamBoolean
hi clear occamSpecialChar
hi clear occamChar
hi clear occamStructure
hi clear occamIdentifier
hi clear occamConstant
hi clear occamOperator
hi clear occamFunction
hi clear occamRepeat
hi clear occamConditional
hi clear occamBrackets
hi clear occamParantheses
hi clear slLabel
hi clear slUserLabel
hi clear slConditional
hi clear slRepeat
hi clear slCharacter
hi clear slSpecialCharacter
hi clear slNumber
hi clear slFloat
hi clear slParenError
hi clear slInParen
hi clear slCommentError
hi clear slOperator
hi clear slStorageClass
hi clear slError
hi clear slStatement
hi clear slType
hi clear slCommentError
hi clear slCommentString
hi clear slComment2String
hi clear slCommentSkip
hi clear slString
hi clear slComment
hi clear slSpecial
hi clear slTodo
hi clear slVariable
hi clear zoneDirective
hi clear zoneUnknown
hi clear zoneOrigin
hi clear zoneOwnerName
hi clear zoneDomain
hi clear zoneSpecial
hi clear zoneTTL
hi clear zoneClass
hi clear zoneRRType
hi clear zoneIPAddr
hi clear zoneIP6Addr
hi clear zoneText
hi clear zoneNumber
hi clear zoneSerial
hi clear zoneErrParen
hi clear zoneComment
hi clear ptcapComment
hi clear ptcapDelimiter
hi clear ptcapEntry
hi clear ptcapError
hi clear ptcapEscapedChar
hi clear ptcapField
hi clear ptcapLeadBlank
hi clear ptcapLineCont
hi clear ptcapNames
hi clear ptcapNumber
hi clear ptcapNumberError
hi clear ptcapOperator
hi clear ptcapSpecialCap
hi clear ptcapString
hi clear sgmlTodo
hi clear sgmlTag
hi clear sgmlEndTag
hi clear sgmlAbbrEndTag
hi clear sgmlEmptyTag
hi clear sgmlEntity
hi clear sgmlEntityPunct
hi clear sgmlAttribPunct
hi clear sgmlAttrib
hi clear sgmlValue
hi clear sgmlString
hi clear sgmlComment
hi clear sgmlCommentPart
hi clear sgmlCommentError
hi clear sgmlError
hi clear sgmlProcessingDelim
hi clear sgmlProcessing
hi clear sgmlCdata
hi clear sgmlCdataCdata
hi clear sgmlCdataStart
hi clear sgmlCdataEnd
hi clear sgmlDocTypeDecl
hi clear sgmlDocTypeKeyword
hi clear sgmlInlineDTD
hi clear sgmlUnicodeNumberAttr
hi clear sgmlUnicodeSpecifierAttr
hi clear sgmlUnicodeNumberData
hi clear sgmlUnicodeSpecifierData
hi clear xqNumber
hi clear xqFloat
hi clear xqString
hi clear xqVariable
hi clear xqComment
hi clear xqSeparator
hi clear xqStatement
hi clear xqFunction
hi clear xqOperator
hi clear xqType
hi clear xqXPath
hi clear XQdoc
hi clear xqExist
hi clear postscrComment
hi clear postscrConstant
hi clear postscrString
hi clear postscrASCIIString
hi clear postscrHexString
hi clear postscrASCII85String
hi clear postscrNumber
hi clear postscrInteger
hi clear postscrHex
hi clear postscrRadix
hi clear postscrFloat
hi clear postscrBoolean
hi clear postscrIdentifier
hi clear postscrProcedure
hi clear postscrName
hi clear postscrConditional
hi clear postscrRepeat
hi clear postscrL2Repeat
hi clear postscrOperator
hi clear postscrL1Operator
hi clear postscrL2Operator
hi clear postscrL3Operator
hi clear postscrMathOperator
hi clear postscrLogicalOperator
hi clear postscrBinaryOperator
hi clear postscrDSCComment
hi clear postscrSpecialChar
hi clear postscrTodo
hi clear postscrError
hi clear postscrSpecialCharError
hi clear postscrASCII85CharError
hi clear postscrHexCharError
hi clear postscrASCIIStringError
hi clear postscrIdentifierError
hi clear postscrGSOperator
hi clear postscrGSMathOperator
hi clear postscrGSOperator
hi clear postscrGSMathOperator
hi clear vmasmComment
hi clear vmasmTodo
hi clear vmasmhexNumber
hi clear vmasmoctNumber
hi clear vmasmbinNumber
hi clear vmasmdecNumber
hi clear vmasmfloatNumber
hi clear vmasmReg
hi clear vmasmOperator
hi clear vmasmInclude
hi clear vmasmMacro
hi clear vmasmDirective
hi clear vmasmPreCond
hi clear vmasmOpcode
hi clear vmasmCond
hi clear vmasmRepeat
hi clear vmasmLabel
hi clear dtdFunction
hi clear dtdTag
hi clear dtdType
hi clear dtdAttrType
hi clear dtdAttrDef
hi clear dtdConstant
hi clear dtdString
hi clear dtdEnum
hi clear dtdCard
hi clear dtdEntity
hi clear dtdEntityPunct
hi clear dtdParamEntityInst
hi clear dtdParamEntityPunct
hi clear dtdParamEntityDecl
hi clear dtdParamEntityDPunct
hi clear dtdComment
hi clear dtdTagName
hi clear dtdError
hi clear dtdTodo
hi clear tcshError
hi clear tcshBuiltin
hi clear tcshShellVar
hi clear tcshEnvVar
hi clear tcshAliases
hi clear tcshAliCmd
hi clear tcshCommands
hi clear tcshIf
hi clear tcshWhile
hi clear tcshBindkeyFuncs
hi clear tcshExprStart
hi clear tcshExprVar
hi clear tcshExprOp
hi clear tcshExprEnd
hi clear tcshComment
hi clear tcshCommentTi
hi clear tcshSharpBang
hi clear tcshTodo
hi clear tcshSQuote
hi clear tcshDQuote
hi clear tcshBQuoteGrp
hi clear tcshVarError
hi clear tcshUsrVar
hi clear tcshArgv
hi clear tcshSubst
hi clear tcshModifier
hi clear tcshModifierError
hi clear tcshMeta
hi clear tcshRedir
hi clear tcshHereDoc
hi clear tcshOperator
hi clear tcshNumber
hi clear tcshArguement
hi clear tcshSpecial
hi clear jpropertiesComment
hi clear jpropertiesTodo
hi clear jpropertiesIdentifier
hi clear jpropertiesString
hi clear jpropertiesExtendString
hi clear jpropertiesCharacter
hi clear jpropertiesSpecial
hi clear jpropertiesSpecialChar
hi clear jpropertiesError
hi clear gpConditional
hi clear gpRepeat
hi clear gpError
hi clear gpParenError
hi clear gpInParen
hi clear gpStatement
hi clear gpString
hi clear gpComment
hi clear gpInterface
hi clear gpInput
hi clear gpInterfaceKey
hi clear gpFunction
hi clear gpScope
hi clear gpSpecial
hi clear gpTodo
hi clear gpArgs
hi clear cmakeCommand
hi clear cmakeCommandConditional
hi clear cmakeCommandDeprecated
hi clear cmakeCommandRepeat
hi clear cmakeComment
hi clear cmakeEnvironment
hi clear cmakeEscaped
hi clear cmakeGeneratorExpression
hi clear cmakeGeneratorExpressions
hi clear cmakeLuaComment
hi clear cmakeModule
hi clear cmakeProperty
hi clear cmakeRegistry
hi clear cmakeString
hi clear cmakeTodo
hi clear cmakeVariableValue
hi clear cmakeVariable
hi clear cmakeKWExternalProject
hi clear cmakeKWadd_compile_options
hi clear cmakeKWadd_custom_command
hi clear cmakeKWadd_custom_target
hi clear cmakeKWadd_definitions
hi clear cmakeKWadd_dependencies
hi clear cmakeKWadd_executable
hi clear cmakeKWadd_library
hi clear cmakeKWadd_subdirectory
hi clear cmakeKWadd_test
hi clear cmakeKWbuild_command
hi clear cmakeKWbuild_name
hi clear cmakeKWcmake_host_system_information
hi clear cmakeKWcmake_minimum_required
hi clear cmakeKWcmake_parse_arguments
hi clear cmakeKWcmake_policy
hi clear cmakeKWconfigure_file
hi clear cmakeKWcreate_test_sourcelist
hi clear cmakeKWctest_build
hi clear cmakeKWctest_configure
hi clear cmakeKWctest_coverage
hi clear cmakeKWctest_memcheck
hi clear cmakeKWctest_run_script
hi clear cmakeKWctest_start
hi clear cmakeKWctest_submit
hi clear cmakeKWctest_test
hi clear cmakeKWctest_update
hi clear cmakeKWctest_upload
hi clear cmakeKWdefine_property
hi clear cmakeKWenable_language
hi clear cmakeKWexec_program
hi clear cmakeKWexecute_process
hi clear cmakeKWexport
hi clear cmakeKWexport_library_dependencies
hi clear cmakeKWfile
hi clear cmakeKWfind_file
hi clear cmakeKWfind_library
hi clear cmakeKWfind_package
hi clear cmakeKWfind_path
hi clear cmakeKWfind_program
hi clear cmakeKWfltk_wrap_ui
hi clear cmakeKWforeach
hi clear cmakeKWfunction
hi clear cmakeKWget_cmake_property
hi clear cmakeKWget_directory_property
hi clear cmakeKWget_filename_component
hi clear cmakeKWget_property
hi clear cmakeKWget_source_file_property
hi clear cmakeKWget_target_property
hi clear cmakeKWget_test_property
hi clear cmakeKWif
hi clear cmakeKWinclude
hi clear cmakeKWinclude_directories
hi clear cmakeKWinclude_external_msproject
hi clear cmakeKWinclude_guard
hi clear cmakeKWinstall
hi clear cmakeKWinstall_files
hi clear cmakeKWinstall_programs
hi clear cmakeKWinstall_targets
hi clear cmakeKWlist
hi clear cmakeKWload_cache
hi clear cmakeKWload_command
hi clear cmakeKWmacro
hi clear cmakeKWmake_directory
hi clear cmakeKWmark_as_advanced
hi clear cmakeKWmath
hi clear cmakeKWmessage
hi clear cmakeKWoption
hi clear cmakeKWproject
hi clear cmakeKWremove
hi clear cmakeKWseparate_arguments
hi clear cmakeKWset
hi clear cmakeKWset_directory_properties
hi clear cmakeKWset_property
hi clear cmakeKWset_source_files_properties
hi clear cmakeKWset_target_properties
hi clear cmakeKWset_tests_properties
hi clear cmakeKWsource_group
hi clear cmakeKWstring
hi clear cmakeKWsubdirs
hi clear cmakeKWtarget_compile_definitions
hi clear cmakeKWtarget_compile_features
hi clear cmakeKWtarget_compile_options
hi clear cmakeKWtarget_include_directories
hi clear cmakeKWtarget_link_libraries
hi clear cmakeKWtarget_sources
hi clear cmakeKWtry_compile
hi clear cmakeKWtry_run
hi clear cmakeKWunset
hi clear cmakeKWuse_mangled_mesa
hi clear cmakeKWvariable_requires
hi clear cmakeKWvariable_watch
hi clear cmakeKWwhile
hi clear cmakeKWwrite_file
hi clear spupCdi
hi clear spupConditions
hi clear spupDeclare
hi clear spupEstimation
hi clear spupExternal
hi clear spupFlowsheet
hi clear spupFunction
hi clear spupGlobal
hi clear spupHomotopy
hi clear spupMacro
hi clear spupModel
hi clear spupOperation
hi clear spupOptions
hi clear spupProcedure
hi clear spupProfiles
hi clear spupReport
hi clear spupTitle
hi clear spupUnit
hi clear spupCdiSubs
hi clear spupConditionsSubs
hi clear spupDeclareSubs
hi clear spupEstimationSubs
hi clear spupExternalSubs
hi clear spupFlowsheetSubs
hi clear spupFunctionSubs
hi clear spupHomotopySubs
hi clear spupMacroSubs
hi clear spupModelSubs
hi clear spupOperationSubs
hi clear spupOptionsSubs
hi clear spupProcedureSubs
hi clear spupReportSubs
hi clear spupUnitSubs
hi clear spupCode
hi clear spupComment
hi clear spupComment2
hi clear spupConditional
hi clear spupConstant
hi clear spupError
hi clear spupHelp
hi clear spupIdentifier
hi clear spupNumber
hi clear spupOperator
hi clear spupOpenBrace
hi clear spupSection
hi clear spupSpecial
hi clear spupStreams
hi clear spupString
hi clear spupSubs
hi clear spupSymbol
hi clear spupTextprocError
hi clear spupTextprocGeneric
hi clear spupTypes
hi clear virataDefSubstError
hi clear virataDefSubst
hi clear virataInAlter
hi clear virataInExec
hi clear virataInExport
hi clear virataInImport
hi clear virataInInstance
hi clear virataInMake
hi clear virataInModule
hi clear virataInProcess
hi clear virataInMacAddr
hi clear virataComment
hi clear virataSpclComment
hi clear virataInCommentTodo
hi clear virataString
hi clear virataStringError
hi clear virataCharacter
hi clear virataSpclChar
hi clear virataDecNumber
hi clear virataHexNumber
hi clear virataSizeNumber
hi clear virataNumberError
hi clear virataIdentError
hi clear virataPreProc
hi clear virataDefine
hi clear virataInclude
hi clear virataPreCondit
hi clear virataPreProcError
hi clear virataPreProcWarn
hi clear virataStatement
hi clear virataCfgStatement
hi clear virataOperator
hi clear virataDirective
hi clear resolvIP
hi clear resolvIPNetmask
hi clear resolvHostname
hi clear resolvOption
hi clear resolvIPNameserver
hi clear resolvHostnameSearch
hi clear resolvIPNetmaskSortList
hi clear resolvNameServer
hi clear resolvLwserver
hi clear resolvDomain
hi clear resolvSearch
hi clear resolvSortList
hi clear resolvOptions
hi clear resolvComment
hi clear resolvOperator
hi clear resolvError
hi clear resolvIPError
hi clear resolvIPSpecial
hi clear oraKeyword
hi clear oraKeywordGroup
hi clear oraKeywordPref
hi clear oraKeywordObs
hi clear oraKeywordUnd
hi clear oraKeywordUndObs
hi clear oraValue
hi clear oraModifier
hi clear oraString
hi clear oraSpecial
hi clear oraError
hi clear oraParenError
hi clear oraComment
hi clear rnowebDelimiter
hi clear rnowebSweaveOpts
hi clear rnowebChunkReference
hi clear fvwmComment
hi clear fvwmEnvVar
hi clear fvwmNumber
hi clear fvwmKeyword
hi clear fvwmPath
hi clear fvwmModConf
hi clear fvwmRGBValue
hi clear fvwmString
hi clear fvwmBackslash
hi clear fvwmExec
hi clear fvwmKey
hi clear fvwmModule
hi clear fvwmFunction
hi clear fvwmSpecialFn
hi clear fvwmCursorStyle
hi clear fvwmStyleNames
hi clear fvwmMStyleNames
hi clear fvwmCSNames
hi clear fvwmGradient
hi clear fvwmCondNames
hi clear fvwmTCNames
hi clear fvwmTRNames
hi clear fvwmWLOpts
hi clear fvwmBNum
hi clear fvwmBState
hi clear fvwmBStyleNames
hi clear fvwmBStyleFlags
hi clear fvwmBStateTF
hi clear fvwmBStateNames
hi clear fvwmBdState
hi clear fvwmBdStyNames
hi clear fvwmBdStyFlags
hi clear fvwmTState
hi clear fvwmTStyleNames
hi clear fvwmMPmapNames
hi clear fvwmTStyleFlags
hi clear fvwmDirection
hi clear fvwmKeyWin
hi clear fvwmMouseWin
hi clear fvwmKeyName
hi clear fvwmKeyContext
hi clear fvwmKeyMods
hi clear fvwmMouseButton
hi clear fvwmMenuString
hi clear fvwmIcon
hi clear fvwmShortcutKey
hi clear fvwmModuleName
hi clear wdiffOld
hi clear wdiffNew
hi clear ishdNumber
hi clear ishdError
hi clear ishdStatement
hi clear ishdString
hi clear ishdComment
hi clear ishdTodo
hi clear ishdFunction
hi clear ishdConstant
hi clear ishdType
hi clear ishdInclude
hi clear ishdDefine
hi clear ishdIncluded
hi clear ishdPreCondit
hi clear ishdHashIf0Skip
hi clear ishdHashIf0End
hi clear ishdHashIf0
hi clear inittabComment
hi clear inittabFixme
hi clear inittabActionName
hi clear inittabError
hi clear inittabId
hi clear inittabRunLevels
hi clear inittabColonProcess
hi clear inittabColonAction
hi clear inittabColonRunLevels
hi clear inittabColon
hi clear inittabShString
hi clear inittabShOption
hi clear inittabShCommand
hi clear Quote
hi clear sqlComment
hi clear sqlFunction
hi clear sqlKeyword
hi clear sqlNumber
hi clear sqlOperator
hi clear sqlSpecial
hi clear sqlStatement
hi clear sqlString
hi clear sqlType
hi clear sqlTodo
hi clear cdrdaoconfTodo
hi clear cdrdaoconfComment
hi clear cdrdaoconfKeyword
hi clear cdrdaoconfIntegerKeyword
hi clear cdrdaoconfDriverKeyword
hi clear cdrdaoconfDeviceKeyword
hi clear cdrdaoconfPathKeyword
hi clear cdrdaoconfDelimiter
hi clear cdrdaoconfIntegerDelimiter
hi clear cdrdaoconfDriverDelimiter
hi clear cdrdaoconfDeviceDelimiter
hi clear cdrdaoconfPathDelimiter
hi clear cdrdaoconfInteger
hi clear cdrdaoconfParanoiaMode
hi clear cdrdaoconfDriver
hi clear cdrdaoconfDevice
hi clear cdrdaoconfPath
hi clear esqlcOperator
hi clear esqlcStatement
hi clear esqlcKeyword
hi clear esqlcSpecial
hi clear esqlcPreProc
hi clear valgrindSpecLine
hi clear valgrindPid0
hi clear valgrindPid1
hi clear valgrindPid2
hi clear valgrindPid3
hi clear valgrindPid4
hi clear valgrindPid5
hi clear valgrindPid6
hi clear valgrindPid7
hi clear valgrindPid8
hi clear valgrindPid9
hi clear valgrindOptions
hi clear valgrindError
hi clear valgrindNote
hi clear valgrindSummary
hi clear valgrindAt
hi clear valgrindAddr
hi clear valgrindFunc
hi clear valgrindBin
hi clear valgrindSrc
hi clear sshconfigComment
hi clear sshconfigTodo
hi clear sshconfigHostPort
hi clear sshconfigNumber
hi clear sshconfigConstant
hi clear sshconfigYesNo
hi clear sshconfigCipher
hi clear sshconfigCiphers
hi clear sshconfigMAC
hi clear sshconfigHostKeyAlgo
hi clear sshconfigLogLevel
hi clear sshconfigSysLogFacility
hi clear sshconfigAddressFamily
hi clear sshconfigIPQoS
hi clear sshconfigKbdInteractive
hi clear sshconfigKexAlgo
hi clear sshconfigTunnel
hi clear sshconfigPreferredAuth
hi clear sshconfigVar
hi clear sshconfigEnum
hi clear sshconfigSpecial
hi clear sshconfigKeyword
hi clear sshconfigHostSect
hi clear sshconfigMatch
hi clear flexwikiH1
hi clear flexwikiH2
hi clear flexwikiH3
hi clear flexwikiH4
hi clear flexwikiH5
hi clear flexwikiH6
hi clear flexwikiHR
hi clear flexwikiBold
hi clear flexwikiItalic
hi clear flexwikiCode
hi clear flexwikiWord
hi clear flexwikiEscape
hi clear flexwikiPre
hi clear flexwikiLink
hi clear flexwikiList
hi clear flexwikiTable
hi clear flexwikiEmoticons
hi clear flexwikiDelText
hi clear flexwikiDeEmphasis
hi clear flexwikiInsText
hi clear flexwikiSuperScript
hi clear flexwikiSubScript
hi clear flexwikiCitation
hi clear flexwikiSingleLineProperty
hi clear xsPrivate
hi clear xsSuperseded
hi clear xsType
hi clear xsString
hi clear xsConstant
hi clear xsException
hi clear xsKeyword
hi clear xsFunction
hi clear xsVariable
hi clear xsMacro
hi clear contextOptions
hi clear contextComment
hi clear contextBlockDelim
hi clear contextBuiltin
hi clear contextDelimiter
hi clear contextEscaped
hi clear contextPreProc
hi clear contextSectioning
hi clear contextSpecial
hi clear contextType
hi clear contextStyle
hi clear contextFont
hi clear contextDirectLua
hi clear tssopParam
hi clear tssopProp
hi clear tssopArgs
hi clear tssopComment
hi clear tssopCommentString
hi clear tssopPropName
hi clear tssopInteger
hi clear tssopFloat
hi clear tssopScientific
hi clear crontabMin
hi clear crontabHr
hi clear crontabDay
hi clear crontabMnth
hi clear crontabMnth12
hi clear crontabMnthS
hi clear crontabMnthN
hi clear crontabDow
hi clear crontabDow7
hi clear crontabDowS
hi clear crontabDowN
hi clear crontabNick
hi clear crontabVar
hi clear crontabPercent
hi clear crontabCmd
hi clear crontabCmnt
hi clear specmanConditional
hi clear specmanConstraint
hi clear specmanRepeat
hi clear specmanString
hi clear specmanComment
hi clear specmanConstant
hi clear specmanNumber
hi clear specmanCompare
hi clear specmanOperator
hi clear specmanLogical
hi clear specmanStatement
hi clear specmanHDL
hi clear specmanMethod
hi clear specmanInclude
hi clear specmanStructure
hi clear specmanBoolean
hi clear specmanFSM
hi clear specmanSpecial
hi clear specmanType
hi clear specmanTemporal
hi clear specmanFile
hi clear specmanPreCondit
hi clear specmanDefine
hi clear specmanLabel
hi clear specmanPacking
hi clear specmanTodo
hi clear specmanParenError
hi clear specmanErrInParen
hi clear specmanErrInBracket
hi clear rplControl
hi clear rplStatement
hi clear rplAlgConditional
hi clear rplConditional
hi clear rplConditionalError
hi clear rplRepeat
hi clear rplCycle
hi clear rplUntil
hi clear rplIntrinsic
hi clear rplStorage
hi clear rplStorageExpr
hi clear rplStorageError
hi clear rplReadWrite
hi clear rplOperator
hi clear rplList
hi clear rplArray
hi clear rplConstant
hi clear rplExpr
hi clear rplString
hi clear rplStringGuilles
hi clear rplStringAntislash
hi clear rplBinary
hi clear rplOctal
hi clear rplDecimal
hi clear rplHexadecimal
hi clear rplInteger
hi clear rplFloat
hi clear rplComplex
hi clear rplBoolean
hi clear rplObsolete
hi clear rplPreCondit
hi clear rplInclude
hi clear rplIncluded
hi clear rplInclude
hi clear rplExecPath
hi clear rplPreProc
hi clear rplComment
hi clear rplCommentLine
hi clear rplCommentString
hi clear rplSubDelimitor
hi clear rplCommentError
hi clear rplParenError
hi clear rplSubError
hi clear rplArrayError
hi clear rplListError
hi clear rplTab
hi clear rplBinaryError
hi clear rplOctalError
hi clear rplDecimalError
hi clear rplHexadecimalError
hi clear scssComment
hi clear gpgComment
hi clear gpgTodo
hi clear gpgID
hi clear gpgOption
hi clear gpgCommand
hi clear gpgArgError
hi clear xmlTodo
hi clear xmlTag
hi clear xmlTagName
hi clear xmlEndTag
hi clear xmlEntity
hi clear xmlEntityPunct
hi clear xmlAttribPunct
hi clear xmlAttrib
hi clear xmlString
hi clear xmlComment
hi clear xmlCommentStart
hi clear xmlCommentPart
hi clear xmlCommentError
hi clear xmlError
hi clear xmlProcessingDelim
hi clear xmlProcessing
hi clear xmlCdata
hi clear xmlCdataCdata
hi clear xmlCdataStart
hi clear xmlCdataEnd
hi clear xmlDocTypeDecl
hi clear xmlDocTypeKeyword
hi clear xmlInlineDTD
hi clear sqlComment
hi clear sqlKeyword
hi clear sqlNumber
hi clear sqlOperator
hi clear sqlProcedure
hi clear sqlFunction
hi clear sqlSystem
hi clear sqlSpecial
hi clear sqlStatement
hi clear sqlString
hi clear sqlType
hi clear sqlCodes
hi clear sqlTriggers
hi clear rcsKeyword
hi clear rcsNumber
hi clear rcsString
hi clear rcsTextStr
hi clear rcsSpecial
hi clear rcsDiffLines
hi clear rcsEOFError
hi clear hsModule
hi clear hsImport
hi clear hsImportMod
hi clear hsInfix
hi clear hsStructure
hi clear hsStatement
hi clear hsConditional
hi clear hsSpecialChar
hi clear hsTypedef
hi clear hsVarSym
hi clear hsConSym
hi clear hsOperator
hi clear hsDelimiter
hi clear hsSpecialCharError
hi clear hsString
hi clear hsCharacter
hi clear hsNumber
hi clear hsFloat
hi clear hsConditional
hi clear hsLiterateComment
hi clear hsBlockComment
hi clear hsLineComment
hi clear hsComment
hi clear hsPragma
hi clear hsBoolean
hi clear hsType
hi clear hsMaybe
hi clear hsOrdering
hi clear hsEnumConst
hi clear hsDebug
hi clear cCppString
hi clear cCommentStart
hi clear cCommentError
hi clear cCommentStartError
hi clear cInclude
hi clear cPreProc
hi clear cDefine
hi clear cIncluded
hi clear cError
hi clear cPreCondit
hi clear cComment
hi clear cCppSkip
hi clear cCppOut2
hi clear cCppOut
hi clear xmodmapComment
hi clear xmodmapTodo
hi clear xmodmapInt
hi clear xmodmapHex
hi clear xmodmapOctal
hi clear xmodmapOctalError
hi clear xmodmapKeySym
hi clear xmodmapKeyword
hi clear zshTodo
hi clear zshComment
hi clear zshPreProc
hi clear zshQuoted
hi clear zshString
hi clear zshStringDelimiter
hi clear zshPOSIXString
hi clear zshJobSpec
hi clear zshPrecommand
hi clear zshDelimiter
hi clear zshConditional
hi clear zshException
hi clear zshRepeat
hi clear zshKeyword
hi clear zshFunction
hi clear zshKSHFunction
hi clear zshHereDoc
hi clear zshOperator
hi clear zshRedir
hi clear zshVariable
hi clear zshVariableDef
hi clear zshDereferencing
hi clear zshShortDeref
hi clear zshLongDeref
hi clear zshDeref
hi clear zshDollarVar
hi clear zshCommands
hi clear zshOptStart
hi clear zshOption
hi clear zshTypes
hi clear zshSwitches
hi clear zshNumber
hi clear zshSubst
hi clear zshMathSubst
hi clear zshOldSubst
hi clear zshSubstDelim
hi clear zshGlob
hi clear pikeLabel
hi clear pikeUserLabel
hi clear pikeConditional
hi clear pikeRepeat
hi clear pikeCharacter
hi clear pikeSpecialCharacter
hi clear pikeNumber
hi clear pikeFloat
hi clear pikeOctalError
hi clear pikeParenError
hi clear pikeInParen
hi clear pikeCommentError
hi clear pikeOperator
hi clear pikeInclude
hi clear pikePreProc
hi clear pikeDefine
hi clear pikeIncluded
hi clear pikeError
hi clear pikeStatement
hi clear pikePreCondit
hi clear pikeType
hi clear pikeCommentError
hi clear pikeCommentString
hi clear pikeComment2String
hi clear pikeCommentSkip
hi clear pikeString
hi clear pikeComment
hi clear pikeSpecial
hi clear pikeTodo
hi clear pikeException
hi clear pikeCompoundType
hi clear cuplsimOrder
hi clear cuplsimBase
hi clear cuplsimBaseType
hi clear cuplsimVectors
hi clear cuplsimStimulus
hi clear cuplsimOutput
hi clear cuplsimOrderFormat
hi clear cuplHeader
hi clear cuplLogicalOperator
hi clear cuplRangeOperator
hi clear cuplArithmeticOperator
hi clear cuplAssignmentOperator
hi clear cuplEqualityOperator
hi clear cuplTruthTableOperator
hi clear cuplOperator
hi clear cuplFunction
hi clear cuplStatement
hi clear cuplNumberRange
hi clear cuplNumber
hi clear cuplString
hi clear cuplComment
hi clear cuplExtension
hi clear cuplSpecialChar
hi clear cuplSpecial
hi clear cuplDirective
hi clear cuplTodo
hi clear dLineCommentString
hi clear dBlockCommentString
hi clear dNestedCommentString
hi clear dCommentStar
hi clear dCommentPlus
hi clear dParenString
hi clear dBrackString
hi clear dAngleString
hi clear dCurlyString
hi clear dBinary
hi clear dDec
hi clear dHex
hi clear dOctal
hi clear dFloat
hi clear dHexFloat
hi clear dDebug
hi clear dBranch
hi clear dConditional
hi clear dLabel
hi clear dUserLabel
hi clear dRepeat
hi clear dExceptions
hi clear dAssert
hi clear dStatement
hi clear dScopeDecl
hi clear dStorageClass
hi clear dBoolean
hi clear dUnicode
hi clear dTokenStringBrack
hi clear dHereString
hi clear dNestString
hi clear dDelimString
hi clear dRawString
hi clear dString
hi clear dHexString
hi clear dCharacter
hi clear dEscSequence
hi clear dFormat
hi clear dSpecialCharError
hi clear dOctalError
hi clear dOperator
hi clear dOpOverload
hi clear dConstant
hi clear dTypedef
hi clear dEnum
hi clear dStructure
hi clear dTodo
hi clear dType
hi clear dLineComment
hi clear dBlockComment
hi clear dNestedComment
hi clear dCommentError
hi clear dNestedCommentError
hi clear dCommentStartError
hi clear dExternal
hi clear dAnnotation
hi clear dSharpBang
hi clear dAttribute
hi clear dIdentifier
hi clear dVersion
hi clear dVersionIdentifier
hi clear dScopeIdentifier
hi clear dTraitsIdentifier
hi clear dPragma
hi clear dPragmaIdentifier
hi clear dExtern
hi clear dExternIdentifier
hi clear dAsmBody
hi clear dAsmStatement
hi clear dAsmOpCode
hi clear ecdComment
hi clear ecdAttr
hi clear ecdAttrN
hi clear ecdAttrV
hi clear ecdTag
hi clear ecdTagN
hi clear ecdTagError
hi clear ProgressByte
hi clear ProgressCase
hi clear ProgressComment
hi clear ProgressConditional
hi clear ProgressDebug
hi clear ProgressDo
hi clear ProgressEndError
hi clear ProgressFor
hi clear ProgressFunction
hi clear ProgressIdentifier
hi clear ProgressInclude
hi clear ProgressMatrixDelimiter
hi clear ProgressNumber
hi clear ProgressOperator
hi clear ProgressPreProc
hi clear ProgressProcedure
hi clear ProgressQuote
hi clear ProgressRepeat
hi clear ProgressReserved
hi clear ProgressSpaceError
hi clear ProgressString
hi clear ProgressTodo
hi clear ProgressType
hi clear ProgressShowTab
hi clear takcmpTitle
hi clear takcmpUnit
hi clear takcmpLabel
hi clear takcmpHeader
hi clear takcmpDate
hi clear takcmpTime
hi clear takcmpInteger
hi clear takcmpFloat
hi clear ncfCommands
hi clear ncfSetCommands
hi clear ncfLogins
hi clear ncfString
hi clear ncfContString
hi clear ncfComment
hi clear ncfImplicit
hi clear ncfBoolean
hi clear ncfScript
hi clear ncfNumber
hi clear ncfIPAddr
hi clear ncfHexNumber
hi clear ncfTime
hi clear ncfDSTTime
hi clear ncfPath
hi clear ncfServerName
hi clear ncfIPXNet
hi clear ncfTimeTypes
hi clear ncfSetCommandsNum
hi clear ncfSetCommandsBool
hi clear ncfSetCommandsStr
hi clear ncfSetCommandsTime
hi clear ncfSetCommandsTimeDate
hi clear ncfSetCommandsBindCon
hi clear hamsterHashComment
hi clear hamsterSpecial
hi clear hamsterStatement
hi clear hamsterString
hi clear hamsterFunction
hi clear fanCommentString
hi clear fanComment2String
hi clear fanCommentCharacter
hi clear fanBranch
hi clear fanLabel
hi clear fanUserLabel
hi clear fanConditional
hi clear fanRepeat
hi clear fanExceptions
hi clear fanAssert
hi clear fanStorageClass
hi clear fanSlot
hi clear fanField
hi clear fanScopeDecl
hi clear fanBoolean
hi clear fanSpecial
hi clear fanSpecialError
hi clear fanSpecialCharError
hi clear fanTripleString
hi clear fanString
hi clear fanDSL
hi clear fanCharacter
hi clear fanStringSubst
hi clear fanUri
hi clear fanSpecialChar
hi clear fanNumber
hi clear fanError
hi clear fanStringError
hi clear fanStatement
hi clear fanOperator
hi clear fanLongOperator
hi clear fanComment
hi clear fanDocComment
hi clear fanLineComment
hi clear fanConstant
hi clear fanTypedef
hi clear fanTodo
hi clear fanFacet
hi clear fanCommentTitle
hi clear fanCommentStar
hi clear fanType
hi clear fanExternal
hi clear fanSpaceError
hi clear skillcdfFunctions
hi clear skillgeFunctions
hi clear skillhiFunctions
hi clear skillleFunctions
hi clear skilldbefFunctions
hi clear skillddFunctions
hi clear skillpcFunctions
hi clear skilltechFunctions
hi clear skillConstants
hi clear skillFunction
hi clear skillKeywords
hi clear skillConditional
hi clear skillRepeat
hi clear skillString
hi clear skillTodo
hi clear skillNote
hi clear skillComment
hi clear skillCommentError
hi clear htmlosSpecialIdentifier
hi clear htmlosIdentifier
hi clear htmlosStorageClass
hi clear htmlosComment
hi clear htmlosBoolean
hi clear htmlosStringSingle
hi clear htmlosStringDouble
hi clear htmlosNumber
hi clear htmlosFloat
hi clear htmlosFunctions
hi clear htmlosRepeat
hi clear htmlosConditional
hi clear htmlosLabel
hi clear htmlosStatement
hi clear htmlosKeyword
hi clear htmlosType
hi clear htmlosDefine
hi clear htmlosParent
hi clear htmlosError
hi clear htmlosTodo
hi clear htmlosOperator
hi clear htmlosRelation
hi clear stpConditional
hi clear stpComment
hi clear stpKeyword
hi clear stpNumber
hi clear stpOperator
hi clear stpSpecial
hi clear stpStatement
hi clear stpString
hi clear stpStringError
hi clear stpType
hi clear stpTodo
hi clear stpFunction
hi clear stpGlobals
hi clear stpParen
hi clear stpParenError
hi clear stpSQLKeyword
hi clear stpRepeat
hi clear ribStructure
hi clear ribCommand
hi clear ribStructureComment
hi clear ribLineComment
hi clear ribString
hi clear ribNumber
hi clear ribFloat
hi clear udevpermTodo
hi clear udevpermComment
hi clear udevpermDevice
hi clear udevpermPattern
hi clear udevpermPatRange
hi clear udevpermColon
hi clear udevpermUserColon
hi clear udevpermUser
hi clear udevpermGroupColon
hi clear udevpermGroup
hi clear udevpermPermColon
hi clear udevpermPerm
hi clear udevpermOctalZero
hi clear udevpermOctalError
hi clear quakeComment
hi clear quakeTodo
hi clear quakeString
hi clear quakeNumber
hi clear quakeOctal
hi clear quakeOctalZero
hi clear quakeFloat
hi clear quakeOctalError
hi clear quakeCommand
hi clear quake1Command
hi clear quake12Command
hi clear quake2Command
hi clear quake23Command
hi clear quake3Command
hi clear quakeCommands
hi clear etermTodo
hi clear etermComment
hi clear etermMagic
hi clear etermNumber
hi clear etermString
hi clear etermBoolean
hi clear etermPreProc
hi clear etermFunctions
hi clear etermKeyMod
hi clear etermOption
hi clear etermColorOptions
hi clear etermColor
hi clear etermVideoType
hi clear etermColorType
hi clear etermColorNumber
hi clear etermColorSpec
hi clear etermContext
hi clear etermAttrOptions
hi clear etermGeometry
hi clear etermScrollbarType
hi clear etermFontType
hi clear etermIClassOptions
hi clear etermImageOptions
hi clear etermImageTypes
hi clear etermImageModes
hi clear etermImageModesAllow
hi clear etermImageModesR
hi clear etermImageState
hi clear etermImageColorFG
hi clear etermImageColorBG
hi clear etermImageGeom
hi clear etermImageCmod
hi clear etermImageBrightness
hi clear etermImageContrast
hi clear etermImageGamma
hi clear etermMenuItemOptions
hi clear etermMenuItemAction
hi clear etermMenuOptions
hi clear etermBind
hi clear etermBindMods
hi clear etermBindTo
hi clear etermBindType
hi clear etermBindParam
hi clear etermButtonOptions
hi clear etermDockOption
hi clear etermButtonText
hi clear etermButtonIcon
hi clear etermButtonIconFile
hi clear etermButtonAction
hi clear etermMultiOptions
hi clear etermEncoding
hi clear etermXimOptions
hi clear etermInputMethod
hi clear etermPreeditType
hi clear etermTogOptions
hi clear etermKeyboardOptions
hi clear etermKeysym
hi clear etermMiscOptions
hi clear etermEScreenOptions
hi clear etermURL
hi clear formConditional
hi clear formNumber
hi clear formStatement
hi clear formComment
hi clear formPreProc
hi clear formDirective
hi clear formType
hi clear formString
hi clear formNestedString
hi clear formReserved
hi clear formTodo
hi clear formSpecial
hi clear formHeaderStatement
hi clear formHeaderStatement
hi clear HeaderStatement
hi clear HeaderStatement
hi clear Conditional
hi clear Statement
hi clear changelogText
hi clear changelogBullet
hi clear changelogColon
hi clear changelogFiles
hi clear changelogFuncs
hi clear changelogHeader
hi clear changelogMail
hi clear changelogNumber
hi clear changelogMonth
hi clear changelogDay
hi clear changelogError
hi clear mailaliasesTodo
hi clear mailaliasesComment
hi clear mailaliasesName
hi clear mailaliasesColon
hi clear mailaliasesValueAddress
hi clear mailaliasesValueFile
hi clear mailaliasesValueCommand
hi clear mailaliasesValueInclude
hi clear mailaliasesValueSep
hi clear jargonChaptTitle
hi clear jargonEmailAddr
hi clear jargonUrl
hi clear jargonMark
hi clear javaccSpecToken
hi clear javaccActionToken
hi clear javaccPackages
hi clear javaccToken
hi clear javaccError
hi clear scilabStatement
hi clear scilabFunction
hi clear scilabPredicate
hi clear scilabKeyword
hi clear scilabDebug
hi clear scilabRepeat
hi clear scilabConditional
hi clear scilabMultiplex
hi clear scilabConstant
hi clear scilabBoolean
hi clear scilabDelimiter
hi clear scilabMlistAccess
hi clear scilabComparison
hi clear scilabLogical
hi clear scilabAssignment
hi clear scilabArithmetic
hi clear scilabRange
hi clear scilabLineContinuation
hi clear scilabTransposition
hi clear scilabTodo
hi clear scilabComment
hi clear scilabNumber
hi clear scilabString
hi clear scilabIdentifier
hi clear scilabOverload
hi clear rustDecNumber
hi clear rustHexNumber
hi clear rustOctNumber
hi clear rustBinNumber
hi clear rustIdentifierPrime
hi clear rustTrait
hi clear rustDeriveTrait
hi clear rustMacroRepeatCount
hi clear rustMacroRepeatDelimiters
hi clear rustMacroVariable
hi clear rustSigil
hi clear rustEscape
hi clear rustEscapeUnicode
hi clear rustEscapeError
hi clear rustStringContinuation
hi clear rustString
hi clear rustCharacterInvalid
hi clear rustCharacterInvalidUnicode
hi clear rustCharacter
hi clear rustNumber
hi clear rustBoolean
hi clear rustEnum
hi clear rustEnumVariant
hi clear rustConstant
hi clear rustSelf
hi clear rustFloat
hi clear rustArrowCharacter
hi clear rustOperator
hi clear rustKeyword
hi clear rustTypedef
hi clear rustStructure
hi clear rustUnion
hi clear rustPubScopeDelim
hi clear rustPubScopeCrate
hi clear rustSuper
hi clear rustReservedKeyword
hi clear rustRepeat
hi clear rustConditional
hi clear rustIdentifier
hi clear rustCapsIdent
hi clear rustModPath
hi clear rustModPathSep
hi clear rustFunction
hi clear rustFuncName
hi clear rustFuncCall
hi clear rustShebang
hi clear rustCommentLine
hi clear rustCommentLineDoc
hi clear rustCommentLineDocError
hi clear rustCommentBlock
hi clear rustCommentBlockDoc
hi clear rustCommentBlockDocError
hi clear rustAssert
hi clear rustPanic
hi clear rustMacro
hi clear rustType
hi clear rustTodo
hi clear rustAttribute
hi clear rustDerive
hi clear rustDefault
hi clear rustStorage
hi clear rustObsoleteStorage
hi clear rustLifetime
hi clear rustLabel
hi clear rustInvalidBareKeyword
hi clear rustExternCrate
hi clear rustObsoleteExternMod
hi clear rustBoxPlacementParens
hi clear rustQuestionMark
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear squidTodo
hi clear squidComment
hi clear squidTag
hi clear squidConf
hi clear squidOpt
hi clear squidAction
hi clear squidNumber
hi clear squidIP
hi clear squidAcl
hi clear squidStr
hi clear squidRegexOpt
hi clear protocolsTodo
hi clear protocolsComment
hi clear protocolsName
hi clear protocolsPort
hi clear protocolsPPDiv
hi clear protocolsPPDivDepr
hi clear protocolsProtocol
hi clear protocolsAliases
hi clear clifError
hi clear clSpaceError
hi clear clWhile
hi clear clConditional
hi clear clDebug
hi clear clNeedsWork
hi clear clTodo
hi clear clComment
hi clear clProcedure
hi clear clBreak
hi clear clInclude
hi clear clSetOption
hi clear clSet
hi clear clPreProc
hi clear clOperator
hi clear clNumber
hi clear clString
hi clear clQuote
hi clear clReserved
hi clear clFunction
hi clear clStatement
hi clear sieveTodo
hi clear sieveComment
hi clear sieveTag
hi clear sieveNumber
hi clear sieveSpecial
hi clear sieveString
hi clear sieveConditional
hi clear sieveTest
hi clear sievePreProc
hi clear sieveAction
hi clear sieveKeyword
hi clear logtalkBlockComment
hi clear logtalkLineComment
hi clear logtalkOpenEntityDir
hi clear logtalkOpenEntityDirTag
hi clear logtalkIfContainer
hi clear logtalkIf
hi clear logtalkElseIf
hi clear logtalkElse
hi clear logtalkEntity
hi clear logtalkEntityRel
hi clear logtalkEntityRelTag
hi clear logtalkCloseEntityDir
hi clear logtalkDir
hi clear logtalkDirTag
hi clear logtalkAtom
hi clear logtalkString
hi clear logtalkEscapeSequence
hi clear logtalkNumber
hi clear logtalkKeyword
hi clear logtalkBuiltIn
hi clear logtalkBuiltInMethod
hi clear logtalkOperator
hi clear logtalkExtCall
hi clear logtalkExtCallTag
hi clear logtalkVariable
hi clear xsdElement
hi clear hasteSpecial
hi clear hasteStatement
hi clear hasteCharacter
hi clear hasteString
hi clear hasteVector
hi clear hasteBoolean
hi clear hasteComment
hi clear hasteNumber
hi clear hasteTime
hi clear hasteType
hi clear hasteGlobal
hi clear hasteError
hi clear hasteAttribute
hi clear hasteSeparators
hi clear hasteExecution
hi clear hasteTypeConstr
hi clear hasteOperator
hi clear hasteExprOp
hi clear hasteMisc
hi clear hasteFutureExt
hi clear hasteVerilog
hi clear hasteDefine
hi clear hasteInclude
hi clear forthTodo
hi clear forthOperators
hi clear forthMath
hi clear forthInteger
hi clear forthFloat
hi clear forthStack
hi clear forthRstack
hi clear forthFStack
hi clear forthSP
hi clear forthMemory
hi clear forthAdrArith
hi clear forthMemBlks
hi clear forthCond
hi clear forthLoop
hi clear forthColonDef
hi clear forthEndOfColonDef
hi clear forthDefine
hi clear forthDebug
hi clear forthAssembler
hi clear forthCharOps
hi clear forthConversion
hi clear forthForth
hi clear forthVocs
hi clear forthString
hi clear forthComment
hi clear forthClassDef
hi clear forthEndOfClassDef
hi clear forthObjectDef
hi clear forthEndOfObjectDef
hi clear forthInclude
hi clear forthLocals
hi clear forthDeprecated
hi clear forthFileMode
hi clear forthFileWords
hi clear forthBlocks
hi clear forthSpaceError
hi clear phpSpecialFunction
hi clear phpClasses
hi clear phpInterfaces
hi clear phpConstant
hi clear phpCoreConstant
hi clear phpComment
hi clear phpDocTags
hi clear phpDocCustomTags
hi clear phpException
hi clear phpBoolean
hi clear phpStorageClass
hi clear phpSCKeyword
hi clear phpFCKeyword
hi clear phpStructure
hi clear phpStringSingle
hi clear phpStringDouble
hi clear phpBacktick
hi clear phpNumber
hi clear phpFloat
hi clear phpMethods
hi clear phpFunctions
hi clear phpBaselib
hi clear phpRepeat
hi clear phpConditional
hi clear phpLabel
hi clear phpStatement
hi clear phpKeyword
hi clear phpType
hi clear phpInclude
hi clear phpDefine
hi clear phpBackslashSequences
hi clear phpBackslashDoubleQuote
hi clear phpBackslashSingleQuote
hi clear phpParent
hi clear phpBrackets
hi clear phpIdentifierConst
hi clear phpParentError
hi clear phpOctalError
hi clear phpInterpSimpleError
hi clear phpInterpBogusDollarCurley
hi clear phpInterpDollarCurly1
hi clear phpInterpDollarCurly2
hi clear phpInterpSimpleBracketsInner
hi clear phpInterpSimpleCurly
hi clear phpInterpVarname
hi clear phpTodo
hi clear phpDocTodo
hi clear phpMemberSelector
hi clear OPLStatement
hi clear OPLNumber
hi clear OPLString
hi clear OPLComment
hi clear OPLMathsOperator
hi clear papp_prep
hi clear papp_gettext
hi clear rubyClass
hi clear rubyModule
hi clear rubyMethodExceptional
hi clear rubyDefine
hi clear rubyFunction
hi clear rubyConditional
hi clear rubyConditionalModifier
hi clear rubyExceptional
hi clear rubyRepeat
hi clear rubyRepeatModifier
hi clear rubyOptionalDo
hi clear rubyControl
hi clear rubyInclude
hi clear rubyInteger
hi clear rubyASCIICode
hi clear rubyFloat
hi clear rubyBoolean
hi clear rubyException
hi clear rubyClassVariable
hi clear rubyConstant
hi clear rubyGlobalVariable
hi clear rubyBlockParameter
hi clear rubyInstanceVariable
hi clear rubyPredefinedIdentifier
hi clear rubyPredefinedConstant
hi clear rubyPredefinedVariable
hi clear rubySymbol
hi clear rubyKeyword
hi clear rubyOperator
hi clear rubyBeginEnd
hi clear rubyAccess
hi clear rubyAttribute
hi clear rubyEval
hi clear rubyPseudoVariable
hi clear rubyCapitalizedMethod
hi clear rubyComment
hi clear rubyData
hi clear rubyDataDirective
hi clear rubyDocumentation
hi clear rubyTodo
hi clear rubyQuoteEscape
hi clear rubyStringEscape
hi clear rubyInterpolationDelimiter
hi clear rubyNoInterpolation
hi clear rubySharpBang
hi clear rubyRegexpDelimiter
hi clear rubySymbolDelimiter
hi clear rubyStringDelimiter
hi clear rubyHeredoc
hi clear rubyString
hi clear rubyRegexpEscape
hi clear rubyRegexpQuantifier
hi clear rubyRegexpAnchor
hi clear rubyRegexpDot
hi clear rubyRegexpCharClass
hi clear rubyRegexpSpecial
hi clear rubyRegexpComment
hi clear rubyRegexp
hi clear rubyInvalidVariable
hi clear rubyError
hi clear rubySpaceError
hi clear groupDelimiter
hi clear groupName
hi clear groupPasswordColon
hi clear groupPassword
hi clear groupShadow
hi clear groupGIDColon
hi clear groupGID
hi clear groupUserListColon
hi clear groupUserList
hi clear groupUserListSep
hi clear masonDoc
hi clear masonPod
hi clear masonPerlComment
hi clear mailcapComment
hi clear mailcapDelimiter
hi clear mailcapFlag
hi clear mailcapFieldname
hi clear mailcapSpecial
hi clear mailcapTypeField
hi clear mailcapString
hi clear CtrlHHide
hi clear CtrlHUnderline
hi clear CtrlHBold
hi clear sambaParameter
hi clear sambaKeyword
hi clear sambaSection
hi clear sambaMacro
hi clear sambaComment
hi clear sambaContinue
hi clear sambaBoolean
hi clear slangDefinition
hi clear slangBlock
hi clear slangLabel
hi clear slangConditional
hi clear slangRepeat
hi clear slangCharacter
hi clear slangFloat
hi clear slangImaginary
hi clear slangDecimal
hi clear slangOctal
hi clear slangHex
hi clear slangNumber
hi clear slangParenError
hi clear slangOctalError
hi clear slangOperator
hi clear slangStructure
hi clear slangInclude
hi clear slangPreCondit
hi clear slangError
hi clear slangStatement
hi clear slangType
hi clear slangString
hi clear slangConstant
hi clear slangRangeArray
hi clear slangComment
hi clear slangSpecial
hi clear slangTodo
hi clear slangDelim
hi clear bstComment
hi clear bstString
hi clear bstCommand
hi clear bstBuiltIn
hi clear bstField
hi clear bstNumber
hi clear bstType
hi clear bstIdentifier
hi clear bstError
hi clear xpm2Type
hi clear xpm2StorageClass
hi clear xpm2Todo
hi clear xpm2Comment
hi clear xpm2PixelString
hi clear gkrellmrcComment
hi clear gkrellmrcFixme
hi clear gkrellmrcString
hi clear gkrellmrcNumber
hi clear gkrellmrcRGBColor
hi clear gkrellmrcExpandMode
hi clear gkrellmrcConstant
hi clear gkrellmrcMeterName
hi clear gkrellmrcChartName
hi clear gkrellmrcSpecialClassName
hi clear gkrellmrcClass
hi clear gkrellmrcGlobal
hi clear gkrellmrcBuiltinExt
hi clear gkrellmrcStyleItem
hi clear gkrellmrcItem
hi clear gkrellmrcSetCmd
hi clear gkrellmrcStyleCmd
hi clear elfComment
hi clear elfPPCom
hi clear elfKeyword
hi clear elfSpecial
hi clear elfEnvironment
hi clear elfBraceError
hi clear elfConditional
hi clear elfMacro
hi clear elfNumber
hi clear elfString
hi clear elfParens
hi clear elfPunct
hi clear initexCharacter
hi clear initexNumber
hi clear initexIdentifier
hi clear initexStatement
hi clear initexConditional
hi clear initexPreProc
hi clear initexMacro
hi clear initexType
hi clear initexDebug
hi clear initexTodo
hi clear initexComment
hi clear initexDimension
hi clear initexCommand
hi clear initexBoxCommand
hi clear initexCharacterCommand
hi clear initexDebuggingCommand
hi clear initexFileIOCommand
hi clear initexFontsCommand
hi clear initexGlueCommand
hi clear initexHyphenationCommand
hi clear initexInsertsCommand
hi clear initexJobCommand
hi clear initexKernCommand
hi clear initexLogicCommand
hi clear initexMacroCommand
hi clear initexMarksCommand
hi clear initexMathCommand
hi clear initexParagraphCommand
hi clear initexPenaltiesCommand
hi clear initexRegistersCommand
hi clear initexTablesCommand
hi clear initexDerivedCommand
hi clear initexGlueDerivedCommand
hi clear initexHyphenationDerivedCommand
hi clear initexMacroDerivedCommand
hi clear initexMathDerivedCommand
hi clear initexInternalQuantity
hi clear initexBoxInternalQuantity
hi clear initexCharacterInternalQuantity
hi clear initexFileIOInternalQuantity
hi clear initexFontsInternalQuantity
hi clear initexHyphenationInternalQuantity
hi clear initexJobInternalQuantity
hi clear initexKernInternalQuantity
hi clear initexMathInternalQuantity
hi clear initexPageInternalQuantity
hi clear initexParagraphInternalQuantity
hi clear initexPenaltiesInternalQuantity
hi clear initexRegistersInternalQuantity
hi clear initexParameterDimen
hi clear initexBoxParameterDimen
hi clear initexInsertsParameterDimen
hi clear initexMathParameterDimen
hi clear initexPageParameterDimen
hi clear initexParagraphParameterDimen
hi clear initexParameterGlue
hi clear initexInsertsParameterGlue
hi clear initexMathParameterGlue
hi clear initexPageParameterGlue
hi clear initexParagraphParameterGlue
hi clear initexTablesParameterGlue
hi clear initexParameterInteger
hi clear initexBoxParameterInteger
hi clear initexCharacterParameterInteger
hi clear initexDebuggingParameterInteger
hi clear initexHyphenationParameterInteger
hi clear initexInsertsParameterInteger
hi clear initexJobParameterInteger
hi clear initexMacroParameterInteger
hi clear initexMathParameterInteger
hi clear initexParagraphParameterInteger
hi clear initexPenaltiesParameterInteger
hi clear initexParameterMuglue
hi clear initexMathParameterMuglue
hi clear initexParameterToken
hi clear initexBoxParameterToken
hi clear initexDebuggingParameterToken
hi clear initexFileIOParameterToken
hi clear initexMathParameterToken
hi clear initexParagraphParameterToken
hi clear initexTablesParameterToken
hi clear fdccBlank
hi clear fdccTodo
hi clear fdccComment
hi clear fdccVariable
hi clear fdccLCIdentification
hi clear fdccLCCtype
hi clear fdccLCCollate
hi clear fdccLCMonetary
hi clear fdccLCNumeric
hi clear fdccLCTime
hi clear fdccLCMessages
hi clear fdccLCPaper
hi clear fdccLCTelephone
hi clear fdccLCMeasurement
hi clear fdccLCName
hi clear fdccLCAddress
hi clear fdccUnicodeInValid
hi clear fdccUnicodeValid
hi clear fdccString
hi clear fdccNumber
hi clear fdccKeywordIdentification
hi clear fdccKeywordCtype
hi clear fdccKeywordCollate
hi clear fdccKeywordMonetary
hi clear fdccKeywordNumeric
hi clear fdccKeywordTime
hi clear fdccKeywordMessages
hi clear fdccKeywordPaper
hi clear fdccKeywordTelephone
hi clear fdccKeywordMeasurement
hi clear fdccKeywordName
hi clear fdccKeywordAddress
hi clear fdccKeyword
hi clear dcdFunction
hi clear dcdLabel
hi clear dcdConditional
hi clear dcdDisplay
hi clear dcdStatement
hi clear dcdSpecial
hi clear dcdComment
hi clear bzrRemoved
hi clear bzrAdded
hi clear bzrModified
hi clear bzrRenamed
hi clear bzrUnchanged
hi clear bzrUnknown
hi clear debsourcesLine
hi clear debsourcesKeyword
hi clear debsourcesDistrKeyword
hi clear debsourcesUnsupportedDistrKeyword
hi clear debsourcesComment
hi clear debsourcesUri
hi clear erubyDelimiter
hi clear erubyComment
hi clear usw2kagtlog_Date
hi clear usw2kagtlog_MsgD
hi clear usw2kagtlog_MsgE
hi clear usw2kagtlog_MsgW
hi clear usw2kagtlog_Process
hi clear usw2kagtlog_IPaddr
hi clear usw2kagtlog_Profile
hi clear usw2kagtlog_Target
hi clear usw2kagtlog_Agentword
hi clear muttrcComment
hi clear muttrcEscape
hi clear muttrcRXChars
hi clear muttrcString
hi clear muttrcRXString
hi clear muttrcRXString2
hi clear muttrcSpecial
hi clear muttrcHooks
hi clear muttrcGroupFlag
hi clear muttrcGroupDef
hi clear muttrcAddrDef
hi clear muttrcRXDef
hi clear muttrcRXPat
hi clear muttrcAliasGroupName
hi clear muttrcAliasKey
hi clear muttrcUnAliasKey
hi clear muttrcAliasEncEmail
hi clear muttrcAliasParens
hi clear muttrcSetNumAssignment
hi clear muttrcSetBoolAssignment
hi clear muttrcSetQuadAssignment
hi clear muttrcSetStrAssignment
hi clear muttrcEmail
hi clear muttrcVariableInner
hi clear muttrcEscapedVariable
hi clear muttrcHeader
hi clear muttrcKeySpecial
hi clear muttrcKey
hi clear muttrcKeyName
hi clear muttrcVarBool
hi clear muttrcVarQuad
hi clear muttrcVarNum
hi clear muttrcVarStr
hi clear muttrcMenu
hi clear muttrcCommand
hi clear muttrcMacroDescr
hi clear muttrcAction
hi clear muttrcBadAction
hi clear muttrcBindFunction
hi clear muttrcBindMenuList
hi clear muttrcFunction
hi clear muttrcGroupKeyword
hi clear muttrcGroupLine
hi clear muttrcSubscribeKeyword
hi clear muttrcSubscribeLine
hi clear muttrcListsKeyword
hi clear muttrcListsLine
hi clear muttrcAlternateKeyword
hi clear muttrcAlternatesLine
hi clear muttrcAttachmentsLine
hi clear muttrcAttachmentsFlag
hi clear muttrcAttachmentsMimeType
hi clear muttrcColorLine
hi clear muttrcColorContext
hi clear muttrcColorContextI
hi clear muttrcColorContextH
hi clear muttrcColorKeyword
hi clear muttrcColorKeywordI
hi clear muttrcColorKeywordH
hi clear muttrcColorField
hi clear muttrcColor
hi clear muttrcColorFG
hi clear muttrcColorFGI
hi clear muttrcColorFGH
hi clear muttrcColorBG
hi clear muttrcColorBGI
hi clear muttrcColorBGH
hi clear muttrcMonoAttrib
hi clear muttrcMono
hi clear muttrcSimplePat
hi clear muttrcSimplePatString
hi clear muttrcSimplePatMetas
hi clear muttrcPattern
hi clear muttrcUnColorLine
hi clear muttrcUnColorKeyword
hi clear muttrcUnColorIndex
hi clear muttrcShellString
hi clear muttrcRXHooks
hi clear muttrcRXHookNot
hi clear muttrcPatHooks
hi clear muttrcPatHookNot
hi clear muttrcFormatConditionals2
hi clear muttrcIndexFormatStr
hi clear muttrcIndexFormatEscapes
hi clear muttrcIndexFormatConditionals
hi clear muttrcAliasFormatStr
hi clear muttrcAliasFormatEscapes
hi clear muttrcAttachFormatStr
hi clear muttrcAttachFormatEscapes
hi clear muttrcAttachFormatConditionals
hi clear muttrcComposeFormatStr
hi clear muttrcComposeFormatEscapes
hi clear muttrcFolderFormatStr
hi clear muttrcFolderFormatEscapes
hi clear muttrcFolderFormatConditionals
hi clear muttrcMixFormatStr
hi clear muttrcMixFormatEscapes
hi clear muttrcMixFormatConditionals
hi clear muttrcPGPFormatStr
hi clear muttrcPGPFormatEscapes
hi clear muttrcPGPFormatConditionals
hi clear muttrcPGPCmdFormatStr
hi clear muttrcPGPCmdFormatEscapes
hi clear muttrcPGPCmdFormatConditionals
hi clear muttrcStatusFormatStr
hi clear muttrcStatusFormatEscapes
hi clear muttrcStatusFormatConditionals
hi clear muttrcPGPGetKeysFormatStr
hi clear muttrcPGPGetKeysFormatEscapes
hi clear muttrcSmimeFormatStr
hi clear muttrcSmimeFormatEscapes
hi clear muttrcSmimeFormatConditionals
hi clear muttrcTimeEscapes
hi clear muttrcPGPTimeEscapes
hi clear muttrcStrftimeEscapes
hi clear muttrcStrftimeFormatStr
hi clear muttrcFormatErrors
hi clear muttrcBindFunctionNL
hi clear muttrcBindKeyNL
hi clear muttrcBindMenuListNL
hi clear muttrcMacroDescrNL
hi clear muttrcMacroBodyNL
hi clear muttrcMacroKeyNL
hi clear muttrcMacroMenuListNL
hi clear muttrcColorMatchCountNL
hi clear muttrcColorNL
hi clear muttrcColorRXNL
hi clear muttrcColorBGNL
hi clear muttrcColorFGNL
hi clear muttrcAliasNameNL
hi clear muttrcAliasENNL
hi clear muttrcAliasNL
hi clear muttrcUnAliasNL
hi clear muttrcAliasGroupDefNL
hi clear muttrcAliasEncEmailNL
hi clear muttrcPatternNL
hi clear muttrcUnColorPatNL
hi clear muttrcUnColorAPNL
hi clear muttrcUnColorIndexNL
hi clear muttrcStringNL
hi clear ninjaComment
hi clear ninjaKeyword
hi clear ninjaRuleCommand
hi clear ninjaPoolCommand
hi clear ninjaDollar
hi clear ninjaWrapLineOperator
hi clear ninjaOperator
hi clear ninjaSimpleVar
hi clear ninjaVar
hi clear liteComment
hi clear liteString
hi clear liteNumber
hi clear liteFloat
hi clear liteIdentifier
hi clear liteGlobalIdentifier
hi clear liteIntVar
hi clear liteFunctions
hi clear liteRepeat
hi clear liteConditional
hi clear liteStatement
hi clear liteType
hi clear liteInclude
hi clear liteDefine
hi clear liteSpecialChar
hi clear liteParentError
hi clear liteError
hi clear liteTodo
hi clear liteOperator
hi clear liteRelation
hi clear tssgmParam
hi clear tssgmSurfType
hi clear tssgmArgs
hi clear tssgmDelim
hi clear tssgmEnd
hi clear tssgmUnits
hi clear tssgmDefault
hi clear tssgmComment
hi clear tssgmCommentString
hi clear tssgmSurfIdent
hi clear tssgmString
hi clear tssgmInteger
hi clear tssgmFloat
hi clear tssgmScientific
hi clear podCommand
hi clear podCmdText
hi clear podOverIndent
hi clear podForKeywd
hi clear podFormat
hi clear podVerbatimLine
hi clear podSpecial
hi clear podEscape
hi clear podEscape2
hi clear pamconfTodo
hi clear pamconfComment
hi clear pamconfService
hi clear pamconfServiceLineCont
hi clear pamconfType
hi clear pamconfTypeLineCont
hi clear pamconfControl
hi clear pamconfControlBegin
hi clear pamconfControlLineContH
hi clear pamconfControlLineCont
hi clear pamconfControlValues
hi clear pamconfControlValueEq
hi clear pamconfControlActionN
hi clear pamconfControlAction
hi clear pamconfControlEnd
hi clear pamconfMPath
hi clear pamconfMPathLineCont
hi clear pamconfArgs
hi clear pamconfArgsLineCont
hi clear esterelStatement
hi clear esterelType
hi clear esterelComment
hi clear esterelBoolean
hi clear esterelExpressions
hi clear esterelIO
hi clear esterelOperator
hi clear esterelSysCall
hi clear esterelFunctions
hi clear esterelSpecial
hi clear rstTodo
hi clear rstComment
hi clear rstSections
hi clear rstTransition
hi clear rstLiteralBlock
hi clear rstQuotedLiteralBlock
hi clear rstDoctestBlock
hi clear rstTableLines
hi clear rstSimpleTableLines
hi clear rstExplicitMarkup
hi clear rstDirective
hi clear rstFootnote
hi clear rstCitation
hi clear rstHyperlinkTarget
hi clear rstExDirective
hi clear rstSubstitutionDefinition
hi clear rstDelimiter
hi clear rstEmphasis
hi clear rstStrongEmphasis
hi clear rstInterpretedTextOrHyperlinkReference
hi clear rstInlineLiteral
hi clear rstSubstitutionReference
hi clear rstInlineInternalTargets
hi clear rstFootnoteReference
hi clear rstCitationReference
hi clear rstHyperLinkReference
hi clear rstStandaloneHyperlink
hi clear rstCodeBlock
hi clear dosiniNumber
hi clear dosiniHeader
hi clear dosiniComment
hi clear dosiniLabel
hi clear gitrebaseCommit
hi clear gitrebaseHash
hi clear gitrebasePick
hi clear gitrebaseReword
hi clear gitrebaseEdit
hi clear gitrebaseSquash
hi clear gitrebaseFixup
hi clear gitrebaseExec
hi clear gitrebaseDrop
hi clear gitrebaseSummary
hi clear gitrebaseComment
hi clear gitrebaseSquashError
hi clear VRMLCharacter
hi clear VRMLSpecialCharacter
hi clear VRMLNumber
hi clear VRMLValues
hi clear VRMLString
hi clear VRMLSpecial
hi clear VRMLComment
hi clear VRMLNodes
hi clear VRMLFields
hi clear VRMLEvents
hi clear VRMLfTypes
hi clear VRMLInstances
hi clear VRMLRoutes
hi clear VRMLProtos
hi clear VRMLRouteNode
hi clear VRMLInstName
hi clear VRMLTypes
hi clear bLabel
hi clear bUserLabel
hi clear bConditional
hi clear bRepeat
hi clear bLogic
hi clear bCharacter
hi clear bSpecialCharacter
hi clear bNumber
hi clear bFloat
hi clear bOctalError
hi clear bParenError
hi clear bCommentError
hi clear bBoolean
hi clear bConstant
hi clear bGuard
hi clear bOperator
hi clear bKeywords
hi clear bOps
hi clear bStructure
hi clear bStorageClass
hi clear bInclude
hi clear bPreProc
hi clear bDefine
hi clear bIncluded
hi clear bError
hi clear bStatement
hi clear bPreCondit
hi clear bType
hi clear bCommentError
hi clear bCommentString
hi clear bComment2String
hi clear bCommentSkip
hi clear bString
hi clear bComment
hi clear bSpecial
hi clear bTodo
hi clear latteSyntax
hi clear latteVar
hi clear latteString
hi clear latteQuote
hi clear latteDelimiter
hi clear latteOperator
hi clear latteComment
hi clear latteError
hi clear acedbMagic
hi clear acedbHyb
hi clear acedbType
hi clear acedbOption
hi clear acedbSubclass
hi clear acedbSubtag
hi clear acedbFlag
hi clear acedbTag
hi clear acedbClass
hi clear acedbHelp
hi clear acedbXref
hi clear acedbModifier
hi clear acedbComment
hi clear acedbBlock
hi clear acedbNumber
hi clear acedbString
hi clear stataBraceError
hi clear stataBracketError
hi clear stataErrInBrace
hi clear stataErrInBracket
hi clear stataErrInParen
hi clear stataEString
hi clear stataFormat
hi clear stataGlobal
hi clear stataLocal
hi clear stataParenError
hi clear stataSlashComment
hi clear stataStarComment
hi clear stataCommand
hi clear stataComment
hi clear stataConditional
hi clear stataError
hi clear stataFunc
hi clear stataMacro
hi clear stataRepeat
hi clear stataSpecial
hi clear stataString
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear verilogamsCharacter
hi clear verilogamsConditional
hi clear verilogamsRepeat
hi clear verilogamsString
hi clear verilogamsTodo
hi clear verilogamsComment
hi clear verilogamsConstant
hi clear verilogamsLabel
hi clear verilogamsNumber
hi clear verilogamsOperator
hi clear verilogamsStatement
hi clear verilogamsGlobal
hi clear verilogamsDirective
hi clear verilogamsEscape
hi clear verilogamsType
hi clear verilogamsSystask
hi clear slrnrcTodo
hi clear slrnrcSpaceError
hi clear slrnrcNumber
hi clear slrnrcSpecKey
hi clear slrnrcKey
hi clear slrnrcSpecChar
hi clear slrnrcString
hi clear slrnSlangPreCondit
hi clear slrnrcComment
hi clear slrnrcVarInt
hi clear slrnrcVarStr
hi clear slrnrcCmd
hi clear slrnrcSet
hi clear slrnrcColor
hi clear slrnrcColorObj
hi clear slrnrcColorVal
hi clear slrnrcMono
hi clear slrnrcMonoObj
hi clear slrnrcMonoVal
hi clear slrnrcFunArt
hi clear slrnrcFunGroup
hi clear slrnrcFunRead
hi clear slrnrcSetkeyObj
hi clear slrnrcSetkey
hi clear slrnrcUnsetkey
hi clear protoTodo
hi clear protoSyntax
hi clear protoStructure
hi clear protoRepeat
hi clear protoDefault
hi clear protoExtend
hi clear protoRPC
hi clear protoType
hi clear protoTypedef
hi clear protoBool
hi clear protoInt
hi clear protoFloat
hi clear protoComment
hi clear protoString
hi clear cynlibOperator
hi clear cynlibMacro
hi clear cynlibFunction
hi clear cynlibppMacro
hi clear cynlibType
hi clear HBhtmlString
hi clear HBhtmlTagN
hi clear htmlSpecialChar
hi clear HBInvalidLine
hi clear HBFoobar
hi clear HBFileName
hi clear HBDirectiveError
hi clear HBDirectiveBlockEnd
hi clear HBDirectiveKeyword
hi clear HBComment
hi clear HBhtmlTagSk
hi clear cspComment
hi clear cspNumber
hi clear cspConditional
hi clear cspOperator
hi clear cspKeyword
hi clear cspReserved
hi clear cspInclude
hi clear cspIncludeKeyword
hi clear cspIncludeArg
hi clear cspAssert
hi clear cspType
hi clear cspProcess
hi clear cspTodo
hi clear cspOldRttComment
hi clear cspRttPragmaKeyword
hi clear cspSdlRttComment
hi clear cspRttPragmaArg
hi clear cspRttPragmaSdlArg
hi clear cspRttPragmaSdlName
hi clear cspRttPragmaSdlTailArg
hi clear cspRttPragmaSdlTransName
hi clear cspRttPragmaSdlTransTailArg
hi clear cspReservedIdentifier
hi clear sassEndOfLineComment
hi clear sassCssComment
hi clear sassComment
hi clear sassDefault
hi clear sassVariable
hi clear sassFunction
hi clear sassMixing
hi clear sassMixin
hi clear sassPlaceholder
hi clear sassExtend
hi clear sassFunctionDecl
hi clear sassReturn
hi clear sassTodo
hi clear sassCharset
hi clear sassMedia
hi clear sassMediaOperators
hi clear sassInclude
hi clear sassDebug
hi clear sassWarn
hi clear sassControl
hi clear sassFor
hi clear sassEscape
hi clear sassIdChar
hi clear sassClassChar
hi clear sassInterpolationDelimiter
hi clear sassAmpersand
hi clear sassId
hi clear sassClass
hi clear chillLabel
hi clear chillUserLabel
hi clear chillConditional
hi clear chillRepeat
hi clear chillProcess
hi clear chillSignal
hi clear chillCharacter
hi clear chillSpecialCharacter
hi clear chillNumber
hi clear chillFloat
hi clear chillOctalError
hi clear chillParenError
hi clear chillInParen
hi clear chillCommentError
hi clear chillSpaceError
hi clear chillOperator
hi clear chillStructure
hi clear chillBlock
hi clear chillScope
hi clear chillEDML
hi clear chillBoolConst
hi clear chillLogical
hi clear chillStorageClass
hi clear chillInclude
hi clear chillPreProc
hi clear chillDefine
hi clear chillIncluded
hi clear chillError
hi clear chillStatement
hi clear chillPreCondit
hi clear chillType
hi clear chillCommentError
hi clear chillCommentString
hi clear chillComment2String
hi clear chillCommentSkip
hi clear chillString
hi clear chillComment
hi clear chillSpecial
hi clear chillTodo
hi clear chillBlock
hi clear chillBracket
hi clear rngTagName
hi clear cscVarName
hi clear cscNumber
hi clear cscOctal
hi clear cscFloat
hi clear cscParenE
hi clear cscCommentE
hi clear cscSpaceE
hi clear cscError
hi clear cscString
hi clear cscComment
hi clear cscTodo
hi clear cscStatement
hi clear cscIfError
hi clear cscEqError
hi clear cscFunction
hi clear cscCondition
hi clear cscWarn
hi clear cscComE
hi clear cscCom
hi clear cscComW
hi clear cscBPMacro
hi clear cscBPW
hi clear kscriptConditional
hi clear kscriptRepeat
hi clear kscriptExceptions
hi clear kscriptFunction
hi clear kscriptConst
hi clear kscriptStatement
hi clear kscriptLabel
hi clear kscriptStorageClass
hi clear kscriptType
hi clear kscriptTodo
hi clear kscriptComment
hi clear kscriptString
hi clear kscriptPreCondit
hi clear kscriptHardCoded
hi clear lslKeyword
hi clear lslType
hi clear lslLabel
hi clear lslConstant
hi clear lslEvent
hi clear lslFunction
hi clear lslOperator
hi clear lslNumber
hi clear lslVectorRot
hi clear lslProperty
hi clear lslString
hi clear lslSpecialChar
hi clear lslKey
hi clear lslBlock
hi clear lslTypecast
hi clear lslComment
hi clear chordproDirective
hi clear chordproDirWithOpt
hi clear chordproOptions
hi clear chordproChord
hi clear chordproTag
hi clear chordproTab
hi clear chordproComment
hi clear chordproBracket
hi clear chordproDefineKeyword
hi clear chordproChorus
hi clear cocoKeywords
hi clear cocoUnilineComment
hi clear cocoMultilineComment
hi clear cocoIdentifier
hi clear cocoString
hi clear cocoCharacter
hi clear cocoOperator
hi clear cocoProductionCode
hi clear cocoPragma
hi clear mplayerconfTodo
hi clear mplayerconfComment
hi clear mplayerconfPreProc
hi clear mplayerconfBoolean
hi clear mplayerconfNumber
hi clear mplayerconfOption
hi clear mplayerconfString
hi clear mplayerconfProfile
hi clear gitconfigComment
hi clear gitconfigSection
hi clear gitconfigVariable
hi clear gitconfigBoolean
hi clear gitconfigNumber
hi clear gitconfigString
hi clear gitconfigDelim
hi clear gitconfigEscape
hi clear gitconfigError
hi clear dylanintrInfo
hi clear dylanintrInterface
hi clear dylanintrMods
hi clear dylanintrClass
hi clear dylanintrType
hi clear dylanintrIncluded
hi clear dylanintrInclude
hi clear HogRuleType
hi clear HogRuleTypeName
hi clear HogRuleTypeType
hi clear HogPreproc
hi clear HogConfig
hi clear HogOutput
hi clear HogConfigName
hi clear HogEvFilterKeyword
hi clear HogSuppressKeyword
hi clear HogEvFilterTypes
hi clear HogEvFilterTrack
hi clear HogAttribute
hi clear HogAttributeFile
hi clear HogAttributeType
hi clear HogInclude
hi clear HogIncludeFile
hi clear HogDylib
hi clear HogDylibType
hi clear HogDylibFile
hi clear HogVar
hi clear HogVarType
hi clear HogVarSet
hi clear HogVarValue
hi clear HogIPVarType
hi clear HogIPVarSet
hi clear HogPortVarType
hi clear HogPortVarSet
hi clear HogPort
hi clear HogTodo
hi clear HogComment
hi clear HogString
hi clear HogHexEsc
hi clear HogNumber
hi clear HogSpecial
hi clear HogSpecialAny
hi clear HogIPAddr
hi clear HogIPCidr
hi clear HogOpNot
hi clear HogOpRange
hi clear HogRuleAction
hi clear HogRuleProto
hi clear HogRuleDir
hi clear HogRuleOption
hi clear HogRuleChars
hi clear HogFileType
hi clear HogFileTypeOpt
hi clear NotASemiColn
hi clear expectSharpBang
hi clear expectVariables
hi clear expectCommand
hi clear expectStatement
hi clear expectConditional
hi clear expectRepeat
hi clear expectExpectOpts
hi clear expectOutVar
hi clear expectSpecial
hi clear expectNumber
hi clear expectString
hi clear expectComment
hi clear expectTodo
hi clear specSection
hi clear specSectionMacro
hi clear specWWWlink
hi clear specOpts
hi clear specGlobalMacro
hi clear specGlobalMacro
hi clear shComment
hi clear shIf
hi clear shOperator
hi clear shQuote1
hi clear shQuote2
hi clear shQuoteDelim
hi clear specBlock
hi clear specColon
hi clear specCommand
hi clear specCommandOpts
hi clear specCommandSpecial
hi clear specComment
hi clear specConfigure
hi clear specDate
hi clear specDescriptionOpts
hi clear specEmail
hi clear specError
hi clear specFilesDirective
hi clear specFilesOpts
hi clear specLicense
hi clear specMacroNameLocal
hi clear specMacroNameOther
hi clear specManpageFile
hi clear specMonth
hi clear specNoNumberHilite
hi clear specNumber
hi clear specPackageOpts
hi clear specPercent
hi clear specSpecialChar
hi clear specSpecialVariables
hi clear specSpecialVariablesNames
hi clear specTarCommand
hi clear specURL
hi clear specURLMacro
hi clear specVariables
hi clear specWeekday
hi clear specListedFilesBin
hi clear specListedFilesDoc
hi clear specListedFilesEtc
hi clear specListedFilesLib
hi clear specListedFilesPrefix
hi clear specListedFilesShare
hi clear perlSharpBang
hi clear perlControl
hi clear perlInclude
hi clear perlSpecial
hi clear perlString
hi clear perlCharacter
hi clear perlNumber
hi clear perlFloat
hi clear perlType
hi clear perlIdentifier
hi clear perlLabel
hi clear perlStatement
hi clear perlConditional
hi clear perlRepeat
hi clear perlOperator
hi clear perlFunction
hi clear perlSubName
hi clear perlSubPrototype
hi clear perlSignature
hi clear perlSubAttributes
hi clear perlSubAttributesCont
hi clear perlComment
hi clear perlTodo
hi clear perlVStringV
hi clear perlList
hi clear perlMisc
hi clear perlVarPlain
hi clear perlVarPlain2
hi clear perlArrow
hi clear perlFiledescRead
hi clear perlFiledescStatement
hi clear perlVarSimpleMember
hi clear perlVarSimpleMemberName
hi clear perlVarNotInMatches
hi clear perlVarSlash
hi clear perlQQ
hi clear perlHereDoc
hi clear perlStringUnexpanded
hi clear perlSubstitutionSQ
hi clear perlSubstitutionGQQ
hi clear perlTranslationGQ
hi clear perlMatch
hi clear perlMatchStartEnd
hi clear perlFormatName
hi clear perlFormatField
hi clear perlPackageDecl
hi clear perlStorageClass
hi clear perlPackageRef
hi clear perlStatementPackage
hi clear perlStatementStorage
hi clear perlStatementControl
hi clear perlStatementScalar
hi clear perlStatementRegexp
hi clear perlStatementNumeric
hi clear perlStatementList
hi clear perlStatementHash
hi clear perlStatementIOfunc
hi clear perlStatementFiledesc
hi clear perlStatementVector
hi clear perlStatementFiles
hi clear perlStatementFlow
hi clear perlStatementInclude
hi clear perlStatementProc
hi clear perlStatementSocket
hi clear perlStatementIPC
hi clear perlStatementNetwork
hi clear perlStatementPword
hi clear perlStatementTime
hi clear perlStatementMisc
hi clear perlStatementIndirObj
hi clear perlFunctionName
hi clear perlMethod
hi clear perlPostDeref
hi clear perlFunctionPRef
hi clear perlShellCommand
hi clear perlSpecialAscii
hi clear perlSpecialDollar
hi clear perlSpecialString
hi clear perlSpecialStringU
hi clear perlSpecialMatch
hi clear perlDATA
hi clear perlParensSQ
hi clear perlBracketsSQ
hi clear perlBracesSQ
hi clear perlAnglesSQ
hi clear perlParensDQ
hi clear perlBracketsDQ
hi clear perlBracesDQ
hi clear perlAnglesDQ
hi clear perlSpecialStringU2
hi clear perlNotEmptyLine
hi clear perlElseIfError
hi clear perlSubPrototypeError
hi clear perlSubError
hi clear cabalVersion
hi clear cabalTruth
hi clear cabalComment
hi clear cabalStatement
hi clear cabalCategory
hi clear cabalFunction
hi clear cabalConditional
hi clear cabalOperator
hi clear cabalCompiler
hi clear screenEscape
hi clear screenComment
hi clear screenTodo
hi clear screenString
hi clear screenLiteral
hi clear screenVariable
hi clear screenBoolean
hi clear screenNumbers
hi clear screenSpecials
hi clear screenCommands
hi clear upstreamlog_Date
hi clear upstreamlog_MsgD
hi clear upstreamlog_MsgE
hi clear upstreamlog_MsgW
hi clear upstreamlog_Process
hi clear upstreamlog_IPaddr
hi clear upstreamlog_Profile
hi clear upstreamlog_Target
hi clear smclEString
hi clear smclCCLword
hi clear smclCCL
hi clear smclFormat
hi clear smclLink
hi clear smclComment
hi clear smclString
hi clear sicadLabel
hi clear sicadLabel1
hi clear sicadLabel2
hi clear sicadConditional
hi clear sicadBoolean
hi clear sicadNumber
hi clear sicadFloat
hi clear sicadOperator
hi clear sicadStatement
hi clear sicadParameter
hi clear sicadGoto
hi clear sicadLineCont
hi clear sicadString
hi clear sicadComment
hi clear sicadSpecial
hi clear sicadIdentifier
hi clear sicadError
hi clear sicadParenError
hi clear sicadApostropheError
hi clear sicadStringError
hi clear sicadCommentError
hi clear msmessagesNumber
hi clear msmessagesOctal
hi clear msmessagesFloat
hi clear msmessagesOctalError
hi clear msmessagesSetError
hi clear msmessagesError
hi clear msmessagesLangEntry
hi clear msmessagesLangEntryEnd
hi clear msmessagesComment
hi clear msmessagesFormat
hi clear msmessagesSpecial
hi clear msmessagesType
hi clear msmessagesIdentifier
hi clear msmessagesLanguage
hi clear msmessagesName
hi clear msmessagesNameDef
hi clear msmessagesIdentDef
hi clear msmessagesValSep
hi clear msmessagesNameErr
hi clear markdownH1
hi clear markdownH2
hi clear markdownH3
hi clear markdownH4
hi clear markdownH5
hi clear markdownH6
hi clear markdownHeadingRule
hi clear markdownHeadingDelimiter
hi clear markdownOrderedListMarker
hi clear markdownListMarker
hi clear markdownBlockquote
hi clear markdownRule
hi clear markdownFootnote
hi clear markdownFootnoteDefinition
hi clear markdownLinkText
hi clear markdownIdDeclaration
hi clear markdownId
hi clear markdownAutomaticLink
hi clear markdownUrl
hi clear markdownUrlTitle
hi clear markdownIdDelimiter
hi clear markdownUrlDelimiter
hi clear markdownUrlTitleDelimiter
hi clear markdownItalic
hi clear markdownItalicDelimiter
hi clear markdownBold
hi clear markdownBoldDelimiter
hi clear markdownBoldItalic
hi clear markdownBoldItalicDelimiter
hi clear markdownCodeDelimiter
hi clear markdownEscape
hi clear markdownError
hi clear groovyCommentString
hi clear groovyComment2String
hi clear groovyCommentCharacter
hi clear groovyELExpr
hi clear groovyParenError
hi clear groovyFuncDef
hi clear groovyBraces
hi clear groovyBranch
hi clear groovyUserLabelRef
hi clear groovyLabel
hi clear groovyUserLabel
hi clear groovyConditional
hi clear groovyRepeat
hi clear groovyExceptions
hi clear groovyAssert
hi clear groovyStorageClass
hi clear groovyMethodDecl
hi clear groovyClassDecl
hi clear groovyScopeDecl
hi clear groovyBoolean
hi clear groovySpecial
hi clear groovySpecialError
hi clear groovySpecialCharError
hi clear groovyString
hi clear groovyRegexChar
hi clear groovyCharacter
hi clear groovySpecialChar
hi clear groovyNumber
hi clear groovyError
hi clear groovyStringError
hi clear groovyStatement
hi clear groovyOperator
hi clear groovyComment
hi clear groovyDocComment
hi clear groovyLineComment
hi clear groovyConstant
hi clear groovyTypedef
hi clear groovyTodo
hi clear groovyCommentTitle
hi clear groovyDocTags
hi clear groovyDocParam
hi clear groovyCommentStar
hi clear groovyType
hi clear groovyExternal
hi clear htmlComment
hi clear htmlCommentPart
hi clear groovySpaceError
hi clear groovyJDKBuiltin
hi clear groovyJDKOperOverl
hi clear groovyJDKMethods
hi clear rebolTodo
hi clear rebolStatement
hi clear rebolLabel
hi clear rebolConditional
hi clear rebolRepeat
hi clear rebolOperator
hi clear rebolLogicOperator
hi clear rebolLogicFunction
hi clear rebolMathOperator
hi clear rebolMathFunction
hi clear rebolBinaryOperator
hi clear rebolBinaryFunction
hi clear rebolType
hi clear rebolTypeFunction
hi clear rebolWord
hi clear rebolWordPath
hi clear rebolFunction
hi clear rebolCharacter
hi clear rebolSpecialCharacter
hi clear rebolString
hi clear rebolNumber
hi clear rebolInteger
hi clear rebolDecimal
hi clear rebolTime
hi clear rebolDate
hi clear rebolMoney
hi clear rebolBinary
hi clear rebolEmail
hi clear rebolFile
hi clear rebolURL
hi clear rebolIssue
hi clear rebolTuple
hi clear rebolFloat
hi clear rebolBoolean
hi clear rebolConstant
hi clear rebolComment
hi clear rebolError
hi clear namedComment
hi clear namedInclude
hi clear namedKeyword
hi clear namedIntKeyword
hi clear namedIdentifier
hi clear namedIntIdent
hi clear namedString
hi clear namedBool
hi clear namedNotBool
hi clear namedNumber
hi clear namedNotNumber
hi clear namedOption
hi clear namedLogOption
hi clear namedCNOption
hi clear namedQSKeywords
hi clear namedCNKeywords
hi clear namedLogCategory
hi clear namedIPaddr
hi clear namedDomain
hi clear namedZoneOpt
hi clear namedZoneType
hi clear namedParenError
hi clear namedEParenError
hi clear namedIllegalDom
hi clear namedIPerror
hi clear namedSpareDot
hi clear namedError
hi clear asnDefinition
hi clear asnBraces
hi clear asnStructure
hi clear asnBoolValue
hi clear asnSpecial
hi clear asnString
hi clear asnCharacter
hi clear asnSpecialCharacter
hi clear asnNumber
hi clear asnComment
hi clear asnLineComment
hi clear asnType
hi clear asnTypeInfo
hi clear asnValue
hi clear asnExternal
hi clear asnTagModifier
hi clear asnFieldOption
hi clear dylanBlock
hi clear dylanBoolean
hi clear dylanCharacter
hi clear dylanClass
hi clear dylanClassMods
hi clear dylanComment
hi clear dylanConditional
hi clear dylanConstant
hi clear dylanException
hi clear dylanHeader
hi clear dylanImport
hi clear dylanLabel
hi clear dylanMiscMods
hi clear dylanNumber
hi clear dylanOther
hi clear dylanOperator
hi clear dylanParamDefs
hi clear dylanPrecondit
hi clear dylanRepeat
hi clear dylanSimpleDefs
hi clear dylanStatement
hi clear dylanString
hi clear dylanVariable
hi clear cvsLine
hi clear cvsDir
hi clear cvsFile
hi clear cvsFiles
hi clear cvsTag
hi clear cvsCom
hi clear vgrindefsField
hi clear vgrindefsComment
hi clear spiceTodo
hi clear spiceWrapLineOperator
hi clear spiceSinglequote
hi clear spiceExpr
hi clear spiceParenError
hi clear spiceStatement
hi clear spiceNumber
hi clear spiceComment
hi clear spiceOperator
hi clear nasmInMacDirective
hi clear nasmInMacLabel
hi clear nasmInMacLblWarn
hi clear nasmInMacMacro
hi clear nasmInMacParam
hi clear nasmInMacParamNum
hi clear nasmInMacPreCondit
hi clear nasmInMacPreProc
hi clear nasmInPreCondit
hi clear nasmInStructure
hi clear nasmStructureLabel
hi clear nasmComment
hi clear nasmSpecialComment
hi clear nasmInCommentTodo
hi clear nasmString
hi clear nasmCString
hi clear nasmStringError
hi clear nasmCStringEscape
hi clear nasmCStringFormat
hi clear nasmBinNumber
hi clear nasmOctNumber
hi clear nasmDecNumber
hi clear nasmHexNumber
hi clear nasmFltNumber
hi clear nasmNumberError
hi clear nasmLabel
hi clear nasmLocalLabel
hi clear nasmSpecialLabel
hi clear nasmLabelError
hi clear nasmLabelWarn
hi clear nasmPreProc
hi clear nasmDefine
hi clear nasmInclude
hi clear nasmMacro
hi clear nasmPreCondit
hi clear nasmPreProcError
hi clear nasmPreProcWarn
hi clear nasmType
hi clear nasmStorage
hi clear nasmStructure
hi clear nasmTypeError
hi clear nasmConstant
hi clear nasmInstrModifier
hi clear nasmRepeat
hi clear nasmDirective
hi clear nasmStdDirective
hi clear nasmFmtDirective
hi clear nasmCtrlRegister
hi clear nasmDebugRegister
hi clear nasmTestRegister
hi clear nasmRegisterError
hi clear nasmMemRefError
hi clear nasmStdInstruction
hi clear nasmSysInstruction
hi clear nasmDbgInstruction
hi clear nasmFpuInstruction
hi clear nasmMmxInstruction
hi clear nasmSseInstruction
hi clear nasmNowInstruction
hi clear nasmAmdInstruction
hi clear nasmCrxInstruction
hi clear nasmUndInstruction
hi clear nasmInstructnError
hi clear debchangelogHeader
hi clear debchangelogFooter
hi clear debchangelogEntry
hi clear debchangelogCloses
hi clear debchangelogLP
hi clear debchangelogFirstKV
hi clear debchangelogOtherKV
hi clear debchangelogName
hi clear debchangelogVersion
hi clear debchangelogTarget
hi clear debchangelogEmail
hi clear IPFComment
hi clear IPFTodo
hi clear IPFService
hi clear IPFAction
hi clear ipfActionBlock
hi clear ipfActionPass
hi clear IPFSpecial
hi clear IPFIPv4
hi clear IPFNetmask
hi clear IPFAny
hi clear IPFProto
hi clear terminfoComment
hi clear terminfoTodo
hi clear terminfoNumbers
hi clear terminfoSpecialChar
hi clear terminfoDelay
hi clear terminfoBooleans
hi clear terminfoNumerics
hi clear terminfoStrings
hi clear terminfoParameters
hi clear terminfoKeywords
hi clear dtmlIsTag
hi clear dtmlAttribute
hi clear dtmlMethod
hi clear dtmlComment
hi clear dtmlTODO
hi clear dtmlSpecialChar
hi clear loutTodo
hi clear loutDefine
hi clear loutEOmlDef
hi clear loutFunction
hi clear loutBraceError
hi clear loutNULL
hi clear loutComment
hi clear loutSpecial
hi clear loutSymbols
hi clear loutInclude
hi clear loutKeyword
hi clear loutTag
hi clear loutMath
hi clear loutMBraces
hi clear loutItalic
hi clear loutIBraces
hi clear loutBold
hi clear loutBBraces
hi clear loutBoldItalic
hi clear loutBIBraces
hi clear loutHeadings
hi clear loutHeads
hi clear informDefine
hi clear informType
hi clear informInclude
hi clear informPreCondit
hi clear informPreProc
hi clear informGramPreProc
hi clear informAsm
hi clear informAsmObsolete
hi clear informKeywordObsolete
hi clear informAsmObsolete
hi clear informKeywordObsolete
hi clear informPredicate
hi clear informSysFunc
hi clear informSysConst
hi clear informConditional
hi clear informRepeat
hi clear informStatement
hi clear informOperator
hi clear informKeyword
hi clear informGrammar
hi clear informDictString
hi clear informNumber
hi clear informError
hi clear informString
hi clear informComment
hi clear informAccent
hi clear informStringUnicode
hi clear informStringCode
hi clear informTodo
hi clear informLibAttrib
hi clear informLibProp
hi clear informLibObj
hi clear informLibRoutine
hi clear informLibVariable
hi clear informLibConst
hi clear informLibAction
hi clear informBadDictString
hi clear informBadAccent
hi clear informBadStrUnicode
hi clear btmLabel
hi clear btmLabelMark
hi clear btmCmdDivider
hi clear btmConditional
hi clear btmDotBoolOp
hi clear btmRepeat
hi clear btmEchoCommand
hi clear btmEchoParam
hi clear btmStatement
hi clear btmTodo
hi clear btmString
hi clear btmNumber
hi clear btmComment
hi clear btmArgument
hi clear btmVariable
hi clear btmEcho
hi clear btmBIFMatch
hi clear btmBuiltInFunc
hi clear btmBuiltInVar
hi clear btmSpecialVar
hi clear btmCommand
hi clear cLabel
hi clear cynppMacro
hi clear slpconfTodo
hi clear slpconfComment
hi clear slpconfTag
hi clear slpconfDelimiter
hi clear slpconfNetTagDot
hi clear slpconfNetTag
hi clear slpconfNetSlpTagDot
hi clear slpconfNetSlpTag
hi clear slpconfHome
hi clear slpconfBooleanHome
hi clear slpconfEq
hi clear slpconfBooleanEq
hi clear slpconfBoolean
hi clear slpconfIntegerHome
hi clear slpconfIntegerEq
hi clear slpconfInteger
hi clear slpconfAttrHome
hi clear slpconfAttrEq
hi clear slpconfAttrBegin
hi clear slpconfAttrTag
hi clear slpconfAttrTagEq
hi clear slpconfAttrIValue
hi clear slpconfAttrSValue
hi clear slpconfAttrBValue
hi clear slpconfAttrSSValue
hi clear slpconfSeparator
hi clear slpconfAttrValueSep
hi clear slpconfAttrEnd
hi clear slpconfAttrSep
hi clear slpconfStringsHome
hi clear slpconfStringsEq
hi clear slpconfStrings
hi clear slpconfStringsSep
hi clear slpconfAddrsHome
hi clear slpconfAddressesEq
hi clear slpconfFQDNs
hi clear slpconfHostnumbers
hi clear slpconfAddressesSep
hi clear slpconfStringHome
hi clear slpconfStringEq
hi clear slpconfString
hi clear slpconfIntegersHome
hi clear slpconfIntegersEq
hi clear slpconfIntegers
hi clear slpconfIntegersSep
hi clear slpconfHostnumsHome
hi clear slpconfHostnumsEq
hi clear slpconfOHostnumbers
hi clear slpconfHostnumsSep
hi clear slpconfLocaleHome
hi clear slpconfLocaleEq
hi clear slpconfLocale
hi clear nqcLabel
hi clear nqcConditional
hi clear nqcRepeat
hi clear nqcCharacter
hi clear nqcNumber
hi clear nqcFloat
hi clear nqcFunction
hi clear nqcParenError
hi clear nqcErrInParen
hi clear nqcErrInBracket
hi clear nqcCommentL
hi clear nqcCommentStart
hi clear nqcCommentError
hi clear nqcCommentStartError
hi clear nqcSpaceError
hi clear nqcStorageClass
hi clear nqcInclude
hi clear nqcPreProc
hi clear nqcDefine
hi clear nqcIncluded
hi clear nqcError
hi clear nqcStatement
hi clear nqcEvents
hi clear nqcPreCondit
hi clear nqcType
hi clear nqcConstant
hi clear nqcCommentSkip
hi clear nqcComment
hi clear nqcTodo
hi clear nqcCppSkip
hi clear nqcCppOut2
hi clear nqcCppOut
hi clear rmdYamlBlockDelim
hi clear rmdInlineDelim
hi clear rmdSlidifySpecial
hi clear gitDateHeader
hi clear gitIdentityHeader
hi clear gitIdentityKeyword
hi clear gitNotesHeader
hi clear gitReflogHeader
hi clear gitKeyword
hi clear gitIdentity
hi clear gitEmailDelimiter
hi clear gitEmail
hi clear gitDate
hi clear gitMode
hi clear gitHashAbbrev
hi clear gitHash
hi clear gitReflogMiddle
hi clear gitReference
hi clear gitStage
hi clear gitType
hi clear gitDiffAdded
hi clear gitDiffRemoved
hi clear aapTodo
hi clear aapString
hi clear aapComment
hi clear aapSpecial
hi clear aapVariable
hi clear aapPipeCmd
hi clear aapCommand
hi clear aapHeredoc
hi clear wsmlHeader
hi clear wsmlNamespace
hi clear wsmlOntology
hi clear wsmlAxiom
hi clear wsmlService
hi clear wsmlNFP
hi clear wsmlTopLevel
hi clear wsmlMediation
hi clear wsmlBehavioral
hi clear wsmlChoreographyPri
hi clear wsmlChoreographySec
hi clear wsmlChoreographyTer
hi clear wsmlString
hi clear wsmlIdentifier
hi clear wsmlSqName
hi clear wsmlVariable
hi clear wsmlKeywordsInsideLEs
hi clear wsmlOperator
hi clear wsmlBrace
hi clear wsmlCharacter
hi clear wsmlNumber
hi clear wsmlDataTypes
hi clear wsmlComment
hi clear wsmlDocComment
hi clear wsmlLineComment
hi clear wsmlTodo
hi clear wsmlFixMe
hi clear wsmlCommentTitle
hi clear wsmlCommentStar
hi clear vbBoolean
hi clear vbLineNumber
hi clear vbComment
hi clear vbConditional
hi clear vbConst
hi clear vbDefine
hi clear vbError
hi clear vbFunction
hi clear vbIdentifier
hi clear vbNumber
hi clear vbFloat
hi clear vbMethods
hi clear vbOperator
hi clear vbRepeat
hi clear vbString
hi clear vbStatement
hi clear vbKeyword
hi clear vbEvents
hi clear vbTodo
hi clear vbTypes
hi clear vbTypeSpecifier
hi clear ocamlBraceErr
hi clear ocamlBrackErr
hi clear ocamlParenErr
hi clear ocamlArrErr
hi clear ocamlCommentErr
hi clear ocamlCountErr
hi clear ocamlDoErr
hi clear ocamlDoneErr
hi clear ocamlEndErr
hi clear ocamlThenErr
hi clear ocamlCharErr
hi clear ocamlErr
hi clear ocamlComment
hi clear ocamlModPath
hi clear ocamlObject
hi clear ocamlModule
hi clear ocamlModParam1
hi clear ocamlModType
hi clear ocamlMPRestr3
hi clear ocamlFullMod
hi clear ocamlModTypeRestr
hi clear ocamlWith
hi clear ocamlMTDef
hi clear ocamlScript
hi clear ocamlConstructor
hi clear ocamlVal
hi clear ocamlModPreRHS
hi clear ocamlMPRestr2
hi clear ocamlKeyword
hi clear ocamlMethod
hi clear ocamlFunDef
hi clear ocamlRefAssign
hi clear ocamlKeyChar
hi clear ocamlAnyVar
hi clear ocamlTopStop
hi clear ocamlOperator
hi clear ocamlBoolean
hi clear ocamlCharacter
hi clear ocamlNumber
hi clear ocamlFloat
hi clear ocamlString
hi clear ocamlLabel
hi clear ocamlType
hi clear ocamlTodo
hi clear ocamlEncl
hi clear smClause
hi clear smClauseError
hi clear smComment
hi clear smDefine
hi clear smElse
hi clear smHeader
hi clear smHeaderSep
hi clear smMesg
hi clear smPrecedence
hi clear smRewrite
hi clear smRewriteComment
hi clear smRewriteLhsToken
hi clear smRewriteLhsUser
hi clear smRewriteRhsToken
hi clear smRuleset
hi clear smTrusted
hi clear smVar
hi clear jamCommentL
hi clear jamCommentL2
hi clear jamOperator3Error
hi clear jamConditional
hi clear jamRepeat
hi clear jamCharacter
hi clear jamSpecialCharacter
hi clear jamNumber
hi clear jamParenError
hi clear jamErrInParen
hi clear jamErrInBracket
hi clear jamCommentError
hi clear jamSpaceError
hi clear jamSpecialError
hi clear jamOperator1
hi clear jamOperator2
hi clear jamOperator3
hi clear jamOperator4
hi clear jamOperator5
hi clear jamOperator6
hi clear jamOperator7
hi clear jamOperator8
hi clear jamOperator9
hi clear jamOperator10
hi clear jamOperator11
hi clear jamOperator12
hi clear jamOperator13
hi clear jamOperator14
hi clear jamError
hi clear jamStatement
hi clear jamPreCondit
hi clear jamCommentError
hi clear jamCommentString
hi clear jamComment2String
hi clear jamCommentSkip
hi clear jamString
hi clear jamComment
hi clear jamSpecial
hi clear jamTodo
hi clear jamCppSkip
hi clear jamCppOut2
hi clear jamCppOut
hi clear jamDBState1
hi clear jamDBState2
hi clear jamSQLState1
hi clear jamSQLState2
hi clear jamLibFunc1
hi clear jamLibFunc2
hi clear jamLibFunc3
hi clear jamLibFunc4
hi clear jamLibFunc5
hi clear jamLibFunc6
hi clear jamLibFunc7
hi clear jamLibFunc8
hi clear jamLibFunc9
hi clear jamVariable1
hi clear jamVariable2
hi clear jamVariable3
hi clear jamVariable4
hi clear jamVariable5
hi clear jamVariable6
hi clear jamVariable7
hi clear jamVariable8
hi clear jamVariable9
hi clear jamVariable10
hi clear jamVariablen
hi clear jamSQL
hi clear jamLibFunc
hi clear jamOperator
hi clear hamlSelfCloser
hi clear hamlDespacer
hi clear hamlClassChar
hi clear hamlIdChar
hi clear hamlTag
hi clear hamlClass
hi clear hamlId
hi clear hamlPlainChar
hi clear hamlInterpolatableChar
hi clear hamlRubyOutputChar
hi clear hamlRubyChar
hi clear hamlInterpolationDelimiter
hi clear hamlInterpolationEscape
hi clear hamlAttributeString
hi clear hamlAttributeVariable
hi clear hamlDocType
hi clear hamlFilter
hi clear hamlAttributesDelimiter
hi clear hamlObjectDelimiter
hi clear hamlHelper
hi clear hamlHtmlComment
hi clear hamlComment
hi clear hamlIEConditional
hi clear hamlError
hi clear lotosStatement
hi clear lotosProcess
hi clear lotosOperator
hi clear lotosSort
hi clear lotosType
hi clear lotosComment
hi clear lotosDelimiter
hi clear slrnscComment
hi clear slrnscSectionCom
hi clear slrnscGroup
hi clear slrnscNumber
hi clear slrnscDate
hi clear slrnscDelim
hi clear slrnscComma
hi clear slrnscOper
hi clear slrnscEsc
hi clear slrnscSectionStd
hi clear slrnscSectionNot
hi clear slrnscItem
hi clear slrnscScore
hi clear slrnscScoreIdent
hi clear slrnscInclude
hi clear asmOpcode
hi clear asmRegister
hi clear tmuxFormatString
hi clear tmuxAction
hi clear tmuxBoolean
hi clear tmuxCommands
hi clear tmuxComment
hi clear tmuxKey
hi clear tmuxNumber
hi clear tmuxFlags
hi clear tmuxOptions
hi clear tmuxString
hi clear tmuxTodo
hi clear tmuxVariable
hi clear tmuxVariableExpansion
hi clear DocbkBold
hi clear docbkKeyword
hi clear docbkRegion
hi clear docbkTitle
hi clear docbkRemark
hi clear docbkCite
hi clear dtraceReservedKeyword
hi clear dtracePredicate
hi clear dtraceProbe
hi clear dtraceStatement
hi clear dtraceConstant
hi clear dtraceIdentifier
hi clear dtraceAggregatingFunction
hi clear dtraceFunction
hi clear dtraceType
hi clear dtraceOperator
hi clear dtraceComment
hi clear dtraceNumber
hi clear dtraceOption
hi clear modconfTodo
hi clear modconfComment
hi clear modconfConditional
hi clear modconfPreProc
hi clear modconfKeyword
hi clear modconfIdentifier
hi clear xf86confComment
hi clear xf86confTodo
hi clear xf86confSectionDelim
hi clear xf86confOptionName
hi clear xf86confSectionError
hi clear xf86confSubSectionError
hi clear xf86confModeSubSectionError
hi clear xf86confOctalNumberError
hi clear xf86confError
hi clear xf86confOption
hi clear xf86confModeLine
hi clear xf86confKeyword
hi clear xf86confDecimalNumber
hi clear xf86confOctalNumber
hi clear xf86confHexadecimalNumber
hi clear xf86confFrequency
hi clear xf86confModeLineValue
hi clear xf86confNumber
hi clear xf86confSync
hi clear xf86confConstant
hi clear xf86confSpecialChar
hi clear xf86confString
hi clear xf86confValue
hi clear rncTodo
hi clear rncComment
hi clear rncOperator
hi clear rncNamespace
hi clear rncQuoted
hi clear rncSpecial
hi clear rncAnnotation
hi clear rncLiteral
hi clear rncDelimiter
hi clear rncKeyword
hi clear rncIdentifier
hi clear rncIdName
hi clear mushAttribute
hi clear mushCommand
hi clear mushNumber
hi clear mushSetting
hi clear mushFunction
hi clear mushVariable
hi clear mushSpecial
hi clear mushTodo
hi clear mushFlag
hi clear mushIdentifier
hi clear mushDefine
hi clear mushPreProc
hi clear mushPreProcGroup
hi clear mushPreCondit
hi clear mushIncluded
hi clear mushInclude
hi clear mushCommentStart
hi clear mushComment
hi clear mushCommentString
hi clear readlineKey
hi clear readlineComment
hi clear readlineTodo
hi clear readlineConditional
hi clear readlineTest
hi clear readlineDelimiter
hi clear readlineTestModeEq
hi clear readlineTestTermEq
hi clear readlineTestTerm
hi clear readlineTestAppEq
hi clear readlineTestApp
hi clear readlineInclude
hi clear readlinePath
hi clear readlineKeyName
hi clear readlineKeySeparator
hi clear readlineKeyTerminator
hi clear readlineKeySeq
hi clear readlineKeyEscape
hi clear readlineKeyword
hi clear readlineVariable
hi clear readlineBellStyle
hi clear readlineBoolean
hi clear readlineString
hi clear readlineStringDelimiter
hi clear readlineNumber
hi clear readlineEditingMode
hi clear readlineKeymap
hi clear readlineFunction
hi clear rhelpVerbatim
hi clear rhelpDelimiter
hi clear rhelpIdentifier
hi clear rhelpString
hi clear rhelpCodeSpecial
hi clear rhelpKeyword
hi clear rhelpDots
hi clear rhelpLink
hi clear rhelpType
hi clear rhelpSection
hi clear rhelpError
hi clear rhelpBraceError
hi clear rhelpCurlyError
hi clear rhelpParenError
hi clear rhelpPreProc
hi clear rhelpDelimiter
hi clear rhelpComment
hi clear rhelpRComment
hi clear rhelpSpecialChar
hi clear rhelpMathSymb
hi clear rhelpMathOp
hi clear dsType
hi clear dsEndian
hi clear dsStorageClass
hi clear dsAlign
hi clear dsLabel
hi clear dsOffset
hi clear dsSql
hi clear dsCompound
hi clear dsConditional
hi clear dsBoolean
hi clear dsKeyword
hi clear dsString
hi clear dsNumber
hi clear dsNumberBin
hi clear dsBinaryB
hi clear dsOctal
hi clear dsOctalZero
hi clear dsOctalError
hi clear dsNumberHex
hi clear dsTodo
hi clear dsOperator
hi clear dsPackage
hi clear dsCommentError
hi clear dsCommentStartError
hi clear dsCommentStart
hi clear dsCommentL
hi clear cCommentL
hi clear dsComment
hi clear luaStatement
hi clear luaRepeat
hi clear luaFor
hi clear luaString
hi clear luaString2
hi clear luaNumber
hi clear luaOperator
hi clear luaIn
hi clear luaConstant
hi clear luaCond
hi clear luaElse
hi clear luaFunction
hi clear luaComment
hi clear luaTodo
hi clear luaTable
hi clear luaError
hi clear luaParenError
hi clear luaBraceError
hi clear luaSpecial
hi clear luaFunc
hi clear luaLabel
hi clear kwtStatement
hi clear kwtDecl
hi clear kwtCast
hi clear kwtSep
hi clear kwtViews
hi clear kwtPhylum
hi clear kwtOption
hi clear fglComment
hi clear fglKeyword
hi clear fglNumber
hi clear fglOperator
hi clear fglSpecial
hi clear fglStatement
hi clear fglString
hi clear fglType
hi clear tsaltParenError
hi clear tsaltInParen
hi clear tsaltFunction
hi clear tsaltSysVar
hi clear tsaltConditional
hi clear tsaltRepeat
hi clear tsaltCharacter
hi clear tsaltSpecialCharacter
hi clear tsaltNumber
hi clear tsaltFloat
hi clear tsaltCommentError
hi clear tsaltInclude
hi clear tsaltPreProc
hi clear tsaltDefine
hi clear tsaltIncluded
hi clear tsaltError
hi clear tsaltStatement
hi clear tsaltPreCondit
hi clear tsaltType
hi clear tsaltString
hi clear tsaltComment
hi clear tsaltSpecial
hi clear tsaltTodo
hi clear kconfigTodo
hi clear kconfigComment
hi clear kconfigKeyword
hi clear kconfigPreProc
hi clear kconfigConditional
hi clear kconfigPrompt
hi clear kconfigKeywordPrompt
hi clear kconfigPath
hi clear kconfigSymbol
hi clear kconfigConstantSymbol
hi clear kconfigConfigOption
hi clear kconfigTypeDefinition
hi clear kconfigTypeDefPrompt
hi clear kconfigInputPrompt
hi clear kconfigPromptPrompt
hi clear kconfigDefaultValue
hi clear kconfigDependencies
hi clear kconfigReverseDependencies
hi clear kconfigRevDepCSymbol
hi clear kconfigRevDepNCSymbol
hi clear kconfigNumericalRanges
hi clear kconfigRangeCSymbol
hi clear kconfigRangeNCSymbol
hi clear kconfigRangeCSymbol2
hi clear kconfigRangeNCSymbol2
hi clear kconfigHelpText
hi clear kconfigDefBool
hi clear kconfigDefBoolCSymbol
hi clear kconfigDefBoolNCSymbol
hi clear kconfigOptional
hi clear kconfigConfigOptionIf
hi clear kconfigConfOptIfExprCSym
hi clear kconfigConfOptIfExprNCSym
hi clear kconfigOperator
hi clear kconfigConfOptIfExprEq
hi clear kconfigConfOptIfExprNEq
hi clear kconfigConfOptIfExprCSym2
hi clear kconfigConfOptIfExprNCSym2
hi clear kconfigConfOptIfExprNeg
hi clear kconfigConfOptIfExprAnd
hi clear kconfigConfOptIfExprOr
hi clear kconfigDelimiter
hi clear kconfigConfOptIfExprGroup
hi clear kconfigConfOptIfGExpCSym
hi clear kconfigConfOptIfGExpNCSym
hi clear kconfigConfOptIfGExpEq
hi clear kconfigConfOptIfGExpNEq
hi clear kconfigConfOptIfGExpCSym2
hi clear kconfigConfOptIfGExpNCSym2
hi clear kconfigConfOptIfGExpNeg
hi clear kconfigConfOptIfGExpAnd
hi clear kconfigConfOptIfGExpOr
hi clear kconfigConfOptIfExprGrpE
hi clear kconfigConfOptExprCSym
hi clear kconfigConfOptExprNCSym
hi clear kconfigConfOptExprEq
hi clear kconfigConfOptExprNEq
hi clear kconfigConfOptExprCSym2
hi clear kconfigConfOptExprNCSym2
hi clear kconfigConfOptExprNeg
hi clear kconfigConfOptExprAnd
hi clear kconfigConfOptExprOr
hi clear kconfigConfOptExprGroup
hi clear kconfigConfOptGExpCSym
hi clear kconfigConfOptGExpNCSym
hi clear kconfigConfOptGExpEq
hi clear kconfigConfOptGExpNEq
hi clear kconfigConfOptGExpCSym2
hi clear kconfigConfOptGExpNCSym2
hi clear kconfigConfOptGExpNeg
hi clear kconfigConfOptGExpAnd
hi clear kconfigConfOptGExpOr
hi clear kconfigConfOptExprGrpE
hi clear kconfigTodo
hi clear kconfigComment
hi clear kconfigKeyword
hi clear kconfigConditional
hi clear kconfigPreProc
hi clear kconfigTriState
hi clear kconfigSpecialChar
hi clear kconfigPath
hi clear kconfigString
hi clear kconfigType
hi clear kconfigOption
hi clear kconfigHelpText
hi clear kconfigmacro
hi clear clipperConditional
hi clear clipperRepeat
hi clear clipperNumber
hi clear clipperInclude
hi clear clipperComment
hi clear clipperOperator
hi clear clipperStorageClass
hi clear clipperStatement
hi clear clipperString
hi clear clipperFunction
hi clear clipperLineContinuation
hi clear clipperDelimiters
hi clear clipperUserVariable
hi clear abaqusComment
hi clear abaqusKeyword
hi clear abaqusParameter
hi clear abaqusValue
hi clear abaqusBadLine
hi clear cmusrcTodo
hi clear cmusrcComment
hi clear cmusrcKeyword
hi clear cmusrcSwitches
hi clear cmusrcAddSwitches
hi clear cmusrcURI
hi clear cmusrcBindSwitches
hi clear cmusrcContext
hi clear cmusrcBindContext
hi clear cmusrcKey
hi clear cmusrcBindKey
hi clear cmusrcDirectory
hi clear cmusrcClearSwitches
hi clear cmusrcFSetName
hi clear cmusrcEq
hi clear cmusrcFSetEq
hi clear cmusrcFilterExpr
hi clear cmusrcLoadSwitches
hi clear cmusrcSaveSwitches
hi clear cmusrcFile
hi clear cmusrcSeekOffset
hi clear cmusrcOption
hi clear cmusrcSetTest
hi clear cmusrcOptBoolean
hi clear cmusrcOptEqAAA
hi clear cmusrcOptAAA
hi clear cmusrcOptEqNumber
hi clear cmusrcOptNumber
hi clear cmusrcOptEqFormat
hi clear cmusrcOptFormat
hi clear cmusrcFormatSpecial
hi clear cmusrcOptEqColor
hi clear cmusrcOptColor
hi clear cmusrcOptColorName
hi clear cmusrcOptColorValue
hi clear cmusrcOptEqString
hi clear cmusrcOptString
hi clear cmusrcOptEqSortKeys
hi clear cmusrcOptSortKeys
hi clear cmusrcSBindContext
hi clear cmusrcSBindKey
hi clear cmusrcTogglableOpt
hi clear cmusrcUnbindSwitches
hi clear cmusrcView
hi clear cmusrcVolume1
hi clear cmusrcVolume2
hi clear iconOctalError
hi clear iconParenError
hi clear iconInParen
hi clear iconCommentError
hi clear iconSpaceError
hi clear iconCommentError
hi clear iconIncluded
hi clear iconCommentString
hi clear iconComment2String
hi clear iconCommentSkip
hi clear iconUserLabel
hi clear iconCharacter
hi clear iconNumber
hi clear iconRadix
hi clear iconFloat
hi clear iconInclude
hi clear iconPreProc
hi clear iconDefine
hi clear iconError
hi clear iconStatement
hi clear iconPreCondit
hi clear iconString
hi clear iconCset
hi clear iconComment
hi clear iconSpecial
hi clear iconTodo
hi clear iconStorageClass
hi clear iconFunction
hi clear iconReserved
hi clear iconKeyword
hi clear remindCommands
hi clear remindExpiry
hi clear remindTag
hi clear remindTimed
hi clear remindMove
hi clear remindSpecial
hi clear remindRun
hi clear remindConditional
hi clear remindComment
hi clear remindTimes
hi clear remindString
hi clear remindDebug
hi clear remindVar
hi clear remindSubst
hi clear remindAdvanceNumber
hi clear remindDateSeparators
hi clear remindDates
hi clear remindWarning
hi clear masmOperator
hi clear masmDirective
hi clear masmOpcode
hi clear masmIdentifier
hi clear masmFloat
hi clear ia64Label
hi clear ia64Comment
hi clear ia64Directive
hi clear ia64opcode
hi clear ia64registers
hi clear ia64string
hi clear ia64Hex
hi clear ia64Binary
hi clear ia64Octal
hi clear ia64Float
hi clear ia64Decimal
hi clear ia64Identifier
hi clear ia64data
hi clear ia64delimiter
hi clear ia64operator
hi clear ia64Todo
hi clear pcapBad
hi clear pcapBadword
hi clear pcapComment
hi clear fortranKeyword
hi clear fortranConstructName
hi clear fortranConditional
hi clear fortranRepeat
hi clear fortranTodo
hi clear fortranContinueMark
hi clear fortranString
hi clear fortranNumber
hi clear fortranOperator
hi clear fortranBoolean
hi clear fortranLabelError
hi clear fortranObsolete
hi clear fortranType
hi clear fortranStructure
hi clear fortranStorageClass
hi clear fortranCall
hi clear fortranUnitHeader
hi clear fortranReadWrite
hi clear fortranIO
hi clear fortranIntrinsic
hi clear fortranConstant
hi clear fortranUnitHeaderOb
hi clear fortranKeywordOb
hi clear fortranConditionalOb
hi clear fortranTypeOb
hi clear fortranKeywordDel
hi clear fortranIntrinsicCUDA
hi clear fortranTypeCUDA
hi clear fortranStringCUDA
hi clear fortranFormatSpec
hi clear fortranFloat
hi clear fortranPreCondit
hi clear cIncluded
hi clear cInclude
hi clear cPreProc
hi clear cPreCondit
hi clear fortranOpenMP
hi clear fortranParenError
hi clear fortranComment
hi clear fortranSerialNumber
hi clear fortranTab
hi clear djangoTagBlock
hi clear djangoVarBlock
hi clear djangoStatement
hi clear djangoFilter
hi clear djangoArgument
hi clear djangoTagError
hi clear djangoVarError
hi clear djangoError
hi clear djangoComment
hi clear djangoComBlock
hi clear djangoTodo
hi clear mmixAt
hi clear mmixPseudo
hi clear mmixRegister
hi clear mmixSegments
hi clear mmixLabel
hi clear mmixComment
hi clear mmixOpcode
hi clear hexNumber
hi clear decNumber
hi clear octNumber
hi clear mmixString
hi clear mmixChar
hi clear mmixType
hi clear mmixIdentifier
hi clear mmixSpecialComment
hi clear gnuplotComment
hi clear gnuplotString
hi clear gnuplotNumber
hi clear gnuplotFloat
hi clear gnuplotIdentifier
hi clear gnuplotConditional
hi clear gnuplotRepeat
hi clear gnuplotKeyword
hi clear gnuplotOperator
hi clear gnuplotMacro
hi clear gnuplotStatement
hi clear gnuplotFunc
hi clear gnuplotSpecial
hi clear gnuplotUnit
hi clear gnuplotExternal
hi clear gnuplotError
hi clear gnuplotOctalError
hi clear gnuplotTodo
hi clear configdelimiter
hi clear configoperator
hi clear configcomment
hi clear configDnl
hi clear configfunction
hi clear confignumber
hi clear configkeyword
hi clear configspecial
hi clear configstring
hi clear voscmConditional
hi clear voscmStatement
hi clear voscmSetvar
hi clear voscmNumber
hi clear voscmDecimalNumber
hi clear voscmString
hi clear voscmIdentifier
hi clear voscmVariable
hi clear voscmComment
hi clear voscmJump
hi clear voscmContinuation
hi clear voscmLabelId
hi clear voscmParamList
hi clear voscmParamId
hi clear voscmParamName
hi clear voscmParam
hi clear voscmParamKeyword
hi clear voscmFunction
hi clear voscmCommand
hi clear voscmTodo
hi clear voscmTab
hi clear voscmError
hi clear trasysOptions
hi clear trasysSurface
hi clear trasysSurfaceType
hi clear trasysSurfaceArgs
hi clear trasysArgs
hi clear trasysOperations
hi clear trasysSubRoutine
hi clear trassyPrcsrSegm
hi clear trasysIdentifier
hi clear trasysComment
hi clear trasysHeader
hi clear trasysMacro
hi clear trasysInteger
hi clear trasysFloat
hi clear trasysScientific
hi clear trasysBlank
hi clear trasysEndData
hi clear trasysTodo
hi clear antlrSep
hi clear antlrPackages
hi clear javaError2
hi clear javaCommentString
hi clear javaComment2String
hi clear javaCommentCharacter
hi clear javaParenError
hi clear javaLambdaDef
hi clear javaFuncDef
hi clear javaVarArg
hi clear javaBraces
hi clear javaBranch
hi clear javaUserLabelRef
hi clear javaLabel
hi clear javaUserLabel
hi clear javaConditional
hi clear javaRepeat
hi clear javaExceptions
hi clear javaAssert
hi clear javaStorageClass
hi clear javaMethodDecl
hi clear javaClassDecl
hi clear javaScopeDecl
hi clear javaBoolean
hi clear javaSpecial
hi clear javaSpecialError
hi clear javaSpecialCharError
hi clear javaString
hi clear javaCharacter
hi clear javaSpecialChar
hi clear javaNumber
hi clear javaError
hi clear javaStringError
hi clear javaStatement
hi clear javaOperator
hi clear javaComment
hi clear javaDocComment
hi clear javaLineComment
hi clear javaConstant
hi clear javaTypedef
hi clear javaTodo
hi clear javaAnnotation
hi clear javaCommentTitle
hi clear javaDocTags
hi clear javaDocParam
hi clear javaDocSeeTagParam
hi clear javaCommentStar
hi clear javaType
hi clear javaExternal
hi clear htmlComment
hi clear htmlCommentPart
hi clear javaSpaceError
hi clear ibasicLabel
hi clear ibasicConditional
hi clear ibasicRepeat
hi clear ibasicHex
hi clear ibasicInteger
hi clear ibasicFloat
hi clear ibasicError
hi clear ibasicHexError
hi clear ibasicStatement
hi clear ibasicString
hi clear ibasicComment
hi clear ibasicLineNumber
hi clear ibasicSpecial
hi clear ibasicTodo
hi clear ibasicGenericFunction
hi clear ibasicBuiltInFunction
hi clear ibasicTypeSpecifier
hi clear ibasicDefine
hi clear ibasicInclude
hi clear ibasicIdentifier
hi clear ibasicFilenumber
hi clear ibasicMathOperator
hi clear ppdComment
hi clear ppdDefine
hi clear ppdUI
hi clear ppdUIGroup
hi clear ppdDef
hi clear ppdGUIText
hi clear ppdContraints
hi clear liquidDelimiter
hi clear liquidComment
hi clear liquidTypeHighlight
hi clear liquidConditional
hi clear liquidRepeat
hi clear liquidKeyword
hi clear liquidOperator
hi clear liquidString
hi clear liquidQuote
hi clear liquidNumber
hi clear liquidFloat
hi clear liquidEmpty
hi clear liquidNull
hi clear liquidBoolean
hi clear liquidFilter
hi clear liquidForloop
hi clear liquidForloopAttribute
hi clear loginaccessTodo
hi clear loginaccessComment
hi clear loginaccessPermission
hi clear loginaccessPermError
hi clear loginaccessUserSep
hi clear loginaccessUsers
hi clear loginaccessAllUsers
hi clear loginaccessLocalUsers
hi clear loginaccessExceptUsers
hi clear loginaccessUserIntSep
hi clear loginaccessOriginSep
hi clear loginaccessOrigins
hi clear loginaccessAllOrigins
hi clear loginaccessLocalOrigins
hi clear loginaccessExceptOrigins
hi clear loginaccessOriginIntSep
hi clear tcltkSwitch
hi clear tclExpand
hi clear tclLabel
hi clear tclConditional
hi clear tclRepeat
hi clear tclNumber
hi clear tclError
hi clear tclCommand
hi clear tclProcCommand
hi clear tclString
hi clear tclComment
hi clear tclSpecial
hi clear tclTodo
hi clear tcltkCommandColor
hi clear tcltkWidgetColor
hi clear tclLineContinue
hi clear tclNotLineContinue
hi clear tcltkStringSwitch
hi clear tcltkArraySwitch
hi clear tcltkLsortSwitch
hi clear tcltkPackSwitch
hi clear tcltkPackConfSwitch
hi clear tcltkMaths
hi clear tcltkNamespaceSwitch
hi clear tcltkWidgetSwitch
hi clear tcltkPackConfColor
hi clear tclVarRef
hi clear IstInpSpec
hi clear IstOutSpec
hi clear IstString
hi clear IstNumber
hi clear IstComment
hi clear IstTodo
hi clear IstSpecial
hi clear IstDoubleQuote
hi clear IstCharacter
hi clear setserialTodo
hi clear setserialComment
hi clear setserialDevice
hi clear setserialParameter
hi clear setserialNumber
hi clear setserialUARTType
hi clear setserialNegation
hi clear setserialMultiport
hi clear setserialPort
hi clear setserialMask
hi clear setserialBitMask
hi clear setserialMatch
hi clear setserialMatchBits
hi clear makeOverride
hi clear makeExport
hi clear makeNextLine
hi clear makeCmdNextLine
hi clear makeSpecTarget
hi clear makeCommands
hi clear makeImplicit
hi clear makeTarget
hi clear makeInclude
hi clear makePreCondit
hi clear makeStatement
hi clear makeIdent
hi clear makeSpecial
hi clear makeComment
hi clear makeDString
hi clear makeSString
hi clear makeBString
hi clear makeError
hi clear makeTodo
hi clear makeDefine
hi clear makeCommandError
hi clear makeConfig
hi clear aflexSlashQuote
hi clear aflexBrace
hi clear aflexAbbrvComment
hi clear aflexAbbrv
hi clear aflexAbbrvRegExp
hi clear aflexCFunctions
hi clear aflexMorePat
hi clear aflexPat
hi clear aflexPatComment
hi clear aflexPatString
hi clear aflexPatTag
hi clear aflexSep
hi clear blankInstruction
hi clear blankNumber
hi clear blankString
hi clear freebasicArrays
hi clear freebasicBitManipulation
hi clear freebasicCompilerSwitches
hi clear freebasicConsole
hi clear freebasicDataTypes
hi clear freebasicDateTime
hi clear freebasicDebug
hi clear freebasicErrorHandling
hi clear freebasicFiles
hi clear freebasicFunctions
hi clear freebasicGraphics
hi clear freebasicHardware
hi clear freebasicLogical
hi clear freebasicMath
hi clear freebasicMemory
hi clear freebasicMisc
hi clear freebasicModularizing
hi clear freebasicMultithreading
hi clear freebasicShell
hi clear freebasicEnviron
hi clear freebasicPointer
hi clear freebasicPredefined
hi clear freebasicPreProcessor
hi clear freebasicProgramFlow
hi clear freebasicString
hi clear freebasicTypeCasting
hi clear freebasicUserInput
hi clear freebasicComment
hi clear freebasicConditional
hi clear freebasicError
hi clear freebasicIdentifier
hi clear freebasicInclude
hi clear freebasicGenericFunction
hi clear freebasicLabel
hi clear freebasicLineNumber
hi clear freebasicMathOperator
hi clear freebasicNumber
hi clear freebasicSpecial
hi clear freebasicTodo
hi clear lprologComment
hi clear lprologTodo
hi clear lprologKeyword
hi clear lprologSpecial
hi clear lprologOperator
hi clear lprologIdentifier
hi clear lprologInteger
hi clear lprologReal
hi clear lprologString
hi clear lprologCommentErr
hi clear lprologBrackErr
hi clear lprologParenErr
hi clear lprologModuleName
hi clear lprologTypeName
hi clear lprologVariable
hi clear lprologAtom
hi clear lprologClause
hi clear messagesDate
hi clear messagesHour
hi clear messagesDateRFC3339
hi clear messagesHourRFC3339
hi clear messagesRFC3339T
hi clear messagesHost
hi clear messagesLabel
hi clear messagesPID
hi clear messagesKernel
hi clear messagesError
hi clear messagesIP
hi clear messagesURL
hi clear messagesText
hi clear messagesNumber
hi clear ppwizSpecial
hi clear ppwizEqual
hi clear ppwizOperator
hi clear ppwizComment
hi clear ppwizDef
hi clear ppwizMacro
hi clear ppwizArg
hi clear ppwizStdVar
hi clear ppwizRexxVar
hi clear ppwizString
hi clear ppwizInteger
hi clear ppwizCont
hi clear ppwizError
hi clear ppwizHTML
hi clear baanConditional
hi clear baan3gl
hi clear baan3glpre
hi clear baan4gl
hi clear baan4glh
hi clear baansql
hi clear baansqlh
hi clear baanDalHook
hi clear baanNumber
hi clear baanString
hi clear baanOpenStringError
hi clear baanConstant
hi clear baanComment
hi clear baanCommenth
hi clear baanUncommented
hi clear baanDLLUsage
hi clear baanFunUsage
hi clear baanIdentifier
hi clear baanBshell
hi clear baanType
hi clear baanStorageClass
hi clear edifInString
hi clear edifKeyword
hi clear edifNumber
hi clear edifInStringError
hi clear edifError
hi clear edifString
hi clear nroffEscChar
hi clear nroffEscCharAr
hi clear nroffSpecialChar
hi clear nroffSpace
hi clear nroffEscRegArg2
hi clear nroffEscRegArg
hi clear nroffEscArg2
hi clear nroffEscPar
hi clear nroffEscRegPar
hi clear nroffEscArg
hi clear nroffSize
hi clear nroffEscape
hi clear nroffIgnore
hi clear nroffComment
hi clear nroffTodo
hi clear nroffReqLeader
hi clear nroffReqName
hi clear nroffRequest
hi clear nroffCond
hi clear nroffDefIdent
hi clear nroffIdent
hi clear nroffEquation
hi clear nroffTable
hi clear nroffPicture
hi clear nroffRefer
hi clear nroffGrap
hi clear nroffGremlin
hi clear nroffNumber
hi clear nroffBadChar
hi clear nroffSpaceError
hi clear nroffError
hi clear nroffPreserve
hi clear nroffString
hi clear nroffDefinition
hi clear nroffDefSpecial
hi clear rAssign
hi clear rBoolean
hi clear rBraceError
hi clear rComment
hi clear rCommentTodo
hi clear rComplex
hi clear rConditional
hi clear rConstant
hi clear rCurlyError
hi clear rDelimiter
hi clear rDollar
hi clear rError
hi clear rFloat
hi clear rFunction
hi clear rHelpIdent
hi clear rhPreProc
hi clear rhSection
hi clear rInteger
hi clear rLstElmt
hi clear rNameWSpace
hi clear rNumber
hi clear rOperator
hi clear rOpError
hi clear rParenError
hi clear rPreProc
hi clear rRepeat
hi clear rSpecial
hi clear rStatement
hi clear rString
hi clear rStrError
hi clear rType
hi clear pfmainConf
hi clear pfmainRef
hi clear pfmainWord
hi clear pfmainDict
hi clear pfmainQueueDir
hi clear pfmainTransport
hi clear pfmainLock
hi clear pfmainAnswer
hi clear pfmainComment
hi clear pfmainNumber
hi clear pfmainTime
hi clear pfmainIP
hi clear pfmainVariable
hi clear pfmainSpecial
hi clear dosbatchTodo
hi clear dosbatchStatement
hi clear dosbatchCommands
hi clear dosbatchLabel
hi clear dosbatchConditional
hi clear dosbatchRepeat
hi clear dosbatchOperator
hi clear dosbatchEchoOperator
hi clear dosbatchIfOperator
hi clear dosbatchArgument
hi clear dosbatchIdentifier
hi clear dosbatchVariable
hi clear dosbatchSpecialChar
hi clear dosbatchString
hi clear dosbatchNumber
hi clear dosbatchInteger
hi clear dosbatchHex
hi clear dosbatchBinary
hi clear dosbatchOctal
hi clear dosbatchComment
hi clear dosbatchImplicit
hi clear dosbatchSwitch
hi clear dosbatchCmd
hi clear gitsendemailComment
hi clear kixDoubleString
hi clear kixSingleString
hi clear kixStatement
hi clear kixRepeat
hi clear kixComment
hi clear kixBuiltin
hi clear kixLocalVar
hi clear kixMacro
hi clear kixEnvVar
hi clear kixLabel
hi clear kixFunction
hi clear kixInteger
hi clear kixHex
hi clear kixFloat
hi clear kixOperator
hi clear kixExpression
hi clear kixParenCloseError
hi clear kixBrackCloseError
hi clear kixStringError
hi clear kixWhileError
hi clear kixWhileOK
hi clear kixDoError
hi clear kixDoOK
hi clear kixIfError
hi clear kixIfOK
hi clear kixSelectError
hi clear kixSelectOK
hi clear kixForNextError
hi clear kixForNextOK
hi clear kixForEachError
hi clear kixForEachOK
hi clear maximaBraceError
hi clear maximaCmd
hi clear maximaCurlyError
hi clear maximaFuncCmd
hi clear maximaParenError
hi clear maximaCharacter
hi clear maximaComma
hi clear maximaCommentBlock
hi clear maximaConditional
hi clear maximaError
hi clear maximaFunc
hi clear maximaOp
hi clear maximaLabel
hi clear maximaNumber
hi clear maximaFloat
hi clear maximaRepeat
hi clear maximaSpecial
hi clear maximaSpecialChar
hi clear maximaStatement
hi clear maximaString
hi clear maximaTodo
hi clear omnimarkCommands
hi clear omnimarkKeywords
hi clear omnimarkString
hi clear omnimarkPatterns
hi clear omnimarkComment
hi clear omnimarkEscape
hi clear ShaDaComment
hi clear ShaDaEntryNumber
hi clear ShaDaEntryTimestamp
hi clear ShaDaEntryName
hi clear ShaDaEntryMapHeader
hi clear ShaDaEntryMapEntryStart
hi clear ShaDaEntryMapLongEntryStart
hi clear ShaDaEntryMapShortEntryStart
hi clear ShaDaEntryMapBinArrayStart
hi clear ShaDaEntryArrayEntryStart
hi clear ShaDaEntryMapKey
hi clear ShaDaEntryMapLongKey
hi clear ShaDaEntryMapShortKey
hi clear ShaDaEntryMapDescription
hi clear ShaDaEntryMapLongDescription
hi clear ShaDaEntryMapShortDescription
hi clear ShaDaEntryArrayHeader
hi clear ShaDaEntryArrayDescription
hi clear ShaDaMsgpackKeyword
hi clear ShaDaMsgpackShaDaKeyword
hi clear ShaDaMsgpackCharacter
hi clear ShaDaMsgpackInteger
hi clear ShaDaMsgpackFloat
hi clear ShaDaMsgpackBinaryString
hi clear ShaDaMsgpackBinaryStringEscape
hi clear ShaDaMsgpackExtType
hi clear ShaDaMsgpackStringQuotes
hi clear ShaDaMsgpackString
hi clear ShaDaMsgpackExt
hi clear ShaDaMsgpackMapBraces
hi clear ShaDaMsgpackArrayBraces
hi clear ShaDaMsgpackComma
hi clear ShaDaMsgpackColon
hi clear ShaDaMsgpackMultilineArray
hi clear idlangConditional
hi clear idlangRoutine
hi clear idlangStatement
hi clear idlangContinueLine
hi clear idlangRealNumber
hi clear idlangNumber
hi clear idlangString
hi clear idlangOperator
hi clear idlangComment
hi clear idlangTodo
hi clear idlangPreCondit
hi clear idlangDblCommaError
hi clear idlangStop
hi clear idlangStrucvar
hi clear idlangSystem
hi clear idlangKeyword
hi clear mgpLineSkip
hi clear mgpHash
hi clear mgpPercent
hi clear mgpComment
hi clear mgpCommand
hi clear mgpLine
hi clear mgpFile
hi clear mgpSize
hi clear mgpValue
hi clear mgpPage
hi clear mgpNoDefault
hi clear mgpDefine
hi clear initngTodo
hi clear initngServiceKeywords
hi clear initngDelim
hi clear sindaHeaderDelim
hi clear sindaoutPos
hi clear sindaoutNeg
hi clear sindaoutTitle
hi clear sindaoutFile
hi clear sindaoutInteger
hi clear sindaoutSectionDelim
hi clear sindaoutSectionTitle
hi clear sindaoutHeaderDelim
hi clear sindaoutLabel
hi clear sindaoutError
hi clear dockerfileString
hi clear dockerfileKeyword
hi clear dockerfileComment
hi clear 
hi clear 
hi clear wmlNextLine
hi clear wmlUse
hi clear wmlUsed
hi clear wmlBody
hi clear wmlDiverted
hi clear wmlDivert
hi clear wmlDivertEnd
hi clear wmlLocationId
hi clear wmlLocation
hi clear wmlDefineName
hi clear wmlComment
hi clear wmlInclude
hi clear wmlSharpBang
hi clear webRestrictedTeX
hi clear ratpoisonBooleanArg
hi clear ratpoisonCommandArg
hi clear ratpoisonComment
hi clear ratpoisonDefCommand
hi clear ratpoisonGravityArg
hi clear ratpoisonKeySeqArg
hi clear ratpoisonNumberArg
hi clear ratpoisonSetArg
hi clear ratpoisonStringCommand
hi clear ratpoisonTodo
hi clear ratpoisonVoidCommand
hi clear ratpoisonWinFmtArg
hi clear ratpoisonWinNameArg
hi clear ratpoisonWinListArg
hi clear mixRegister
hi clear mixLabel
hi clear mixComment
hi clear mixEndComment
hi clear mixDirective
hi clear mixOpcode
hi clear mixSpecial
hi clear mixNumber
hi clear mixString
hi clear mixAlfParam
hi clear mixIdentifier
hi clear autoitFunction
hi clear autoitKeyword
hi clear autoitOperator
hi clear autoitVarSelector
hi clear autoitComment
hi clear autoitParen
hi clear autoitComma
hi clear autoitBracket
hi clear autoitNumber
hi clear autoitString
hi clear autoitQuote
hi clear autoitIncluded
hi clear autoitCont
hi clear autoitDoubledSingles
hi clear autoitDoubledDoubles
hi clear autoitCommDelimiter
hi clear autoitInclude
hi clear autoitVariable
hi clear autoitBuiltin
hi clear autoitOption
hi clear autoitStyle
hi clear autoitConst
hi clear autoitSend
hi clear slpspiTodo
hi clear slpspiComment
hi clear slpspiKeyType
hi clear slpspiString
hi clear slpspiKeyFile
hi clear dotParErr
hi clear dotBraceErr
hi clear dotBrackErr
hi clear dotComment
hi clear dotTodo
hi clear dotParEncl
hi clear dotBrackEncl
hi clear dotBraceEncl
hi clear dotKeyword
hi clear dotType
hi clear dotKeyChar
hi clear dotString
hi clear dotIdentifier
hi clear amplEntityKeyword
hi clear amplType
hi clear amplStatement
hi clear amplOperators
hi clear amplBasicOperators
hi clear amplConditional
hi clear amplRepeat
hi clear amplStrings
hi clear amplNumerics
hi clear amplSetFunction
hi clear amplBuiltInFunction
hi clear amplRandomGenerator
hi clear amplComment
hi clear amplDotSuffix
hi clear amplPiecewise
hi clear mupadComment
hi clear mupadString
hi clear mupadOperator
hi clear mupadSpecial
hi clear mupadStatement
hi clear mupadUnderlined
hi clear mupadConditional
hi clear mupadRepeat
hi clear mupadFunction
hi clear mupadType
hi clear mupadDefine
hi clear mupadIdentifier
hi clear xpmType
hi clear xpmStorageClass
hi clear xpmTodo
hi clear xpmComment
hi clear xpmPixelString
hi clear elinksTodo
hi clear elinksComment
hi clear elinksNumber
hi clear elinksString
hi clear elinksKeyword
hi clear elinksPrefix
hi clear elinksOptions
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear satherBranch
hi clear satherLabel
hi clear satherConditional
hi clear satherSynchronize
hi clear satherRepeat
hi clear satherExceptions
hi clear satherStorageClass
hi clear satherMethodDecl
hi clear satherClassDecl
hi clear satherScopeDecl
hi clear satherBoolValue
hi clear satherSpecial
hi clear satherString
hi clear satherCharacter
hi clear satherSpecialCharacter
hi clear satherNumber
hi clear satherStatement
hi clear satherOperator
hi clear satherComment
hi clear satherType
hi clear satherValue
hi clear satherString
hi clear satherSpecial
hi clear satherCharacter
hi clear satherDeclarative
hi clear satherExternal
hi clear stParenError
hi clear stSetError
hi clear stBlockError
hi clear stKeyword
hi clear stMethod
hi clear stComment
hi clear stCharacter
hi clear stString
hi clear stSymbol
hi clear stNumber
hi clear stFloat
hi clear stError
hi clear stLocalVariables
hi clear stBlockVariable
hi clear asciidocAdmonition
hi clear asciidocAnchorMacro
hi clear asciidocAttributeEntry
hi clear asciidocAttributeList
hi clear asciidocAttributeMacro
hi clear asciidocAttributeRef
hi clear asciidocBackslash
hi clear asciidocBlockTitle
hi clear asciidocCallout
hi clear asciidocCommentBlock
hi clear asciidocCommentLine
hi clear asciidocDoubleDollarPassthrough
hi clear asciidocEmail
hi clear asciidocEntityRef
hi clear asciidocExampleBlockDelimiter
hi clear asciidocFilterBlock
hi clear asciidocHLabel
hi clear asciidocIdMarker
hi clear asciidocIndexTerm
hi clear asciidocLineBreak
hi clear asciidocOpenBlockDelimiter
hi clear asciidocListBullet
hi clear asciidocListContinuation
hi clear asciidocListingBlock
hi clear asciidocListLabel
hi clear asciidocListNumber
hi clear asciidocLiteralBlock
hi clear asciidocLiteralParagraph
hi clear asciidocMacroAttributes
hi clear asciidocMacro
hi clear asciidocOneLineTitle
hi clear asciidocPagebreak
hi clear asciidocPassthroughBlock
hi clear asciidocQuoteBlockDelimiter
hi clear asciidocQuotedAttributeList
hi clear asciidocQuotedBold
hi clear asciidocQuotedDoubleQuoted
hi clear asciidocQuotedEmphasized2
hi clear asciidocQuotedEmphasizedItalic
hi clear asciidocQuotedEmphasized
hi clear asciidocQuotedMonospaced2
hi clear asciidocQuotedMonospaced
hi clear asciidocQuotedSingleQuoted
hi clear asciidocQuotedSubscript
hi clear asciidocQuotedSuperscript
hi clear asciidocQuotedUnconstrainedBold
hi clear asciidocQuotedUnconstrainedEmphasized
hi clear asciidocQuotedUnconstrainedMonospaced
hi clear asciidocRefMacro
hi clear asciidocRuler
hi clear asciidocSidebarDelimiter
hi clear asciidocTableBlock2
hi clear asciidocTableBlock
hi clear asciidocTableDelimiter2
hi clear asciidocTableDelimiter
hi clear asciidocTable_OLD
hi clear asciidocTablePrefix2
hi clear asciidocTablePrefix
hi clear asciidocToDo
hi clear asciidocTriplePlusPassthrough
hi clear asciidocTwoLineTitle
hi clear asciidocURL
hi clear procmailComment
hi clear procmailTodo
hi clear procmailRecipe
hi clear procmailActionFolder
hi clear procmailActionVariable
hi clear procmailActionForward
hi clear procmailActionPipe
hi clear procmailAction
hi clear procmailVar
hi clear procmailVarDecl
hi clear procmailString
hi clear automakePrimary
hi clear automakeSecondary
hi clear automakeExtra
hi clear automakeOptions
hi clear automakeClean
hi clear automakeSubdirs
hi clear automakeConditional
hi clear automakeSubst
hi clear automakeComment1
hi clear automakeComment2
hi clear automakeMakeError
hi clear automakeBadSubst
hi clear automakeMakeDString
hi clear automakeMakeSString
hi clear automakeMakeBString
hi clear cobolBAD
hi clear cobolBadID
hi clear cobolBadLine
hi clear cobolCALLs
hi clear cobolComment
hi clear cobolKeys
hi clear cobolAreaB
hi clear cobolCompiler
hi clear cobolCondFlow
hi clear cobolCopy
hi clear cobolDeclA
hi clear cobolDecl
hi clear cobolExtras
hi clear cobolGoTo
hi clear cobolConstant
hi clear cobolNumber
hi clear cobolPic
hi clear cobolReserved
hi clear cobolDivision
hi clear cobolSection
hi clear cobolParagraph
hi clear cobolDivisionName
hi clear cobolSectionName
hi clear cobolParagraphName
hi clear cobolString
hi clear cobolTodo
hi clear cobolWatch
hi clear cobolIndicator
hi clear sqlComment
hi clear sqlNumber
hi clear sqlBoolean
hi clear sqlString
hi clear sqlStatement
hi clear sqlConditional
hi clear sqlRepeat
hi clear sqlKeyword
hi clear sqlOperator
hi clear sqlException
hi clear sqlFunction
hi clear sqlType
hi clear sqlTodo
hi clear ldapconfTodo
hi clear ldapconfComment
hi clear ldapconfOption
hi clear ldapconfDeprOption
hi clear ldapconfString
hi clear ldapconfURI
hi clear ldapconfDNAttrType
hi clear ldapconfOperator
hi clear ldapconfEq
hi clear ldapconfDNAttrTypeEq
hi clear ldapconfValue
hi clear ldapconfDNAttrValue
hi clear ldapconfSeparator
hi clear ldapconfDNSeparator
hi clear ldapconfHost
hi clear ldapconfNumber
hi clear ldapconfPort
hi clear ldapconfBoolean
hi clear ldapconfInteger
hi clear ldapconfType
hi clear ldapconfDerefWhen
hi clear ldapconfDefine
hi clear ldapconfSASLMechanism
hi clear ldapconfSASLRealm
hi clear ldapconfSASLAuthID
hi clear ldapconfSASLSecProps
hi clear ldapconfSASLSecPEq
hi clear ldapconfSASLSecFactor
hi clear ldapconfSASLSecPSep
hi clear ldapconfFilename
hi clear ldapconfPath
hi clear ldapconfTLSCipherOp
hi clear ldapconfTLSCipherName
hi clear ldapconfSpecial
hi clear ldapconfTLSCipherSort
hi clear ldapconfTLSCipherSep
hi clear ldapconfTLSCertCheck
hi clear ldapconfTLSCRLCheck
hi clear xinetdTodo
hi clear xinetdComment
hi clear xinetdService
hi clear xinetdServiceName
hi clear xinetdDefaults
hi clear xinetdServiceGroupD
hi clear xinetdReqAttribute
hi clear xinetdAttribute
hi clear xinetdEq
hi clear xinetdStringEq
hi clear xinetdString
hi clear xinetdTypeEq
hi clear xinetdType
hi clear xinetdFlagsEq
hi clear xinetdFlags
hi clear xinetdDeprFlags
hi clear xinetdDisable
hi clear xinetdBooleanEq
hi clear xinetdBoolean
hi clear xinetdSocketTypeEq
hi clear xinetdSocketType
hi clear xinetdUNumberEq
hi clear xinetdUnlimited
hi clear xinetdNumber
hi clear xinetdSignedNumEq
hi clear xinetdSignedNumber
hi clear xinetdStringsEq
hi clear xinetdStrings
hi clear xinetdStringsAdvEq
hi clear xinetdTimeRangesEq
hi clear xinetdTimeRanges
hi clear xinetdLogTypeEq
hi clear xinetdLogType
hi clear xinetdSyslogType
hi clear xinetdSyslogLevel
hi clear xinetdLogFile
hi clear xinetdLogSoftLimit
hi clear xinetdLogHardLimit
hi clear xinetdLogSuccessEq
hi clear xinetdLogSuccess
hi clear xinetdLogFailureEq
hi clear xinetdLogFailure
hi clear xinetdRPCVersionEq
hi clear xinetdRPCVersion
hi clear xinetdNumberEq
hi clear xinetdEnvEq
hi clear xinetdEnvName
hi clear xinetdEnvNameEq
hi clear xinetdEnvValue
hi clear xinetdPPAttribute
hi clear xinetdPathEq
hi clear xinetdPath
hi clear xinetdRedirectEq
hi clear xinetdRedirectIP
hi clear xinetdCPSEq
hi clear xinetdCPS
hi clear xinetdFloatEq
hi clear xinetdFloat
hi clear xinetdOctalEq
hi clear xinetdOctal
hi clear xinetdOctalZero
hi clear xinetdOctalError
hi clear xinetdASEq
hi clear xinetdAS
hi clear xinetdASMult
hi clear xinetdDenyTimeEq
hi clear xinetdDenyTime
hi clear svnSummary
hi clear svnBlank
hi clear svnRegion
hi clear svnDelimiter
hi clear svnRemoved
hi clear svnAdded
hi clear svnModified
hi clear svnProperty
hi clear svnRenamed
hi clear GnashOn
hi clear GnashOff
hi clear GnashComment
hi clear GnashTodo
hi clear GnashNumber
hi clear GnashSet
hi clear GnashKeyword
hi clear udevconfTodo
hi clear udevconfComment
hi clear udevconfVariable
hi clear udevconfVariableEq
hi clear udevconfString
hi clear kivyPreproc
hi clear kivyComment
hi clear kivyRule
hi clear kivyIdent
hi clear kivyAttribute
hi clear ucCommentString
hi clear ucComment2String
hi clear ucCommentCharacter
hi clear 
hi clear ucFuncDef
hi clear ucEventDef
hi clear ucBraces
hi clear ucBranch
hi clear ucLabel
hi clear ucUserLabel
hi clear ucConditional
hi clear ucRepeat
hi clear ucStorageClass
hi clear ucMethodDecl
hi clear ucClassDecl
hi clear ucScopeDecl
hi clear ucBoolean
hi clear ucSpecial
hi clear ucSpecialError
hi clear ucSpecialCharError
hi clear ucString
hi clear ucCharacter
hi clear ucSpecialChar
hi clear ucNumber
hi clear ucError
hi clear ucStringError
hi clear ucStatement
hi clear ucOperator
hi clear ucOverLoaded
hi clear ucComment
hi clear ucDocComment
hi clear ucLineComment
hi clear ucConstant
hi clear ucTypedef
hi clear ucTodo
hi clear ucCommentTitle
hi clear ucDocTags
hi clear ucDocParam
hi clear ucCommentStar
hi clear ucType
hi clear ucExternal
hi clear ucClassKeys
hi clear ucClassLabel
hi clear htmlComment
hi clear htmlCommentPart
hi clear chaiscriptExceptions
hi clear chaiscriptKeyword
hi clear chaiscriptStatement
hi clear chaiscriptRepeat
hi clear chaiscriptString
hi clear chaiscriptNumber
hi clear chaiscriptFloat
hi clear chaiscriptOperator
hi clear chaiscriptConstant
hi clear chaiscriptCond
hi clear chaiscriptFunction
hi clear chaiscriptComment
hi clear chaiscriptTodo
hi clear chaiscriptError
hi clear chaiscriptSpecial
hi clear chaiscriptFunc
hi clear chaiscriptType
hi clear chaiscriptEval
hi clear denyhostsTodo
hi clear denyhostsComment
hi clear denyhostsSetting
hi clear denyhostsStringSetting
hi clear denyhostsBooleanSetting
hi clear denyhostsPathSetting
hi clear denyhostsNumericSetting
hi clear denyhostsTimespecSetting
hi clear denyhostsFormatSetting
hi clear denyhostsRegexSetting
hi clear denyhostURLSetting
hi clear denyhostsDelimiter
hi clear denyhostsStringDelimiter
hi clear denyhostsBooleanDelimiter
hi clear denyhostsPathDelimiter
hi clear denyhostsNumericDelimiter
hi clear denyhostsTimespecDelimiter
hi clear denyhostsFormatDelimiter
hi clear denyhostsRegexDelimiter
hi clear denyhostsURLDelimiter
hi clear denyhostsString
hi clear denyhostsPath
hi clear denyhostsNumber
hi clear denyhostsTimespec
hi clear denyhostsFormat
hi clear denyhostsFormattingExpandos
hi clear denyhostsRegex
hi clear denyhostsURL
hi clear gtkrcComment
hi clear gtkrcFixme
hi clear gtkrcInclude
hi clear gtkrcACString
hi clear gtkrcBString
hi clear gtkrcString
hi clear gtkrcNumber
hi clear gtkrcStateName
hi clear gtkrcPriorityName
hi clear gtkrcTextDirName
hi clear gtkrcSettingsName
hi clear gtkrcStockName
hi clear gtkrcConstant
hi clear gtkrcPathSpecial
hi clear gtkrcWPathSpecial
hi clear gtkrcRGBColor
hi clear gtkrcKeyMod
hi clear gtkrcSpecial
hi clear gtkrcTop
hi clear gtkrcPathSet
hi clear gtkrcStyleKeyword
hi clear gtkrcFunction
hi clear gtkrcBind
hi clear gtkrcKeyword
hi clear gtkrcClassNameGnome
hi clear gtkrcClassName
hi clear gtkrcFunctionName
hi clear gtkrcGtkClass
hi clear gtkrcImage
hi clear gtkrcOtherword
hi clear gtkrcParenError
hi clear gtkrcBraceError
hi clear gtkrcBracketError
hi clear gtkrcError
hi clear vsejclComment
hi clear vsejclField
hi clear vsejclKeyword
hi clear vsejclObject
hi clear vsejclString
hi clear vsejclMisc
hi clear vsejclParms
hi clear tt2_tag
hi clear tt2_tag_region
hi clear tt2_commentblock_region
hi clear tt2_directive
hi clear tt2_variable
hi clear tt2_ivariable
hi clear tt2_operator
hi clear tt2_string_qq
hi clear tt2_string_q
hi clear tt2_blockname
hi clear tt2_comment
hi clear tt2_func
hi clear tt2_number
hi clear robotsComment
hi clear robotsAgent
hi clear robotsDisallow
hi clear robotsLine
hi clear robotsStar
hi clear robotsDelimiter
hi clear robotsUrl
hi clear robotsMail
hi clear robotsString
hi clear gprofFlatProfileTitle
hi clear gprofFlatProfileHeader
hi clear gprofFlatProfileFunction
hi clear gprofFlatProfileTrailer
hi clear gprofCallGraphTitle
hi clear gprofCallGraphHeader
hi clear gprofFlatProfileFunction
hi clear gprofCallGraphFunction
hi clear gprofCallGraphTrailer
hi clear gprofCallGraphSeparator
hi clear gprofFunctionIndex
hi clear gprofSpecial
hi clear gprofNumbers
hi clear gprofIndexFunctionTitle
hi clear xslElement
hi clear jalAcces
hi clear jalBoolean
hi clear jalBit
hi clear jalComment
hi clear jalConditional
hi clear jalConstant
hi clear jalDelimiter
hi clear jalDirective
hi clear jalException
hi clear jalFloat
hi clear jalFunction
hi clear jalPsudoVarsKey
hi clear jalLabel
hi clear jalMatrixDelimiter
hi clear jalModifier
hi clear jalNumber
hi clear jalBinNumber
hi clear jalHexNumber
hi clear jalOperator
hi clear jalPredefined
hi clear jalPreProc
hi clear jalRepeat
hi clear jalStatement
hi clear jalString
hi clear jalStringEscape
hi clear jalStringEscapeGPC
hi clear jalStringError
hi clear jalStruct
hi clear jalSymbolOperator
hi clear jalTodo
hi clear jalType
hi clear jalUnclassified
hi clear jalAsm
hi clear jalError
hi clear jalAsmKey
hi clear jalPIC
hi clear jalShowTab
hi clear picTodo
hi clear picComment
hi clear picDirective
hi clear picLabel
hi clear picString
hi clear picOpcode
hi clear picRegister
hi clear picRegisterPart
hi clear picPinDir
hi clear picPortDir
hi clear picASCII
hi clear picBinary
hi clear picDecimal
hi clear picHexadecimal
hi clear picOctal
hi clear picIdentifier
hi clear euphoria4Comment
hi clear euphoria4String
hi clear euphoria4Char
hi clear euphoria4Number
hi clear euphoria4Boolean
hi clear euphoria4Builtin
hi clear euphoria4Library
hi clear euphoria4Type
hi clear euphoria4Keyword
hi clear euphoria4Operator
hi clear euphoria4Debug
hi clear euphoria4Delimit
hi clear euphoria4PreProc
hi clear privoxyAction
hi clear privoxyFilterAction
hi clear privoxyActionLineDelimiter
hi clear privoxyDisabledPrefix
hi clear privoxyEnabledPrefix
hi clear privoxyHeader
hi clear privoxySetting
hi clear privoxyFilterArg
hi clear privoxyComment
hi clear privoxyTodo
hi clear cssComment
hi clear cssVendor
hi clear cssHacks
hi clear cssTagName
hi clear cssDeprecated
hi clear cssSelectorOp
hi clear cssSelectorOp2
hi clear cssAttrComma
hi clear cssAnimationProp
hi clear cssBackgroundProp
hi clear cssBorderProp
hi clear cssBoxProp
hi clear cssColorProp
hi clear cssContentForPagedMediaProp
hi clear cssDimensionProp
hi clear cssFlexibleBoxProp
hi clear cssFontProp
hi clear cssGeneratedContentProp
hi clear cssGridProp
hi clear cssHyerlinkProp
hi clear cssLineboxProp
hi clear cssListProp
hi clear cssMarqueeProp
hi clear cssMultiColumnProp
hi clear cssPagedMediaProp
hi clear cssPositioningProp
hi clear cssPrintProp
hi clear cssRubyProp
hi clear cssSpeechProp
hi clear cssTableProp
hi clear cssTextProp
hi clear cssTransformProp
hi clear cssTransitionProp
hi clear cssUIProp
hi clear cssIEUIProp
hi clear cssAuralProp
hi clear cssRenderProp
hi clear cssMobileTextProp
hi clear cssAnimationAttr
hi clear cssBackgroundAttr
hi clear cssBorderAttr
hi clear cssBoxAttr
hi clear cssContentForPagedMediaAttr
hi clear cssDimensionAttr
hi clear cssFlexibleBoxAttr
hi clear cssFontAttr
hi clear cssGeneratedContentAttr
hi clear cssGridAttr
hi clear cssHyerlinkAttr
hi clear cssLineboxAttr
hi clear cssListAttr
hi clear cssMarginAttr
hi clear cssMarqueeAttr
hi clear cssMultiColumnAttr
hi clear cssPaddingAttr
hi clear cssPagedMediaAttr
hi clear cssPositioningAttr
hi clear cssGradientAttr
hi clear cssPrintAttr
hi clear cssRubyAttr
hi clear cssSpeechAttr
hi clear cssTableAttr
hi clear cssTextAttr
hi clear cssTransformAttr
hi clear cssTransitionAttr
hi clear cssUIAttr
hi clear cssIEUIAttr
hi clear cssAuralAttr
hi clear cssRenderAttr
hi clear cssCommonAttr
hi clear cssPseudoClassId
hi clear cssPseudoClassLang
hi clear cssValueLength
hi clear cssValueInteger
hi clear cssValueNumber
hi clear cssValueAngle
hi clear cssValueTime
hi clear cssValueFrequency
hi clear cssFunction
hi clear cssURL
hi clear cssFunctionName
hi clear cssFunctionComma
hi clear cssColor
hi clear cssIdentifier
hi clear cssInclude
hi clear cssIncludeKeyword
hi clear cssImportant
hi clear cssBraces
hi clear cssBraceError
hi clear cssError
hi clear cssUnicodeEscape
hi clear cssStringQQ
hi clear cssStringQ
hi clear cssAttributeSelector
hi clear cssMedia
hi clear cssMediaType
hi clear cssMediaComma
hi clear cssMediaKeyword
hi clear cssMediaProp
hi clear cssMediaAttr
hi clear cssPage
hi clear cssPagePseudo
hi clear cssPageMargin
hi clear cssPageProp
hi clear cssKeyFrame
hi clear cssKeyFrameSelector
hi clear cssFontDescriptor
hi clear cssFontDescriptorFunction
hi clear cssFontDescriptorProp
hi clear cssFontDescriptorAttr
hi clear cssUnicodeRange
hi clear cssClassName
hi clear cssClassNameDot
hi clear cssProp
hi clear cssAttr
hi clear cssUnitDecorators
hi clear cssNoise
hi clear atKeyword
hi clear aptconfTodo
hi clear aptconfError
hi clear aptconfComment
hi clear aptconfOperator
hi clear aptconfAction
hi clear aptconfOption
hi clear aptconfValue
hi clear aptconfRegexpOpt
hi clear aptconfAsError
hi clear aptconfSemiColon
hi clear aptconfDoubleColon
hi clear aptconfCurlyBraces
hi clear aptconfGroupIncomplete
hi clear aptconfGroup
hi clear aptconfAcquire
hi clear aptconfAcquireCDROM
hi clear aptconfAcquireCompressionTypes
hi clear aptconfAcquireFTP
hi clear aptconfAcquireHTTP
hi clear aptconfAcquireHTTPS
hi clear aptconfAcquireMaxValidTime
hi clear aptconfAcquirePDiffs
hi clear aptconfAdequate
hi clear aptconfApt
hi clear aptconfAptAuthentication
hi clear aptconfAptAutoRemove
hi clear aptconfAptCache
hi clear aptconfAptCDROM
hi clear aptconfAptChangelogs
hi clear aptconfAptCompressor
hi clear aptconfAptCompressorAll
hi clear aptconfAptGet
hi clear aptconfAptPeriodic
hi clear aptconfAptUpdate
hi clear aptconfAptitude
hi clear aptconfAptitudeCmdline
hi clear aptconfAptitudeCmdlineProgress
hi clear aptconfAptitudeCmdlineSafeUpgrade
hi clear aptconfAptitudeLogging
hi clear aptconfAptitudeProblemResolver
hi clear aptconfAptitudeSafeResolver
hi clear aptconfAptitudeScreenshot
hi clear aptconfAptitudeSections
hi clear aptconfAptitudeUI
hi clear aptconfAptitudeUIKeyBindings
hi clear aptconfAptitudeUIStyles
hi clear aptconfAptitudeUIStylesElements
hi clear aptconfAptListbugs
hi clear aptconfDebTags
hi clear aptconfDebug
hi clear aptconfDebugAcquire
hi clear aptconfDebugPkgAcquire
hi clear aptconfDebugPkgDepCache
hi clear aptconfDebugPkgProblemResolver
hi clear aptconfDir
hi clear aptconfDirAptitude
hi clear aptconfDirBin
hi clear aptconfDirCache
hi clear aptconfDirEtc
hi clear aptconfDirLog
hi clear aptconfDirMedia
hi clear aptconfDirState
hi clear aptconfDPkg
hi clear aptconfDPkgTools
hi clear aptconfDSelect
hi clear aptconfOrderList
hi clear aptconfOrderListScore
hi clear aptconfPackageManager
hi clear aptconfPkgCacheGen
hi clear aptconfQuiet
hi clear aptconfRpm
hi clear aptconfSynaptic
hi clear aptconfSynapticUpdate
hi clear aptconfUnattendedUpgrade
hi clear aptconfWhatmaps
hi clear herculesStatement
hi clear herculesType
hi clear herculesComment
hi clear herculesPreProc
hi clear herculesTodo
hi clear herculesOutput
hi clear herculesCmdCmnt
hi clear herculesNumber
hi clear herculesBraceError
hi clear herculesCurlyError
hi clear herculesParenError
hi clear herculesError
hi clear verilogCharacter
hi clear verilogConditional
hi clear verilogRepeat
hi clear verilogString
hi clear verilogTodo
hi clear verilogComment
hi clear verilogConstant
hi clear verilogLabel
hi clear verilogNumber
hi clear verilogOperator
hi clear verilogStatement
hi clear verilogGlobal
hi clear verilogDirective
hi clear verilogEscape
hi clear liloEqPath
hi clear liloEqWord
hi clear liloEqVga
hi clear liloEqDecNumber
hi clear liloEqHexNumber
hi clear liloEqNumber
hi clear liloEqString
hi clear liloEqAnything
hi clear liloEquals
hi clear liloError
hi clear liloEqPathComment
hi clear liloEqVgaComment
hi clear liloEqDecNumberComment
hi clear liloEqHexNumberComment
hi clear liloEqStringComment
hi clear liloEqAnythingComment
hi clear liloPathComment
hi clear liloVgaComment
hi clear liloDecNumberComment
hi clear liloHexNumberComment
hi clear liloNumberComment
hi clear liloStringComment
hi clear liloAnythingComment
hi clear liloComment
hi clear liloDiskOpt
hi clear liloKernelOpt
hi clear liloImageOpt
hi clear liloOption
hi clear liloDecNumber
hi clear liloHexNumber
hi clear liloDecNumberP
hi clear liloNumber
hi clear liloString
hi clear liloPath
hi clear liloSpecial
hi clear liloLabel
hi clear liloDecNumberList
hi clear liloDecNumberPList
hi clear liloAnything
hi clear liloEnviron
hi clear liloVgaKeyword
hi clear liloImage
hi clear liloChRules
hi clear liloDisk
hi clear z8aSection
hi clear z8aLabel
hi clear z8aSpecialLabel
hi clear z8aComment
hi clear z8aInstruction
hi clear z8aSpecInst
hi clear z8aInclude
hi clear z8aPreCondit
hi clear z8aPreProc
hi clear z8aNumber
hi clear z8aString
hi clear sqlDashComment
hi clear sqlSlashComment
hi clear sqlMultiComment
hi clear sqlNumber
hi clear sqlOperator
hi clear sqlSpecial
hi clear sqlKeyword
hi clear sqlStatement
hi clear sqlString
hi clear sqlType
hi clear sqlFunction
hi clear sqlOption
hi clear wgetAssignmentOperator
hi clear wgetBoolean
hi clear wgetCommand
hi clear wgetComment
hi clear wgetNumber
hi clear wgetQuota
hi clear wgetString
hi clear wgetTodo
hi clear limitsTodo
hi clear limitsComment
hi clear limitsUser
hi clear limitsDefault
hi clear limitsLimit
hi clear limitsDeLimit
hi clear limitsNumber
hi clear gComment
hi clear gCommentStart
hi clear gBlockComment
hi clear gString
hi clear gNumber
hi clear gBoolean
hi clear gFloat
hi clear gCommands
hi clear gGenrFunc
hi clear gDelimiter
hi clear gError
hi clear gBraceError
hi clear gCurlyError
hi clear gParenError
hi clear gIdentifier
hi clear gVariable
hi clear gArrow
hi clear nastranDmapexecmod
hi clear nastranDmapType
hi clear nastranDmapPreCondit
hi clear nastranDmapUtilmod
hi clear nastranDmapMatmod
hi clear nastranDmapString
hi clear nastranDmapNumber
hi clear nastranDmapFloat
hi clear nastranDmapInitTab
hi clear nastranDmapTab
hi clear nastranDmapLogical
hi clear nastranDmapImplicit
hi clear nastranDmapComment
hi clear nastranDmapRepeat
hi clear nastranNastranCard
hi clear nastranECSCard
hi clear nastranFMSCard
hi clear nastranCC
hi clear nastranDelimiter
hi clear nastranBulkData
hi clear nastranUtilCard
hi clear prescribeSpecial
hi clear prescribeStatement
hi clear prescribeNumber
hi clear prescribeCSETArg
hi clear prescribeFRPOArg
hi clear prescribeComment
hi clear rcCharacter
hi clear rcSpecialCharacter
hi clear rcNumber
hi clear rcFloat
hi clear rcOctalError
hi clear rcParenError
hi clear rcInParen
hi clear rcCommentError
hi clear rcInclude
hi clear rcPreProc
hi clear rcDefine
hi clear rcIncluded
hi clear rcError
hi clear rcPreCondit
hi clear rcCommentString
hi clear rcComment2String
hi clear rcCommentSkip
hi clear rcString
hi clear rcComment
hi clear rcSpecial
hi clear rcTodo
hi clear rcAttribute
hi clear rcStdId
hi clear rcStatement
hi clear rcLanguage
hi clear rcMainObject
hi clear rcSubObject
hi clear rcCaptionParam
hi clear rcParam
hi clear rcStatement
hi clear rcCommonAttribute
hi clear dylanlidInfo
hi clear dylanlidEntry
hi clear naturalFormat
hi clear naturalAttribute
hi clear naturalNumber
hi clear naturalString
hi clear naturalBoolean
hi clear naturalConditional
hi clear naturalRepeat
hi clear naturalLoop
hi clear naturalFlow
hi clear naturalError
hi clear naturalKeyword
hi clear naturalOperator
hi clear naturalParGui
hi clear naturalLabel
hi clear naturalRefLabel
hi clear naturalPComment
hi clear naturalComment
hi clear naturalTodo
hi clear naturalCommentMark
hi clear naturalInclude
hi clear naturalSysVar
hi clear naturalLineNo
hi clear naturalLineRef
hi clear naturalSpecial
hi clear naturalComKey
hi clear naturalRMKeyword
hi clear naturalLegalIdent
hi clear naturalType
hi clear naturalFunction
hi clear naturalObjName
hi clear xdefaultsLabel
hi clear xdefaultsValue
hi clear xdefaultsComment
hi clear xdefaultsCommentH
hi clear xdefaultsPreProc
hi clear xdefaultsInclude
hi clear xdefaultsCppSkip
hi clear xdefaultsCppOut2
hi clear xdefaultsCppOut
hi clear xdefaultsIncluded
hi clear xdefaultsDefine
hi clear xdefaultsSymbol
hi clear xdefaultsSpecial
hi clear xdefaultsErrorLine
hi clear xdefaultsCommentError
hi clear xdefaultsPunct
hi clear xdefaultsLineEnd
hi clear xdefaultsTodo
hi clear ldifAttribute
hi clear ldifOption
hi clear ldifPunctuation
hi clear ldifStringValue
hi clear ldifBase64Value
hi clear ldifFileValue
hi clear ldifComment
hi clear avraBinaryNumber
hi clear avraHexNumber
hi clear avraDecNumber
hi clear avraNumericOperator
hi clear avraUnaryOperator
hi clear avraBinaryOperator
hi clear avraBitwiseOperator
hi clear avraOperator
hi clear avraComment
hi clear avraDirective
hi clear avraRegister
hi clear avraNumber
hi clear avraString
hi clear avraInstr
hi clear avraLabel
hi clear upstreamdat_Parameter
hi clear upstreamdat_Comment
hi clear jessAtomNmbr
hi clear jessAtomMark
hi clear jessAtom
hi clear jessAtomBarSymbol
hi clear jessBarSymbol
hi clear jessComment
hi clear jessConcat
hi clear jessDeclaration
hi clear jessFunc
hi clear jessKey
hi clear jessMark
hi clear jessNumber
hi clear jessParenError
hi clear jessSpecial
hi clear jessString
hi clear jessVar
hi clear tasmString
hi clear tasmDec
hi clear tasmHex
hi clear tasmOct
hi clear tasmBin
hi clear tasmInstruction
hi clear tasmCoprocInstr
hi clear tasmMMXInst
hi clear tasmDirective
hi clear tasmRegister
hi clear tasmProctype
hi clear tasmComment
hi clear tasmLabel
hi clear hgcommitComment
hi clear hgcommitUser
hi clear hgcommitBranch
hi clear hgcommitAdded
hi clear hgcommitChanged
hi clear hgcommitRemoved
hi clear modula3Keyword
hi clear modula3Block
hi clear modula3Comment
hi clear modula3String
hi clear pcctsDelim
hi clear pcctsTokenName
hi clear pcctsRuleName
hi clear pcctsLabelHack
hi clear pcctsDirective
hi clear pcctsString
hi clear pcctsComment
hi clear pcctsClass
hi clear pcctsClassName
hi clear pcctsException
hi clear pcctsExceptionHandler
hi clear pcctsExceptionRuleRef
hi clear pcctsExceptionID
hi clear pcctsRuleRef
hi clear pcctsSpecialChar
hi clear gradsStatement
hi clear gradsString
hi clear gradsNumber
hi clear gradsFixVariables
hi clear gradsVariables
hi clear gradsglobalVariables
hi clear gradsConst
hi clear gradsClassMethods
hi clear gradsOperator
hi clear gradsComment
hi clear gradsTypos
hi clear lifelinesConditional
hi clear lifelinesArithm
hi clear lifelinesLogical
hi clear lifelinesInclude
hi clear lifelinesComment
hi clear lifelinesStatement
hi clear lifelinesUser
hi clear lifelinesFunct
hi clear lifelinesTable
hi clear lifelinesGedcom
hi clear lifelinesList
hi clear lifelinesRepeat
hi clear lifelinesFam
hi clear lifelinesIndi
hi clear lifelinesProc
hi clear lifelinesDef
hi clear lifelinesString
hi clear lifelinesSpecial
hi clear lifelinesNumber
hi clear lifelinesParenError
hi clear lifelinesErrInParen
hi clear lifelinesError
hi clear lifelinesTodo
hi clear lifelinesDecl
hi clear sshdconfigComment
hi clear sshdconfigTodo
hi clear sshdconfigHostPort
hi clear sshdconfigTime
hi clear sshdconfigNumber
hi clear sshdconfigConstant
hi clear sshdconfigYesNo
hi clear sshdconfigAddressFamily
hi clear sshdconfigPrivilegeSeparation
hi clear sshdconfigTcpForwarding
hi clear sshdconfigRootLogin
hi clear sshdconfigCiphers
hi clear sshdconfigMAC
hi clear sshdconfigHostKeyAlgo
hi clear sshdconfigRootLogin
hi clear sshdconfigLogLevel
hi clear sshdconfigSysLogFacility
hi clear sshdconfigVar
hi clear sshdconfigCompression
hi clear sshdconfigIPQoS
hi clear sshdconfigKexAlgo
hi clear sshdconfigTunnel
hi clear sshdconfigSubsystem
hi clear sshdconfigEnum
hi clear sshdconfigSpecial
hi clear sshdconfigKeyword
hi clear sshdconfigMatch
hi clear lynxBoolean
hi clear lynxComment
hi clear lynxDelimiter
hi clear lynxFormatDir
hi clear lynxNone
hi clear lynxNumber
hi clear lynxOption
hi clear lynxRCOption
hi clear lynxTodo
hi clear godocTitle
hi clear snnsnetType
hi clear snnsnetComment
hi clear snnsnetNumbers
hi clear snnsnetSection
hi clear snnsnetTitle
hi clear snnsnetTodo
hi clear jovialBitConstant
hi clear jovialBoolean
hi clear jovialComment
hi clear jovialConstant
hi clear jovialFloat
hi clear jovialFunction
hi clear jovialNumber
hi clear jovialOperator
hi clear jovialPreProc
hi clear jovialStatement
hi clear jovialStorageClass
hi clear jovialString
hi clear jovialStructure
hi clear jovialTodo
hi clear jovialType
hi clear jovialTypedef
hi clear webmacroComment
hi clear webmacroVariable
hi clear webmacroIf
hi clear webmacroForeach
hi clear webmacroSet
hi clear webmacroInclude
hi clear webmacroParse
hi clear webmacroStatement
hi clear webmacroNumber
hi clear webmacroBoolean
hi clear webmacroSpecial
hi clear webmacroString
hi clear webmacroBracesError
hi clear winbatchLabel
hi clear winbatchCtl
hi clear winbatchStatement
hi clear winbatchTodo
hi clear winbatchString
hi clear winbatchVar
hi clear winbatchComment
hi clear winbatchImplicit
hi clear winbatchNumber
hi clear winbatchConstant
hi clear mysqlKeyword
hi clear mysqlSpecial
hi clear mysqlString
hi clear mysqlNumber
hi clear mysqlVariable
hi clear mysqlComment
hi clear mysqlType
hi clear mysqlOperator
hi clear mysqlFlow
hi clear mysqlFunction
hi clear conaryMacro
hi clear conaryrecipeFunction
hi clear conaryError
hi clear conaryBFunction
hi clear conaryGFunction
hi clear conarySFunction
hi clear conaryPFunction
hi clear conaryFlags
hi clear conaryArches
hi clear conarySubArches
hi clear conaryBad
hi clear conaryBadMacro
hi clear conaryKeywords
hi clear conaryUseFlag
hi clear abcComment
hi clear abcHeadField
hi clear abcBodyField
hi clear abcBar
hi clear abcTuple
hi clear abcBroken
hi clear abcTie
hi clear abcGuitarChord
hi clear abcNote
hi clear lscriptNotesType
hi clear lscriptNotesConst
hi clear lscriptLineNumber
hi clear lscriptDatatype
hi clear lscriptNumber
hi clear lscriptError
hi clear lscriptStatement
hi clear lscriptString
hi clear lscriptComment
hi clear lscriptTodo
hi clear lscriptFunction
hi clear lscriptMethods
hi clear lscriptEvents
hi clear lscriptTypeSpecifier
hi clear alsoconfTodo
hi clear alsaconfComment
hi clear alsaconfSpecialChar
hi clear alsaconfString
hi clear alsaconfSpecial
hi clear alsaconfPreProc
hi clear alsaconfMode
hi clear alsaconfKeyword
hi clear alsaconfVariables
hi clear erlangComment
hi clear erlangCommentAnnotation
hi clear erlangTodo
hi clear erlangShebang
hi clear erlangNumberInteger
hi clear erlangNumberFloat
hi clear erlangString
hi clear erlangQuotedAtom
hi clear erlangQuotedAtom
hi clear erlangStringModifier
hi clear erlangQuotedAtomModifier
hi clear erlangModifier
hi clear erlangOperator
hi clear erlangRightArrow
hi clear erlangBracket
hi clear erlangPipe
hi clear erlangBracket
hi clear erlangPipe
hi clear erlangAtom
hi clear erlangLocalFuncCall
hi clear erlangLocalFuncRef
hi clear erlangGlobalFuncCall
hi clear erlangGlobalFuncRef
hi clear erlangVariable
hi clear erlangMacro
hi clear erlangRecord
hi clear erlangQuotedRecord
hi clear erlangMap
hi clear erlangAtom
hi clear erlangLocalFuncCall
hi clear erlangLocalFuncRef
hi clear erlangGlobalFuncCall
hi clear erlangGlobalFuncRef
hi clear erlangVariable
hi clear erlangMacro
hi clear erlangRecord
hi clear erlangQuotedRecord
hi clear erlangMap
hi clear erlangBitType
hi clear erlangAttribute
hi clear erlangMacroDef
hi clear erlangUnknownAttribute
hi clear erlangInclude
hi clear erlangRecordDef
hi clear erlangDefine
hi clear erlangPreCondit
hi clear erlangType
hi clear erlangAttribute
hi clear erlangMacroDef
hi clear erlangUnknownAttribute
hi clear erlangInclude
hi clear erlangRecordDef
hi clear erlangDefine
hi clear erlangPreCondit
hi clear erlangType
hi clear erlangKeyword
hi clear erlangBIF
hi clear erlangBoolean
hi clear erlangExtra
hi clear erlangSignal
hi clear erlangBoolean
hi clear erlangExtra
hi clear erlangSignal
hi clear plmTodo
hi clear plmNumber
hi clear plmOperator
hi clear plmDelimiter
hi clear plmIdentifier
hi clear plmBuiltIn
hi clear plm286BuiltIn
hi clear plm386BuiltIn
hi clear plm386w16BuiltIn
hi clear plmReserved
hi clear plm386Reserved
hi clear plmPreProc
hi clear plmCommentError
hi clear plmCommentString
hi clear plmComment2String
hi clear plmCommentSkip
hi clear plmString
hi clear plmComment
hi clear psfObject
hi clear psfAttrib
hi clear psfQuotString
hi clear psfObjTag
hi clear psfAttAbbrev
hi clear psfObjTags
hi clear psfComment
hi clear sgmllnxTag2
hi clear sgmllnxTagN2
hi clear sgmllnxTag
hi clear sgmllnxEndTag
hi clear sgmllnxParen
hi clear sgmllnxEntity
hi clear sgmllnxDocEnt
hi clear sgmllnxTagName
hi clear sgmllnxComment
hi clear sgmllnxSpecial
hi clear sgmllnxDocType
hi clear sgmllnxTagError
hi clear takMacro
hi clear takOptions
hi clear takRoutine
hi clear takControl
hi clear takSolids
hi clear takSolidsArg
hi clear takIdentifier
hi clear takFortran
hi clear takMotran
hi clear takComment
hi clear takHeader
hi clear takIncludeFile
hi clear takInteger
hi clear takFloat
hi clear takScientific
hi clear takEndData
hi clear takTodo
hi clear rrstChunkDelim
hi clear rrstInlineDelim
hi clear modsim3Keyword
hi clear modsim3Block
hi clear modsim3Comment1
hi clear modsim3Comment2
hi clear modsim3String
hi clear modsim3Literal
hi clear modsim3Include
hi clear modsim3Type
hi clear modsim3ParenError
hi clear modsim3Builtin
hi clear modsim3BuiltinNoParen
hi clear grubComment
hi clear grubTodo
hi clear grubNumbers
hi clear grubDevice
hi clear grubBlock
hi clear grubCommand
hi clear grubTitleCommand
hi clear grubTitle
hi clear grubSpecial
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear picTodo
hi clear picComment
hi clear picDirective
hi clear picLabel
hi clear picString
hi clear picASCII
hi clear picBinary
hi clear picDecimal
hi clear picHexadecimal
hi clear picOctal
hi clear picIdentifier
hi clear pinfoTodo
hi clear pinfoComment
hi clear pinfoOptions
hi clear pinfoColors
hi clear pinfoColorDefault
hi clear pinfoSpecialKeys
hi clear pinfoSimpleKey
hi clear pinfoSimpleKeyEscape
hi clear pinfoKeycode
hi clear pinfoConstants
hi clear pinfoKeys
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear 
hi clear bibType
hi clear bibEntryKw
hi clear bibNSEntryKw
hi clear bibKey
hi clear bibVariable
hi clear bibUnescapedSpecial
hi clear bibComment
hi clear bibComment2
hi clear bibComment3
hi clear cFormat
hi clear cCppString
hi clear cCommentL
hi clear cCommentStart
hi clear cLabel
hi clear cUserLabel
hi clear cConditional
hi clear cRepeat
hi clear cCharacter
hi clear cSpecialCharacter
hi clear cNumber
hi clear cOctal
hi clear cOctalZero
hi clear cFloat
hi clear cOctalError
hi clear cParenError
hi clear cErrInParen
hi clear cErrInBracket
hi clear cCommentError
hi clear cCommentStartError
hi clear cSpaceError
hi clear cSpecialError
hi clear cCurlyError
hi clear cOperator
hi clear cStructure
hi clear cStorageClass
hi clear cInclude
hi clear cPreProc
hi clear cDefine
hi clear cIncluded
hi clear cError
hi clear cStatement
hi clear cCppInWrapper
hi clear cCppOutWrapper
hi clear cPreConditMatch
hi clear cPreCondit
hi clear cType
hi clear cConstant
hi clear cCommentString
hi clear cComment2String
hi clear cCommentSkip
hi clear cString
hi clear cComment
hi clear cSpecial
hi clear cTodo
hi clear cBadContinuation
hi clear cCppOutSkip
hi clear cCppInElse2
hi clear cCppOutIf2
hi clear cCppOut
hi clear splintShortAnn
hi clear splintAnnotation
hi clear splintAnnError
hi clear splintAnnError2
hi clear splintFlag
hi clear splintGlobalFlag
hi clear splintSpecialAnnot
hi clear splintStateAnnot
hi clear splintSpecTag
hi clear splintModifies
hi clear splintRequires
hi clear splintGlobals
hi clear splintGlobitem
hi clear splintGlobannot
hi clear splintWarning
hi clear splintModitem
hi clear splintIter
hi clear splintConst
hi clear splintAlt
hi clear splintType
hi clear splintGlobalType
hi clear splintMemMgm
hi clear splintAlias
hi clear splintExposure
hi clear splintDefState
hi clear splintGlobState
hi clear splintNullState
hi clear splintNullPred
hi clear splintExit
hi clear splintExec
hi clear splintSef
hi clear splintDecl
hi clear splintCase
hi clear splintBreak
hi clear splintUnreach
hi clear splintSpecFunc
hi clear splintErrSupp
hi clear splintTypeAcc
hi clear splintMacro
hi clear splintSpecType
hi clear splintAnnKey
hi clear splintError
hi clear mibImplicit
hi clear mibOperator
hi clear mibComment
hi clear mibConstants
hi clear mibNumber
hi clear mibDescription
hi clear mibEpilogue
hi clear mibValue
hi clear tssclCommand
hi clear tssclKeyword
hi clear tssclEnd
hi clear tssclUnits
hi clear tssclComment
hi clear tssclDirective
hi clear tssclConditional
hi clear tssclContChar
hi clear tssclQualifier
hi clear tssclSymbol
hi clear tssclSymbol2
hi clear tssclString
hi clear tssclOper
hi clear tssclInteger
hi clear tssclFloat
hi clear tssclScientific
hi clear libaoTodo
hi clear libaoComment
hi clear libaoKeyword
hi clear mooUncommentedError
hi clear mooCStyleCommentError
hi clear mooCStyleComment
hi clear mooStatement
hi clear mooOperatorIn
hi clear mooAny
hi clear mooErrorConstant
hi clear mooType
hi clear mooVariable
hi clear mooStringError
hi clear mooStringSpecialChar
hi clear mooRegexpOr
hi clear mooPronounSub
hi clear mooString
hi clear mooNumber
hi clear mooObject
hi clear mooBuiltinProperty
hi clear mooBuiltinFunction
hi clear mooUnknownBuiltinFunction
hi clear mooKnownBuiltinFunction
hi clear mooCorePropOrVerb
hi clear mooUnenclosedError
hi clear mooParenthesesError
hi clear mooBracketsError
hi clear mooBracesError
hi clear mooQuestionError
hi clear mooCatchError
hi clear mooExclamation
hi clear mooComment
hi clear mooNonCode
hi clear cvsrcString
hi clear cvsrcNumber
hi clear cvsrcCommand
hi clear cvsrcOption
hi clear scalaKeyword
hi clear scalaAkkaSpecialWord
hi clear scalatestSpecialWord
hi clear scalatestShouldDSLA
hi clear scalatestShouldDSLB
hi clear scalaSymbol
hi clear scalaChar
hi clear scalaEscapedChar
hi clear scalaUnicodeChar
hi clear scalaOperator
hi clear scalaNameDefinition
hi clear scalaInstanceDeclaration
hi clear scalaInstanceHash
hi clear scalaUnimplemented
hi clear scalaCapitalWord
hi clear scalaTypeTypeDeclaration
hi clear scalaTypeTypeExtension
hi clear scalaTypeTypePostDeclaration
hi clear scalaTypeTypePostExtension
hi clear scalaTypeDeclaration
hi clear scalaTypeExtension
hi clear scalaTypePostExtension
hi clear scalaTypeAnnotation
hi clear scalaCaseFollowing
hi clear scalaKeywordModifier
hi clear scalaSpecial
hi clear scalaExternal
hi clear scalaString
hi clear scalaStringEmbeddedQuote
hi clear scalaIString
hi clear scalaTripleIString
hi clear scalaInterpolation
hi clear scalaInterpolationB
hi clear scalaFString
hi clear scalaFInterpolation
hi clear scalaFInterpolationB
hi clear scalaTripleString
hi clear scalaTripleFString
hi clear scalaInterpolationBrackets
hi clear scalaInterpolationBoundary
hi clear scalaNumber
hi clear scalaSquareBracketsBrackets
hi clear scalaTypeOperator
hi clear scalaTypeAnnotationParameter
hi clear scalaShebang
hi clear scalaMultilineComment
hi clear scalaDocLinks
hi clear scalaParameterAnnotation
hi clear scalaParamAnnotationValue
hi clear scalaCommentAnnotation
hi clear scalaCommentCodeBlockBrackets
hi clear scalaCommentCodeBlock
hi clear scalaTodo
hi clear scalaAnnotation
hi clear scalaTrailingComment
hi clear scalaAkkaFSM
hi clear scalaAkkaFSMGotoUsing
hi clear pyrexStatement
hi clear pyrexType
hi clear pyrexStructure
hi clear pyrexInclude
hi clear pyrexAccess
hi clear pyrexBuiltin
hi clear pyrexForFrom
hi clear lhsBirdTrack
hi clear beginCodeBegin
hi clear beginCodeCode
hi clear registryComment
hi clear registryHead
hi clear registryHKEY
hi clear registryPath
hi clear registryRemove
hi clear registryGUID
hi clear registrySpecial
hi clear registrySubKey
hi clear registryString
hi clear registryHex
hi clear registryDword
hi clear lessEndOfLineComment
hi clear lessCssComment
hi clear lessComment
hi clear lessDefault
hi clear lessVariable
hi clear lessFunction
hi clear lessTodo
hi clear lessInclude
hi clear lessIdChar
hi clear lessClassChar
hi clear lessAmpersand
hi clear lessId
hi clear lessClass
hi clear lessCssAttribute
hi clear lessClassCall
hi clear lessClassIdCall
hi clear lessTagName
hi clear lessDeprecated
hi clear lessMedia
hi clear dictdconfTodo
hi clear dictdconfComment
hi clear dictdconfSpecialC
hi clear dictdconfKeyword
hi clear dictdconfIdentifier
hi clear dictdconfAccess
hi clear dictdconfDatabase
hi clear dictdconfSpec
hi clear dictdconfVDatabase
hi clear dictdconfVSpec
hi clear dictdconfPDatabase
hi clear dictdconfPSpec
hi clear dictdconfUsername
hi clear dictdconfSecret
hi clear dictdconfString
hi clear dictdconfDelimiter
hi clear lftpComment
hi clear lftpTodo
hi clear lftpString
hi clear lftpNumber
hi clear lftpBoolean
hi clear lftpInterval
hi clear lftpKeywords
hi clear lftpSettingsPrefix
hi clear lftpSettings
hi clear monkSyntax
hi clear monkFunc
hi clear monkString
hi clear monkChar
hi clear monkNumber
hi clear monkBoolean
hi clear monkDelimiter
hi clear monkConstant
hi clear monkComment
hi clear monkError
hi clear archTodo
hi clear archComment
hi clear archKeyword
hi clear archTMethod
hi clear archRegex
hi clear promelaStatement
hi clear promelaType
hi clear promelaComment
hi clear promelaOperator
hi clear promelaSpecial
hi clear promelaFunctions
hi clear promelaString
hi clear promelaTodo
hi clear sdlException
hi clear sdlConditional
hi clear sdlVirtual
hi clear sdlExported
hi clear sdlCommentError
hi clear sdlOperator
hi clear sdlStructure
hi clear sdlType
hi clear sdlString
hi clear sdlComment
hi clear sdlSpecial
hi clear sdlError
hi clear ctermStatement
hi clear ctermFunction
hi clear ctermStrFunction
hi clear ctermIntFunction
hi clear ctermLabel
hi clear ctermConditional
hi clear ctermRepeat
hi clear ctermLibFunc
hi clear ctermType
hi clear ctermFuncArg
hi clear ctermPreVarRO
hi clear ctermPreVarRW
hi clear ctermVar
hi clear ctermComment
hi clear ctermCharacter
hi clear ctermSpecial
hi clear ctermSpecialCharacter
hi clear ctermSymbols
hi clear ctermString
hi clear ctermTodo
hi clear ctermOperator
hi clear ctermNumber
hi clear upstreaminstalllog_Date
hi clear upstreaminstalllog_MsgD
hi clear upstreaminstalllog_MsgE
hi clear upstreaminstalllog_MsgW
hi clear upstreaminstalllog_IPaddr
hi clear sqlDashComment
hi clear sqlSlashComment
hi clear sqlMultiComment
hi clear sqlNumber
hi clear sqlOperator
hi clear sqlSpecial
hi clear sqlKeyword
hi clear sqlStatement
hi clear sqlString
hi clear sqlType
hi clear sqlFunction
hi clear sqlOption
hi clear asm68kComment
hi clear asm68kTodo
hi clear hexNumber
hi clear octNumber
hi clear binNumber
hi clear decNumber
hi clear floatNumber
hi clear floatExponent
hi clear floatE
hi clear asm68kImmediate
hi clear asm68kString
hi clear asm68kCharError
hi clear asm68kStringError
hi clear asm68kReg
hi clear asm68kOperator
hi clear asm68kInclude
hi clear asm68kMacro
hi clear asm68kMacroParam
hi clear asm68kDirective
hi clear asm68kPreCond
hi clear asm68kOpcode
hi clear asm68kCond
hi clear asm68kRepeat
hi clear asm68kLabel
hi clear cfTagName
hi clear cfCustomTagName
hi clear cfArg
hi clear cfFunctionName
hi clear cfHashRegion
hi clear cfComment
hi clear cfCommentTodo
hi clear cfOperator
hi clear cfOperatorMatch
hi clear cfScope
hi clear cfBool
hi clear cfscriptBlock
hi clear cfscriptTag
hi clear cfSetRegion
hi clear cfSetLHSRegion
hi clear cfSetTagEnd
hi clear cfScriptLineComment
hi clear cfScriptComment
hi clear cfScriptStringS
hi clear cfScriptStringD
hi clear cfScriptNumber
hi clear cfScriptConditional
hi clear cfScriptRepeat
hi clear cfScriptBranch
hi clear cfScriptSpecial
hi clear cfScriptStatement
hi clear cfScriptBraces
hi clear cfScriptKeyword
hi clear cfScriptError
hi clear cfDeprecatedTag
hi clear cfDeprecatedFunction
hi clear cfScrParenError
hi clear cfqueryTag
hi clear sendprComment
hi clear sendprType
hi clear sendprString
hi clear sendprLabel
hi clear poCommentSources
hi clear poComment
hi clear poCommentAutomatic
hi clear poCommentTranslator
hi clear poCommentFlags
hi clear poCommentDiff
hi clear poCopyrightUnset
hi clear poFlagFuzzy
hi clear poDiffOld
hi clear poDiffNew
hi clear poObsolete
hi clear poStatementMsgid
hi clear poStatementMsgstr
hi clear poStatementMsgidplural
hi clear poStatementMsgCTxt
hi clear poPluralCaseN
hi clear poStringCTxt
hi clear poStringID
hi clear poStringSTR
hi clear poCommentKDE
hi clear poCommentKDEError
hi clear poPluralKDE
hi clear poPluralKDEError
hi clear poHeaderItem
hi clear poHeaderUndefined
hi clear poKDEdesktopFile
hi clear poHtml
hi clear poHtmlNot
hi clear poHtmlTranslatables
hi clear poLineBreak
hi clear poFormat
hi clear poSpecial
hi clear poAcceleratorId
hi clear poAcceleratorStr
hi clear poVariable
hi clear poMsguniqError
hi clear poMsguniqErrorMarkers
hi clear aveStatement
hi clear aveString
hi clear aveNumber
hi clear aveFixVariables
hi clear aveVariables
hi clear globalVariables
hi clear aveConst
hi clear aveClassMethods
hi clear aveOperator
hi clear aveComment
hi clear aveTypos
hi clear tliNumber
hi clear tliString
hi clear tliComment
hi clear tliSpecial
hi clear tliIdentifier
hi clear tliObject
hi clear tliField
hi clear tliStyle
hi clear arduinoType
hi clear arduinoConstant
hi clear arduinoStdFunc
hi clear arduinoFunc
hi clear arduinoMethod
hi clear arduinoModule
hi clear dslTodo
hi clear dslString
hi clear dslComment
hi clear dslCondDelim
hi clear apacheAllowOverride
hi clear apacheAllowOverrideValue
hi clear apacheAuthType
hi clear apacheAuthTypeValue
hi clear apacheOptionOption
hi clear apacheDeclaration
hi clear apacheAnything
hi clear apacheOption
hi clear apacheComment
hi clear apacheFixme
hi clear apacheLimitSectionKeyword
hi clear apacheLimitSection
hi clear apacheSection
hi clear apacheMethodOption
hi clear apacheAllowDeny
hi clear apacheAllowDenyValue
hi clear apacheOrder
hi clear apacheOrderValue
hi clear apacheString
hi clear apacheError
hi clear apacheUserID
hi clear tppAbstractOptionKey
hi clear tppPageLocalOptionKey
hi clear tppPageLocalSwitchKey
hi clear tppColorOptionKey
hi clear tppTimeOptionKey
hi clear tppNewPageOptionKey
hi clear tppString
hi clear tppColor
hi clear tppTime
hi clear tppComment
hi clear tppAbstractOption
hi clear tppPageLocalOption
hi clear tppPageLocalSwitch
hi clear tppColorOption
hi clear tppNewPageOption
hi clear tppTimeOption
hi clear indentError
hi clear indentComment
hi clear indentTodo
hi clear indentOptions
hi clear indentNumber
hi clear indentIdent
hi clear pdfOperator
hi clear pdfNumber
hi clear pdfFloat
hi clear pdfBoolean
hi clear pdfConstant
hi clear pdfName
hi clear pdfNameError
hi clear pdfHexString
hi clear pdfHexError
hi clear pdfString
hi clear pdfStringError
hi clear pdfSpecialChar
hi clear pdfDelimiter
hi clear pdfType
hi clear pdfReference
hi clear pdfStream
hi clear pdfPreProc
hi clear pdfComment
hi clear texmfComment
hi clear texmfTodo
hi clear texmfPassedParameter
hi clear texmfVariable
hi clear texmfNumber
hi clear texmfString
hi clear texmfLHSStart
hi clear texmfLHSVariable
hi clear texmfLHSDot
hi clear texmfLHS
hi clear texmfEquals
hi clear texmfBraceBrace
hi clear texmfComma
hi clear texmfColons
hi clear texmfDelimiter
hi clear texmfDoubleExclam
hi clear texmfSpecial
hi clear texmfBraceError
hi clear texmfError
hi clear masterKeyword
hi clear masterComment
hi clear masterString
hi clear mfBoolExp
hi clear mfNumExp
hi clear mfPairExp
hi clear mfPathExp
hi clear mfPenExp
hi clear mfPicExp
hi clear mfStringExp
hi clear mfInternal
hi clear mfCommand
hi clear mfType
hi clear mfStatement
hi clear mfDefinition
hi clear mfCondition
hi clear mfPrimitive
hi clear mfDef
hi clear mfVardef
hi clear mfPrimaryDef
hi clear mfSecondaryDef
hi clear mfTertiaryDef
hi clear mfCoord
hi clear mfPoint
hi clear mfNumeric
hi clear mfLength
hi clear mfComment
hi clear mfString
hi clear mfOpenString
hi clear mfSuffixParam
hi clear mfNewInternal
hi clear mfVariable
hi clear mfConstant
hi clear mfTodoComment
hi clear veraClass
hi clear veraObject
hi clear veraUserMethod
hi clear veraTask
hi clear veraModifier
hi clear veraDeprecated
hi clear veraMethods
hi clear veraInterface
hi clear veraFormat
hi clear veraCppString
hi clear veraCommentL
hi clear veraCommentStart
hi clear veraLabel
hi clear veraUserLabel
hi clear veraConditional
hi clear veraRepeat
hi clear veraCharacter
hi clear veraSpecialCharacter
hi clear veraNumber
hi clear veraOctal
hi clear veraOctalZero
hi clear veraFloat
hi clear veraOctalError
hi clear veraParenError
hi clear veraErrInParen
hi clear veraErrInBracket
hi clear veraCommentError
hi clear veraCommentStartError
hi clear veraSpaceError
hi clear veraSpecialError
hi clear veraOperator
hi clear veraStructure
hi clear veraInclude
hi clear veraPreProc
hi clear veraDefine
hi clear veraIncluded
hi clear veraError
hi clear veraStatement
hi clear veraPreCondit
hi clear veraType
hi clear veraConstant
hi clear veraUserConstant
hi clear veraCommentString
hi clear veraComment2String
hi clear veraCommentSkip
hi clear veraString
hi clear veraComment
hi clear veraSpecial
hi clear veraTodo
hi clear veraCppSkip
hi clear veraCppOut2
hi clear veraCppOut
hi clear pineConfig
hi clear pineComment
hi clear pineOption
hi clear ldTodo
hi clear ldComment
hi clear ldFileName
hi clear ldPreProc
hi clear ldFunction
hi clear ldKeyword
hi clear ldType
hi clear ldDataType
hi clear ldOutputType
hi clear ldPTType
hi clear ldSpecial
hi clear ldIdentifier
hi clear ldSections
hi clear ldSpecSections
hi clear ldNumber
hi clear ldNumberMult
hi clear ldOctal
hi clear ldOctalZero
hi clear ldOctalError
hi clear basicLabel
hi clear basicConditional
hi clear basicRepeat
hi clear basicLineNumber
hi clear basicNumber
hi clear basicError
hi clear basicStatement
hi clear basicString
hi clear basicComment
hi clear basicSpecial
hi clear basicTodo
hi clear basicFunction
hi clear basicTypeSpecifier
hi clear basicFilenumber
hi clear vhdlSpecial
hi clear vhdlStatement
hi clear vhdlCharacter
hi clear vhdlString
hi clear vhdlVector
hi clear vhdlBoolean
hi clear vhdlTodo
hi clear vhdlFixme
hi clear vhdlComment
hi clear vhdlNumber
hi clear vhdlTime
hi clear vhdlType
hi clear vhdlOperator
hi clear vhdlError
hi clear vhdlAttribute
hi clear vhdlPreProc
hi clear fsOperator
hi clear fsComment
hi clear fsCommentLine
hi clear fsTypeKeyword
hi clear fsDeviceKeyword
hi clear fsDeviceLabel
hi clear fsDeviceUUID
hi clear fsDeviceSshfs
hi clear fsFreqPassNumber
hi clear fsTypeUnknown
hi clear fsDeviceError
hi clear fsMountPointError
hi clear fsMountPointKeyword
hi clear fsFreqPassError
hi clear fsOptionsGeneral
hi clear fsOptionsKeywords
hi clear fsOptionsNumber
hi clear fsOptionsNumberOctal
hi clear fsOptionsString
hi clear fsOptionsSize
hi clear fsOptionsExt2Check
hi clear fsOptionsExt2Errors
hi clear fsOptionsExt3Journal
hi clear fsOptionsExt3Data
hi clear fsOptionsExt4Journal
hi clear fsOptionsExt4Data
hi clear fsOptionsExt4Barrier
hi clear fsOptionsFatCheck
hi clear fsOptionsConv
hi clear fsOptionsFatType
hi clear fsOptionsYesNo
hi clear fsOptionsHpfsCase
hi clear fsOptionsIsoMap
hi clear fsOptionsReiserHash
hi clear fsOptionsSshYesNoAsk
hi clear fsOptionsUfsType
hi clear fsOptionsUfsError
hi clear fsOptionsVfatShortname
hi clear gitoliteGroup
hi clear gitoliteComment
hi clear gitoliteTodo
hi clear gitoliteRepoError
hi clear gitoliteGroupLine
hi clear gitoliteRepo
hi clear gitoliteSpecialRepo
hi clear gitoliteRule
hi clear gitoliteCreateRule
hi clear gitoliteDenyRule
hi clear gitoliteRefex
hi clear gitoliteSpecialRefex
hi clear gitoliteConfigKW
hi clear gitoliteConfigKey
hi clear gitoliteConfigVal
hi clear gitoliteTplRepo
hi clear gitoliteTplTemplates
hi clear gitoliteTplRole
hi clear gitoliteTplError
hi clear framescriptTodo
hi clear framescriptComment
hi clear framescriptCommentStart
hi clear framescriptInclude
hi clear framescriptIncluded
hi clear framescriptBoolean
hi clear framescriptNumber
hi clear framescriptInteger
hi clear framescriptReal
hi clear framescriptMetric
hi clear framescriptCharacter
hi clear framescriptString
hi clear framescriptStringSpecialChar
hi clear framescriptConstant
hi clear framescriptOperator
hi clear framescriptSessionVariables
hi clear framescriptStructure
hi clear framescriptStatement
hi clear framescriptSubStatement
hi clear framescriptApplySubStatement
hi clear framescriptClearSubStatement
hi clear framescriptCloseSubStatement
hi clear framescriptExecSubStatement
hi clear framescriptExecuteSubStatement
hi clear framescriptGenerateSubStatement
hi clear framescriptGetSubStatement
hi clear framescriptImportSubStatement
hi clear framescriptInstallSubStatement
hi clear framescriptNewSubStatement
hi clear framescriptOpenSubStatement
hi clear framescriptPrintSubStatement
hi clear framescriptQuitSubStatement
hi clear framescriptRemoveSubStatement
hi clear framescriptSaveSubStatement
hi clear framescriptSelectSubStatement
hi clear framescriptStraddleSubStatement
hi clear framescriptUpdateSubStatement
hi clear framescriptRepeat
hi clear framescriptConditional
hi clear framescriptType
hi clear debcontrolKey
hi clear debcontrolField
hi clear debcontrolStrictField
hi clear debcontrolDeprecatedKey
hi clear debcontrolMultiField
hi clear debcontrolArchitecture
hi clear debcontrolMultiArch
hi clear debcontrolName
hi clear debcontrolPriority
hi clear debcontrolSection
hi clear debcontrolPackageType
hi clear debcontrolVariable
hi clear debcontrolEmail
hi clear debcontrolVcsSvn
hi clear debcontrolVcsCvs
hi clear debcontrolVcsGit
hi clear debcontrolHTTPUrl
hi clear debcontrolDmUpload
hi clear debcontrolComment
hi clear debcontrolElse
hi clear nsisInstruction
hi clear nsisComment
hi clear nsisLocalLabel
hi clear nsisGlobalLabel
hi clear nsisStatement
hi clear nsisString
hi clear nsisBoolean
hi clear nsisAttribOptions
hi clear nsisExecShell
hi clear nsisFileAttrib
hi clear nsisMessageBox
hi clear nsisRegistry
hi clear nsisNumber
hi clear nsisError
hi clear nsisUserVar
hi clear nsisSysVar
hi clear nsisAttribute
hi clear nsisCompiler
hi clear nsisTodo
hi clear nsisCallback
hi clear nsisPreprocSubst
hi clear nsisDefine
hi clear nsisMacro
hi clear nsisPreCondit
hi clear nsisInclude
hi clear nsisSystem
hi clear pascalAcces
hi clear pascalBoolean
hi clear pascalComment
hi clear pascalConditional
hi clear pascalConstant
hi clear pascalDelimiter
hi clear pascalDirective
hi clear pascalException
hi clear pascalFloat
hi clear pascalFunction
hi clear pascalLabel
hi clear pascalMatrixDelimiter
hi clear pascalModifier
hi clear pascalNumber
hi clear pascalOperator
hi clear pascalPredefined
hi clear pascalPreProc
hi clear pascalRepeat
hi clear pascalSpaceError
hi clear pascalStatement
hi clear pascalString
hi clear pascalStringEscape
hi clear pascalStringEscapeGPC
hi clear pascalStringError
hi clear pascalStruct
hi clear pascalSymbolOperator
hi clear pascalTodo
hi clear pascalType
hi clear pascalUnclassified
hi clear pascalError
hi clear pascalAsmKey
hi clear pascalShowTab
hi clear pilrcKeyword
hi clear pilrcType
hi clear pilrcError
hi clear pilrcCountry
hi clear pilrcLanguage
hi clear pilrcString
hi clear pilrcNumber
hi clear pilrcComment
hi clear pilrcConstant
hi clear pilrcFunction
hi clear pilrcInclude
hi clear pilrcIdentifier
hi clear slpregTodo
hi clear slpregComment
hi clear slpregServiceURL
hi clear slpregServiceType
hi clear slpregServiceSAPCol
hi clear slpregSAP
hi clear slpregDelimiter
hi clear slpregLangSep
hi clear slpregLang
hi clear slpregLTimeSep
hi clear slpregLTime
hi clear slpregType
hi clear slpregScopes
hi clear slpregScopesEq
hi clear slpregScopeName
hi clear slpregScopeNameSep
hi clear slpregAttribute
hi clear slpregAttributeEq
hi clear slpregAttrSValue
hi clear slpregAttrSSValue
hi clear slpregAttrIValue
hi clear slpregAttrBValue
hi clear slpregAttrValueSep
hi clear bcKeyword
hi clear bcType
hi clear bcConstant
hi clear bcNumber
hi clear bcComment
hi clear bcString
hi clear bcSpecialChar
hi clear bcParenError
hi clear gedcom_record
hi clear gedcom_id
hi clear gedcom_ii
hi clear gedcom_in
hi clear gedcom_name
hi clear gedcom_cname
hi clear gedcom_surname
hi clear gedcom_date
hi clear tidyAutoBooleanOption
hi clear tidyBooleanOption
hi clear tidyCSSSelectorOption
hi clear tidyDoctypeOption
hi clear tidyEncodingOption
hi clear tidyIntegerOption
hi clear tidyNameOption
hi clear tidyNewlineOption
hi clear tidyTagsOption
hi clear tidyRepeatOption
hi clear tidySorterOption
hi clear tidyStringOption
hi clear tidyAutoBooleanDelimiter
hi clear tidyBooleanDelimiter
hi clear tidyCSSSelectorDelimiter
hi clear tidyDoctypeDelimiter
hi clear tidyEncodingDelimiter
hi clear tidyIntegerDelimiter
hi clear tidyNameDelimiter
hi clear tidyNewlineDelimiter
hi clear tidyTagsDelimiter
hi clear tidyRepeatDelimiter
hi clear tidySorterDelimiter
hi clear tidyStringDelimiter
hi clear tidyAutoBoolean
hi clear tidyBoolean
hi clear tidyDoctype
hi clear tidyEncoding
hi clear tidyNewline
hi clear tidyTags
hi clear tidyNumber
hi clear tidyRepeat
hi clear tidySorter
hi clear tidyString
hi clear tidyComment
hi clear tidyTodo
hi clear xmlRegion
hi clear csType
hi clear csStorage
hi clear csRepeat
hi clear csConditional
hi clear csLabel
hi clear csModifier
hi clear csConstant
hi clear csException
hi clear csUnspecifiedStatement
hi clear csUnsupportedStatement
hi clear csUnspecifiedKeyword
hi clear csContextualStatement
hi clear csOperatorError
hi clear csTodo
hi clear csComment
hi clear csSpecialError
hi clear csSpecialCharError
hi clear csString
hi clear csVerbatimString
hi clear csVerbatimSpec
hi clear csPreCondit
hi clear csCharacter
hi clear csSpecialChar
hi clear csNumber
hi clear csUnicodeNumber
hi clear csUnicodeSpecifier
hi clear csXmlCommentLeader
hi clear csXmlComment
hi clear csXmlTag
hi clear snobol4Constant
hi clear snobol4Label
hi clear snobol4Goto
hi clear snobol4Conditional
hi clear snobol4Repeat
hi clear snobol4Number
hi clear snobol4Error
hi clear snobol4Statement
hi clear snobol4BogusStatement
hi clear snobol4String
hi clear snobol4Comment
hi clear snobol4Special
hi clear snobol4Todo
hi clear snobol4Keyword
hi clear snobol4Function
hi clear snobol4MathsOperator
hi clear snobol4ParenError
hi clear snobol4ErrInParen
hi clear snobol4ErrInBracket
hi clear snobol4SysVar
hi clear snobol4BogusSysVar
hi clear snobol4ExtSysVar
hi clear snobol4ExtKeyword
hi clear snobol4ExtSysVar
hi clear snobol4ExtKeyword
hi clear gdmoCategory
hi clear gdmoRelationship
hi clear gdmoDefinition
hi clear gdmoReference
hi clear gdmoExtension
hi clear gdmoBraces
hi clear gdmoSpecial
hi clear gdmoString
hi clear gdmoCharacter
hi clear gdmoSpecialCharacter
hi clear gdmoComment
hi clear gdmoLineComment
hi clear gdmoType
hi clear sindacmpTitle
hi clear sindacmpUnit
hi clear sindacmpLabel
hi clear sindacmpHeader
hi clear sindacmpInteger
hi clear sindacmpFloat
hi clear sliceComment
hi clear sliceConstruct
hi clear sliceType
hi clear sliceString
hi clear sliceIncluded
hi clear sliceQualifier
hi clear sliceInclude
hi clear sliceGuard
hi clear sliceBoolean
hi clear sliceFloat
hi clear sliceNumber
hi clear sliceOctal
hi clear sliceOctalZero
hi clear sliceNumberError
hi clear masmLabel
hi clear masmComment
hi clear masmDirective
hi clear masmType
hi clear masmOperator
hi clear masmOption
hi clear masmRegister
hi clear masmString
hi clear masmText
hi clear masmTitle
hi clear masmOpcode
hi clear masmOpFloat
hi clear masmHexadecimal
hi clear masmDecimal
hi clear masmOctal
hi clear masmBinary
hi clear masmFloatRaw
hi clear masmFloat
hi clear masmIdentifier
hi clear systemverilogStatement
hi clear systemverilogTypeDef
hi clear systemverilogConditional
hi clear systemverilogRepeat
hi clear systemverilogLabel
hi clear systemverilogGlobal
hi clear systemverilogNumber
hi clear lpcModifier
hi clear lpcQuotedFmt
hi clear lpcFormat
hi clear lpcCppString
hi clear lpcCommentL
hi clear lpcCommentStart
hi clear lpcUserLabel
hi clear lpcSpecialCharacter
hi clear lpcOctal
hi clear lpcOctalZero
hi clear lpcEfunError
hi clear lpcKeywdError
hi clear lpcOctalError
hi clear lpcParenError
hi clear lpcErrInParen
hi clear lpcErrInBracket
hi clear lpcCommentError
hi clear lpcCommentStartError
hi clear lpcSpaceError
hi clear lpcSpecialError
hi clear lpcErrFunc
hi clear lpc_efuns
hi clear lpcReserved
hi clear lpcTextString
hi clear lpcArrayString
hi clear lpcIncluded
hi clear lpcCommentString
hi clear lpcComment2String
hi clear lpcCommentSkip
hi clear lpcCommentFunc
hi clear lpcCppSkip
hi clear lpcCppOut2
hi clear lpcCppOut
hi clear lpcApplies
hi clear lpcCharacter
hi clear lpcComment
hi clear lpcConditional
hi clear lpcConstant
hi clear lpcDefine
hi clear lpcError
hi clear lpcFloat
hi clear lpcFunction
hi clear lpcIdentifier
hi clear lpcInclude
hi clear lpcLabel
hi clear lpcNumber
hi clear lpcOperator
hi clear lpcPreCondit
hi clear lpcPreProc
hi clear lpcRepeat
hi clear lpcStatement
hi clear lpcStorageClass
hi clear lpcString
hi clear lpcStructure
hi clear lpcSpecial
hi clear lpcTodo
hi clear lpcType
hi clear mallardComment
hi clear mallardTagName
hi clear mallardTitle
hi clear mallardEmphasis
hi clear antElement
hi clear zimbuBasicType
hi clear zimbuCompType
hi clear zimbuType
hi clear zimbuStatement
hi clear zimbuOperator
hi clear zimbuMethod
hi clear zimbuModule
hi clear zimbuImport
hi clear zimbuUses
hi clear zimbuBlockgc
hi clear zimbuAttribute
hi clear zimbuString
hi clear zimbuLongString
hi clear zimbuChar
hi clear zimbuFixed
hi clear zimbuComment
hi clear zimbuCommentStart
hi clear zimbuBlockComment
hi clear zimbuCblock
hi clear zimbuTodo
hi clear zimbuParam
hi clear zimbuCode
hi clear zimbuNoBar
hi clear zimbuNoBacktick
hi clear zimbuSpaceError
hi clear zimbuError
hi clear sdcCollections
hi clear sdcObjectsInfo
hi clear sdcCreateOperations
hi clear sdcObjectsQuery
hi clear sdcConstraints
hi clear sdcNonIdealities
hi clear sdcFlags
hi clear sensorsTodo
hi clear sensorsComment
hi clear sensorsKeyword
hi clear sensorsName
hi clear sensorsNameSpecial
hi clear sensorsLineContinue
hi clear sensorsNumber
hi clear sensorsRealWorld
hi clear sensorsOperator
hi clear sensorsDelimiter
hi clear snnsresGen
hi clear snnsresHeader
hi clear snnsresNoHeader
hi clear snnsresNumbers
hi clear snnsresComment
hi clear snnsresTodo
hi clear msqlComment
hi clear msqlString
hi clear msqlNumber
hi clear msqlFloat
hi clear msqlIdentifier
hi clear msqlGlobalIdentifier
hi clear msqlIntVar
hi clear msqlEnvVar
hi clear msqlFunctions
hi clear msqlRepeat
hi clear msqlConditional
hi clear msqlStatement
hi clear msqlType
hi clear msqlInclude
hi clear msqlDefine
hi clear msqlSpecialChar
hi clear msqlParentError
hi clear msqlTodo
hi clear msqlOperator
hi clear msqlRelation
hi clear passwdColon
hi clear passwdAccount
hi clear passwdPasswordColon
hi clear passwdPassword
hi clear passwdShadow
hi clear passwdUIDColon
hi clear passwdUID
hi clear passwdGIDColon
hi clear passwdGID
hi clear passwdGecosColon
hi clear passwdGecos
hi clear passwdDirColon
hi clear passwdDir
hi clear passwdShellColon
hi clear passwdShell
hi clear yamlTodo
hi clear yamlComment
hi clear yamlDocumentStart
hi clear yamlDocumentEnd
hi clear yamlDirectiveName
hi clear yamlTAGDirective
hi clear yamlTagHandle
hi clear yamlTagPrefix
hi clear yamlYAMLDirective
hi clear yamlReservedDirective
hi clear yamlYAMLVersion
hi clear yamlString
hi clear yamlFlowString
hi clear yamlFlowStringDelimiter
hi clear yamlEscape
hi clear yamlSingleEscape
hi clear yamlBlockCollectionItemStart
hi clear yamlBlockMappingKey
hi clear yamlBlockMappingMerge
hi clear yamlFlowMappingKey
hi clear yamlFlowMappingMerge
hi clear yamlMappingKeyStart
hi clear yamlFlowIndicator
hi clear yamlKeyValueDelimiter
hi clear yamlConstant
hi clear yamlNull
hi clear yamlBool
hi clear yamlAnchor
hi clear yamlAlias
hi clear yamlNodeTag
hi clear yamlInteger
hi clear yamlFloat
hi clear yamlTimestamp
hi clear poviniSection
hi clear poviniComment
hi clear poviniDeclare
hi clear poviniShellOut
hi clear poviniIncludeLabel
hi clear poviniKeyword
hi clear poviniShellOutSpecial
hi clear poviniIncludedFile
hi clear poviniInclude
hi clear poviniOption
hi clear poviniBool
hi clear poviniNumber
hi clear udevrulesTodo
hi clear udevrulesComment
hi clear udevrulesRuleKey
hi clear udevrulesDelimiter
hi clear udevrulesAssignKey
hi clear udevrulesPath
hi clear udevrulesVariable
hi clear udevrulesAttrKey
hi clear udevrulesEq
hi clear udevrulesRuleEq
hi clear udevrulesEStringEq
hi clear udevrulesOptionsEq
hi clear udevrulesEString
hi clear udevrulesStrEscapes
hi clear udevrulesStrNumber
hi clear udevrulesStrVars
hi clear udevrulesString
hi clear udevrulesPattern
hi clear udevrulesPatRange
hi clear udevrulesOptions
hi clear udevrulesOption
hi clear udevrulesOptionSep
hi clear udevrulesImportType
hi clear servicesTodo
hi clear servicesComment
hi clear servicesName
hi clear servicesPort
hi clear servicesPPDiv
hi clear servicesPPDivDepr
hi clear servicesProtocol
hi clear servicesAliases
hi clear simulaAssigned
hi clear simulaBoolean
hi clear simulaCharacter
hi clear simulaCharError
hi clear simulaComment
hi clear simulaCompound
hi clear simulaConditional
hi clear simulaConstant
hi clear simulaFunction
hi clear simulaNumber
hi clear simulaOperator
hi clear simulaReal
hi clear simulaReferenceType
hi clear simulaRepeat
hi clear simulaReserved
hi clear simulaSemicolon
hi clear simulaSpecial
hi clear simulaSpecialChar
hi clear simulaSpecialCharErr
hi clear simulaStatement
hi clear simulaStorageClass
hi clear simulaString
hi clear simulaStructure
hi clear simulaTodo
hi clear simulaType
hi clear jgraphComment
hi clear jgraphCmd
hi clear jgraphType
hi clear jgraphNumber
hi clear apComment
hi clear apOption
hi clear apTag
hi clear apTagOption
hi clear apTagError
hi clear m4Delimiter
hi clear m4Comment
hi clear m4Function
hi clear m4Keyword
hi clear m4Special
hi clear m4String
hi clear m4Statement
hi clear m4Preproc
hi clear m4Type
hi clear m4Special
hi clear m4Variable
hi clear m4Constants
hi clear m4Builtin
hi clear povComment
hi clear povTodo
hi clear povNumber
hi clear povString
hi clear povFileOpen
hi clear povConsts
hi clear povDotItem
hi clear povBMPType
hi clear povCharset
hi clear povDensityType
hi clear povFontType
hi clear povOpenType
hi clear povSpecialChar
hi clear povSpecial
hi clear povConditionalDir
hi clear povLabelDir
hi clear povDeclareDir
hi clear povDeclareOption
hi clear povIncludeDir
hi clear povFileDir
hi clear povFileDataType
hi clear povMessageDir
hi clear povAppearance
hi clear povObjects
hi clear povGlobalSettings
hi clear povDescriptors
hi clear povJuliaFunctions
hi clear povModifiers
hi clear povFunctions
hi clear povCommands
hi clear povTransform
hi clear povCSG
hi clear povParenError
hi clear povBraceError
hi clear povCommentError
hi clear povError
hi clear changeFromMaterial
hi clear changeToMaterial
hi clear purifyLogFIU
hi clear purifyLogMAF
hi clear purifyLogMIU
hi clear purifyLogSIG
hi clear purifyLogWPF
hi clear purifyLogWPM
hi clear purifyLogWPN
hi clear purifyLogWPR
hi clear purifyLogWPW
hi clear purifyLogWPX
hi clear purifyLogABR
hi clear purifyLogBSR
hi clear purifyLogBSW
hi clear purifyLogFMR
hi clear purifyLogMLK
hi clear purifyLogMSE
hi clear purifyLogPAR
hi clear purifyLogPLK
hi clear purifyLogSBR
hi clear purifyLogSOF
hi clear purifyLogUMC
hi clear purifyLogUMR
hi clear purifyLogABW
hi clear purifyLogBRK
hi clear purifyLogFMW
hi clear purifyLogFNH
hi clear purifyLogFUM
hi clear purifyLogMRE
hi clear purifyLogSBW
hi clear purifyLogCOR
hi clear purifyLogNPR
hi clear purifyLogNPW
hi clear purifyLogZPR
hi clear purifyLogZPW
hi clear purifyLogHeader
hi clear purifyLogInformational
hi clear purifyLogWarning
hi clear purifyLogCorrupting
hi clear purifyLogFatal
hi clear objcPreProcMacro
hi clear objcPrincipalType
hi clear objcUsefulTerm
hi clear objcImport
hi clear objcImported
hi clear objcObjDef
hi clear objcProtocol
hi clear objcProperty
hi clear objcIvarScope
hi clear objcInternalRep
hi clear objcException
hi clear objcThread
hi clear objcPool
hi clear objcModuleImport
hi clear objcSpecial
hi clear objcString
hi clear objcHiddenArgument
hi clear objcBlocksQualifier
hi clear objcObjectLifetimeQualifier
hi clear objcTollFreeBridgeQualifier
hi clear objcRemoteMessagingQualifier
hi clear objcStorageClass
hi clear objcFastEnumKeyword
hi clear objcLiteralSyntaxNumber
hi clear objcLiteralSyntaxChar
hi clear objcLiteralSyntaxSpecialChar
hi clear objcLiteralSyntaxOp
hi clear objcDeclPropAccessorName
hi clear objcDeclPropAccessorType
hi clear objcDeclPropAssignSemantics
hi clear objcDeclPropAtomicity
hi clear objcDeclPropARC
hi clear objcDeclPropNullable
hi clear objcDeclPropNonnull
hi clear objcDeclPropNullUnspecified
hi clear objcDeclProcNullResettable
hi clear objcInstanceMethod
hi clear objcClassMethod
hi clear objcType
hi clear objcClass
hi clear objcTypeSpecifier
hi clear objcMacro
hi clear objcEnum
hi clear objcEnumValue
hi clear objcExceptionValue
hi clear objcNotificationValue
hi clear objcConstVar
hi clear objcTypeInfoParams
hi clear ayaccBrkt
hi clear ayaccKey
hi clear ayaccOper
hi clear ayaccUnionStart
hi clear ayaccCurly
hi clear ayaccCurlyError
hi clear ayaccDefinition
hi clear ayaccDelim
hi clear ayaccKeyActn
hi clear ayaccSectionSep
hi clear ayaccSep
hi clear ayaccStmt
hi clear ayaccType
hi clear Delimiter
hi clear helpIgnore
hi clear helpHyperTextJump
hi clear helpBar
hi clear helpBacktick
hi clear helpStar
hi clear helpHyperTextEntry
hi clear helpHeadline
hi clear helpHeader
hi clear helpSectionDelim
hi clear helpVim
hi clear helpCommand
hi clear helpExample
hi clear helpOption
hi clear helpSpecial
hi clear helpNote
hi clear helpWarning
hi clear helpDeprecated
hi clear helpComment
hi clear helpConstant
hi clear helpString
hi clear helpCharacter
hi clear helpNumber
hi clear helpBoolean
hi clear helpFloat
hi clear helpIdentifier
hi clear helpFunction
hi clear helpStatement
hi clear helpConditional
hi clear helpRepeat
hi clear helpLabel
hi clear helpOperator
hi clear helpKeyword
hi clear helpException
hi clear helpPreProc
hi clear helpInclude
hi clear helpDefine
hi clear helpMacro
hi clear helpPreCondit
hi clear helpType
hi clear helpStorageClass
hi clear helpStructure
hi clear helpTypedef
hi clear helpSpecialChar
hi clear helpTag
hi clear helpDelimiter
hi clear helpSpecialComment
hi clear helpDebug
hi clear helpUnderlined
hi clear helpError
hi clear helpTodo
hi clear helpURL
hi clear artinstance
hi clear artglobalvar
hi clear artignore
hi clear artspform
hi clear artvariable
hi clear plaintexOperator
hi clear plaintexDelimiter
hi clear plaintexControlSequence
hi clear plaintexComment
hi clear plaintexInclude
hi clear plaintexRepeat
hi clear plaintexCommand
hi clear plaintexBoxCommand
hi clear plaintexCharacterCommand
hi clear plaintexDebuggingCommand
hi clear plaintexFontsCommand
hi clear plaintexGlueCommand
hi clear plaintexInsertsCommand
hi clear plaintexJobCommand
hi clear plaintexKernCommand
hi clear plaintexMacroCommand
hi clear plaintexPageCommand
hi clear plaintexParagraphCommand
hi clear plaintexPenaltiesCommand
hi clear plaintexRegistersCommand
hi clear plaintexTablesCommand
hi clear plaintexMath
hi clear plaintexMathCommand
hi clear plaintexMathBoxCommand
hi clear plaintexMathCharacterCommand
hi clear plaintexMathDelimiter
hi clear plaintexMathFontsCommand
hi clear plaintexMathLetter
hi clear plaintexMathSymbol
hi clear plaintexMathFunction
hi clear plaintexMathOperator
hi clear plaintexMathPunctuation
hi clear plaintexMathRelation
hi clear plaintexParameterDimen
hi clear plaintexMathParameterDimen
hi clear plaintexParagraphParameterGlue
hi clear plaintexFontParameterInteger
hi clear plaintexJobParameterInteger
hi clear plaintexPageParameterInteger
hi clear plaintexPageParameterToken
hi clear prologComment
hi clear prologCComment
hi clear prologCharCode
hi clear prologKeyword
hi clear prologClauseHead
hi clear prologClause
hi clear prologKeyword
hi clear prologClauseHead
hi clear prologClause
hi clear prologQuestion
hi clear prologSpecialCharacter
hi clear prologNumber
hi clear prologAsIs
hi clear prologCommentError
hi clear prologAtom
hi clear prologString
hi clear prologOperator
hi clear gitcommitSummary
hi clear gitcommitComment
hi clear gitcommitUntracked
hi clear gitcommitDiscarded
hi clear gitcommitSelected
hi clear gitcommitUnmerged
hi clear gitcommitOnBranch
hi clear gitcommitBranch
hi clear gitcommitNoBranch
hi clear gitcommitDiscardedType
hi clear gitcommitSelectedType
hi clear gitcommitUnmergedType
hi clear gitcommitType
hi clear gitcommitNoChanges
hi clear gitcommitHeader
hi clear gitcommitUntrackedFile
hi clear gitcommitDiscardedFile
hi clear gitcommitSelectedFile
hi clear gitcommitUnmergedFile
hi clear gitcommitFile
hi clear gitcommitDiscardedArrow
hi clear gitcommitSelectedArrow
hi clear gitcommitUnmergedArrow
hi clear gitcommitArrow
hi clear gitcommitBlank
hi clear a65Section
hi clear a65Address
hi clear a65Comment
hi clear a65PreProc
hi clear a65Number
hi clear a65String
hi clear a65Type
hi clear a65Opcode
hi clear a65PC
hi clear a65Todo
hi clear a65HiLo


" Second set.

hi link msidlInclude		Include
hi link msidlPreProc		PreProc
hi link msidlPreCondit		PreCondit
hi link msidlDefine		Macro
hi link msidlIncluded		String
hi link msidlString		String
hi link msidlComment		Comment
hi link msidlTodo		Todo
hi link msidlSpecial		SpecialChar
hi link msidlLiteral		Number
hi link msidlUUID		Number
hi link msidlImport		Include
hi link msidlEnum		StorageClass
hi link msidlStruct		Structure
hi link msidlTypedef		Typedef
hi link msidlAttribute		StorageClass
hi link msidlStandardType	Type
hi link msidlSafeArray		Type
hi par1 ctermfg=red 		guifg=red          "guibg=grey
hi par2 ctermfg=blue 		guifg=blue         "guibg=grey
hi par3 ctermfg=darkgreen 	guifg=darkgreen    "guibg=grey
hi par4 ctermfg=darkyellow	guifg=darkyellow   "guibg=grey
hi par5 ctermfg=darkgrey 	guifg=darkgrey     "guibg=grey
hi rexxStringConstant term=bold,underline ctermfg=5 cterm=bold guifg=darkMagenta gui=bold
hi link rexxLabel2		Function
hi link doLoopSelectLabelRegion	rexxKeyword
hi link endIterateLeaveLabelRegion	rexxKeyword
hi link rexxLoopKeywords	rexxKeyword " Todo
hi link rexxNumber		Normal "DiffChange
hi link rexxRegularCallSignal	Statement
hi link rexxExceptionHandling	Statement
hi link rexxLabel		Function
hi link rexxCharacter		Character
hi link rexxParenError		rexxError
hi link rexxInParen		rexxError
hi link rexxCommentError	rexxError
hi link rexxError		Error
hi link rexxKeyword		Statement
hi link rexxKeywordStatements	Statement
hi link rexxFunction		Function
hi link rexxString		String
hi link rexxComment		Comment
hi link rexxTodo		Todo
hi link rexxSpecialVariable	Special
hi link rexxConditional	rexxKeyword
hi link rexxOperator		Operator
hi link rexxMessageOperator	rexxOperator
hi link rexxLineComment	Comment
hi link rexxLineContinue	WildMenu
hi link rexxDirective		rexxKeyword
hi link rexxClassDirective	Type
hi link rexxMethodDirective	rexxFunction
hi link rexxAttributeDirective	rexxFunction
hi link rexxRequiresDirective	Include
hi link rexxRoutineDirective	rexxFunction
hi link rexxOptionsDirective	rexxFunction
hi link rexxOptionsDirective2  rexxOptionsDirective
hi link rexxOptionsDirective3  Normal " rexxOptionsDirective
hi link rexxConstantDirective	rexxFunction
hi link rexxConst		Constant
hi link rexxTypeSpecifier	Type
hi link rexxBuiltinClass	rexxTypeSpecifier
hi link rexxEnvironmentSymbol  rexxConst
hi link rexxMessage		rexxFunction
hi link rexxParse              rexxKeyword
hi link rexxParse2             rexxParse
hi link rexxGuard              rexxKeyword
hi link rexxTrace              rexxKeyword
hi link rexxRaise              rexxKeyword
hi link rexxRaise2             rexxRaise
hi link rexxForward            rexxKeyword
hi link rexxForward2           rexxForward
hi link cheetahPlaceHolder Identifier
hi link cheetahDirective PreCondit
hi link cheetahKeyword Define
hi link cheetahContinuation Special
hi link cheetahComment Comment
hi link cheetahMultiLineComment Comment
hi link hostconfTodo                  Todo
hi link hostconfComment               Comment
hi link hostconfKeyword               Keyword
hi link hostconfLookupOrder           Identifier
hi link hostconfLookupOrderDelimiter  Delimiter
hi link hostconfDomain                String
hi link hostconfDomainDelimiter       Delimiter
hi link hostconfBoolean               Boolean
hi link hostconfSpoofValue            hostconfBoolean
hi link objError           Error
hi link objComment         Comment
hi link objInclude         PreProc
hi link objFloat           Float
hi link objInt             Number
hi link objGroup           Structure
hi link objIndex           Constant
hi link objMaterial        Label
hi link objVertex          Keyword
hi link objNormale         Keyword
hi link objVertice         Keyword
hi link objFace            Keyword
hi link objKeywords        Keyword
hi link sudoersSpecEquals               Operator
hi link sudoersTodo                     Todo
hi link sudoersComment                  Comment
hi link sudoersAlias                    Keyword
hi link sudoersUserAlias                Identifier
hi link sudoersUserNameInList           String
hi link sudoersUIDInList                Number
hi link sudoersGroupInList              PreProc
hi link sudoersUserNetgroupInList       PreProc
hi link sudoersUserAliasInList          PreProc
hi link sudoersUserName                 String
hi link sudoersUID                      Number
hi link sudoersGroup                    PreProc
hi link sudoersUserNetgroup             PreProc
hi link sudoersUserAliasRef             PreProc
hi link sudoersUserNameInSpec           String
hi link sudoersUIDInSpec                Number
hi link sudoersGroupInSpec              PreProc
hi link sudoersUserNetgroupInSpec       PreProc
hi link sudoersUserAliasInSpec          PreProc
hi link sudoersUserNameInRunas          String
hi link sudoersUIDInRunas               Number
hi link sudoersGroupInRunas             PreProc
hi link sudoersUserNetgroupInRunas      PreProc
hi link sudoersUserAliasInRunas         PreProc
hi link sudoersHostAlias                Identifier
hi link sudoersHostNameInList           String
hi link sudoersIPAddrInList             Number
hi link sudoersNetworkInList            Number
hi link sudoersHostNetgroupInList       PreProc
hi link sudoersHostAliasInList          PreProc
hi link sudoersHostName                 String
hi link sudoersIPAddr                   Number
hi link sudoersNetwork                  Number
hi link sudoersHostNetgroup             PreProc
hi link sudoersHostAliasRef             PreProc
hi link sudoersHostNameInSpec           String
hi link sudoersIPAddrInSpec             Number
hi link sudoersNetworkInSpec            Number
hi link sudoersHostNetgroupInSpec       PreProc
hi link sudoersHostAliasInSpec          PreProc
hi link sudoersCmndAlias                Identifier
hi link sudoersCmndNameInList           String
hi link sudoersCmndAliasInList          PreProc
hi link sudoersCmndNameInSpec           String
hi link sudoersCmndAliasInSpec          PreProc
hi link sudoersUserAliasEquals          Operator
hi link sudoersUserListComma            Delimiter
hi link sudoersUserListColon            Delimiter
hi link sudoersUserSpecComma            Delimiter
hi link sudoersUserRunasBegin           Delimiter
hi link sudoersUserRunasComma           Delimiter
hi link sudoersUserRunasEnd             Delimiter
hi link sudoersHostAliasEquals          Operator
hi link sudoersHostListComma            Delimiter
hi link sudoersHostListColon            Delimiter
hi link sudoersHostSpecComma            Delimiter
hi link sudoersCmndAliasEquals          Operator
hi link sudoersCmndListComma            Delimiter
hi link sudoersCmndListColon            Delimiter
hi link sudoersCmndSpecComma            Delimiter
hi link sudoersCmndSpecColon            Delimiter
hi link sudoersUserNegationInList       Operator
hi link sudoersHostNegationInList       Operator
hi link sudoersCmndNegationInList       Operator
hi link sudoersUserNegation             Operator
hi link sudoersHostNegation             Operator
hi link sudoersUserNegationInSpec       Operator
hi link sudoersHostNegationInSpec       Operator
hi link sudoersUserNegationInRunas      Operator
hi link sudoersCmndNegationInSpec       Operator
hi link sudoersCommandArgs              String
hi link sudoersCommandEmpty             Special
hi link sudoersDefaultEntry             Keyword
hi link sudoersDefaultTypeAt            Special
hi link sudoersDefaultTypeColon         Special
hi link sudoersDefaultTypeGreaterThan   Special
hi link sudoersBooleanParameter         Identifier
hi link sudoersIntegerParameter         Identifier
hi link sudoersStringParameter          Identifier
hi link sudoersListParameter            Identifier
hi link sudoersParameterListComma       Delimiter
hi link sudoersIntegerParameterEquals   Operator
hi link sudoersStringParameterEquals    Operator
hi link sudoersListParameterEquals      Operator
hi link sudoersIntegerValue             Number
hi link sudoersStringValue              String
hi link sudoersListValue                String
hi link sudoersPASSWD                   Special
hi link dtGroup		 Special
hi link dtComment	 Comment
hi link dtDelim		 String
hi link dtLocaleKey	 Type
hi link dtLocaleName	 Identifier
hi link dtXLocale	 Identifier
hi link dtALocale	 Identifier
hi link dtNumericKey	 Type
hi link dtBooleanKey	 Type
hi link dtBooleanValue	 Constant
hi link dtStringKey	 Type
hi link dtExecKey	 Type
hi link dtExecParam	 Special
hi link dtTypeKey	 Type
hi link dtTypeValue	 Constant
hi link dtNotStLabel	 Type
hi link dtXAddKey	 Type
hi link tfComment		Comment
hi link tfString		String
hi link tfNumber		Number
hi link tfFloat		Float
hi link tfIdentifier		Identifier
hi link tfVar			Identifier
hi link tfWorld		Identifier
hi link tfReadonly		Identifier
hi link tfHook		Identifier
hi link tfFunctions		Function
hi link tfRepeat		Repeat
hi link tfConditional		Conditional
hi link tfLabel		Label
hi link tfStatement		Statement
hi link tfType		Type
hi link tfInclude		Include
hi link tfDefine		Define
hi link tfSpecialChar		SpecialChar
hi link tfSpecialCharEsc	SpecialChar
hi link tfParentError		Error
hi link tfTodo		Todo
hi link tfEndCommand		Delimiter
hi link tfJoinLines		Delimiter
hi link tfOperator		Operator
hi link tfRelation		Operator
hi link sbtString String
hi link sbtIdentitifer Keyword
hi link sbtBeginningSeq Keyword
hi link sbtSpecial Special
hi link sbtComment Comment
hi link sbtLineComment Comment
hi link sbtDocComment Comment
hi link xkbModif xkbPreproc
hi link xkbTModif xkbPreproc
hi link xkbPreproc Preproc
hi link xkbIdentifier Keyword
hi link xkbFunction Function
hi link xkbSect Type
hi link xkbPhysicalKey Identifier
hi link xkbKeyword Keyword
hi link xkbComment Comment
hi link xkbTodo Todo
hi link xkbConstant Constant
hi link xkbString String
hi link xkbSpecialChar xkbSpecial
hi link xkbSpecial Special
hi link xkbParenError xkbBalancingError
hi link xkbBraceError xkbBalancingError
hi link xkbBraketError xkbBalancingError
hi link xkbBalancingError xkbError
hi link xkbCommentStartError xkbCommentError
hi link xkbCommentError xkbError
hi link xkbError Error
hi link ahdlNumber		ahdlString
hi link ahdlMegafunction	ahdlIdentifier
hi link ahdlSpecialChar	SpecialChar
hi link ahdlKeyword		Statement
hi link ahdlString		String
hi link ahdlComment		Comment
hi link ahdlIdentifier		Identifier
hi link ahdlOperator		Operator
hi link ahdlTodo		Todo
hi link autohotkeyTodo                Todo
hi link autohotkeyComment             Comment
hi link autohotkeyCommentStart        autohotkeyComment
hi link autohotkeyEscape              Special
hi link autohotkeyHotkey              Type
hi link autohotkeyKey                 Type
hi link autohotkeyDelimiter           Delimiter
hi link autohotkeyHotstringDefinition Type
hi link autohotkeyHotstring           Type
hi link autohotkeyHotstringDelimiter  autohotkeyDelimiter
hi link autohotkeyHotstringOptions    Special
hi link autohotkeyString              String
hi link autohotkeyStringDelimiter     autohotkeyString
hi link autohotkeyVariable            Identifier
hi link autohotkeyVariableDelimiter   autohotkeyVariable
hi link autohotkeyBuiltinVariable     Macro
hi link autohotkeyCommand             Keyword
hi link autohotkeyFunction            Function
hi link autohotkeyStatement           autohotkeyCommand
hi link autohotkeyRepeat              Repeat
hi link autohotkeyConditional         Conditional
hi link autohotkeyPreProcStart        PreProc
hi link autohotkeyInclude             Include
hi link autohotkeyPreProc             PreProc
hi link autohotkeyMatchClass          Typedef
hi link autohotkeyNumber              Number
hi link autohotkeyInteger             autohotkeyNumber
hi link autohotkeyFloat               autohotkeyNumber
hi link autohotkeyType                Type
hi link autohotkeyBoolean             Boolean
hi link mailVerbatim	Special
hi link mailHeader		Statement
hi link mailHeaderKey	Type
hi link mailSignature	PreProc
hi link mailHeaderEmail	mailEmail
hi link mailEmail		Special
hi link mailURL		String
hi link mailSubject		Title
hi link mailQuoted1		Comment
hi link mailQuoted3		mailQuoted1
hi link mailQuoted5		mailQuoted1
hi link mailQuoted2		Identifier
hi link mailQuoted4		mailQuoted2
hi link mailQuoted6		mailQuoted2
hi link mailQuoteExp1	mailQuoted1
hi link mailQuoteExp2	mailQuoted2
hi link mailQuoteExp3	mailQuoted3
hi link mailQuoteExp4	mailQuoted4
hi link mailQuoteExp5	mailQuoted5
hi link mailQuoteExp6	mailQuoted6
hi AspVBSVariableSimple   term=standout  ctermfg=3  guifg=#99ee99
hi AspVBSVariableComplex  term=standout  ctermfg=3  guifg=#ee9900
hi link AspVBSLineNumber	Comment
hi link AspVBSNumber		Number
hi link AspVBSError		Error
hi link AspVBSStatement	Statement
hi link AspVBSString		String
hi link AspVBSComment		Comment
hi link AspVBSTodo		Todo
hi link AspVBSFunction		Identifier
hi link AspVBSMethods		PreProc
hi link AspVBSEvents		Special
hi link AspVBSTypeSpecifier	Type
hi link wvdialComment   Comment
hi link wvdialSection   PreProc
hi link wvdialVar       Identifier
hi link wvdialValue     String
hi link wvdialEqual     Statement
hi link chAccess		chStatement
hi link chExceptions		Exception
hi link chStatement		Statement
hi link chType			Type
hi link chStructure		Structure
hi link sasComment Comment
hi link sasTodo Delimiter
hi link sasSectLbl Title
hi link sasSectLblEnds Comment
hi link sasNumber Number
hi link sasDateTime Constant
hi link sasString String
hi link sasDataStepControl Keyword
hi link sasProcTemplateClause Keyword
hi link sasProcSQLClause Keyword
hi link sasDS2Control Keyword
hi link sasIMLControl Keyword
hi link sasOperator Operator
hi link sasGlobalStatementKeyword Statement
hi link sasGlobalStatementODSKeyword Statement
hi link sasSectionKeyword Statement
hi link sasDataStepFunctionName Function
hi link sasDataStepCallRoutineName Function
hi link sasDataStepStatementKeyword Statement
hi link sasDataStepStatementHashKeyword Statement
hi link sasDataStepHashOperator Operator
hi link sasDataStepHashMethodName Function
hi link sasDataStepHashAttributeName Identifier
hi link sasProcStatementKeyword Statement
hi link sasODSGraphicsProcStatementKeyword Statement
hi link sasGraphProcStatementKeyword Statement
hi link sasAnalyticalProcStatementKeyword Statement
hi link sasProcTemplateStatementKeyword Statement
hi link sasProcTemplateStatementComplexKeyword Statement
hi link sasProcTemplateGTLStatementKeyword Statement
hi link sasProcTemplateGTLComplexKeyword Statement
hi link sasProcSQLFunctionName Function
hi link sasProcSQLStatementKeyword Statement
hi link sasProcSQLStatementComplexKeyword Statement
hi link sasProcSQLStatementNextKeyword Statement
hi link sasDS2FunctionName Function
hi link sasDS2StatementKeyword Statement
hi link sasIMLFunctionName Function
hi link sasIMLCallRoutineName Function
hi link sasIMLStatementKeyword Statement
hi link sasMacroReserved PreProc
hi link sasMacroVariable Define
hi link sasMacroFunctionName Define
hi link sasDataLine SpecialChar
hi link sasFormat SpecialChar
hi link sasReserved Special
hi link awkConditional	Conditional
hi link awkFunction		Function
hi link awkRepeat		Repeat
hi link awkStatement	Statement
hi link awkString		String
hi link awkSpecialPrintf	Special
hi link awkSpecialCharacter	Special
hi link awkSearch		String
hi link awkBrackets		awkRegExp
hi link awkBrktRegExp	awkNestRegExp
hi link awkCharClass	awkNestRegExp
hi link awkNestRegExp	Keyword
hi link awkRegExp		Special
hi link awkNumber		Number
hi link awkFloat		Float
hi link awkFileIO		Special
hi link awkOperator		Special
hi link awkExpression	Special
hi link awkBoolLogic	Special
hi link awkPatterns		Special
hi link awkVariables	Special
hi link awkFieldVars	Special
hi link awkLineSkip		Special
hi link awkSemicolon	Special
hi link awkComma		Special
hi link awkIdentifier	Identifier
hi link awkComment		Comment
hi link awkTodo		Todo
hi link awkArrayArray	awkArray
hi link awkArrayElement	Special
hi link awkParenError	awkError
hi link awkInParen		awkError
hi link awkError		Error
hi link descFlag		Identifier
hi link descLicense		Identifier
hi link descCategory		Identifier
hi link descTag		Type
hi link descUrl		Underlined
hi link descEmail		Underlined
hi link descInstallX		Boolean
hi link descInstallO		Type
hi link descDash		Operator
hi link descDigit		Number
hi link descCompilePriority	Number
hi link descSum		Number
hi link descTarball		Underlined
hi link descText		Comment
hi link upstartComment   Comment
hi link upstartTodo	     Todo
hi link upstartString    String
hi link upstartStatement Statement
hi link upstartOption    Type
hi link upstartEvent     Define
hi link     goDirective         Statement
hi link     goDeclaration       Keyword
hi link     goDeclType          Keyword
hi link     goStatement         Statement
hi link     goConditional       Conditional
hi link     goLabel             Label
hi link     goRepeat            Repeat
hi link     goType              Type
hi link     goSignedInts        Type
hi link     goUnsignedInts      Type
hi link     goFloats            Type
hi link     goComplexes         Type
hi link     goBuiltins          Keyword
hi link     goConstants         Keyword
hi link     goComment           Comment
hi link     goTodo              Todo
hi link     goEscapeOctal       goSpecialString
hi link     goEscapeC           goSpecialString
hi link     goEscapeX           goSpecialString
hi link     goEscapeU           goSpecialString
hi link     goEscapeBigU        goSpecialString
hi link     goSpecialString     Special
hi link     goEscapeError       Error
hi link     goString            String
hi link     goRawString         String
hi link     goCharacter         Character
hi link     goDecimalInt        Integer
hi link     goHexadecimalInt    Integer
hi link     goOctalInt          Integer
hi link     Integer             Number
hi link     goFloat             Float
hi link     goImaginary         Number
hi link     goExtraType         Type
hi link     goSpaceError        Error
hi link melBoolean	Boolean
hi link melFunction	Function
hi link melIdentifier	Identifier
hi link melStatement	Statement
hi link melConditional Conditional
hi link melRepeat	Repeat
hi link melLabel	Label
hi link melOperator	Operator
hi link melKeyword	Keyword
hi link melException	Exception
hi link melInclude	Include
hi link melType	Type
hi link melStorageClass StorageClass
hi link melDebug	Debug
hi link melTodo	Todo
hi link melCharSpecial SpecialChar
hi link melString	String
hi link melInteger	Number
hi link melFloat	Float
hi link melMatrixVector Float
hi link melComment	Comment
hi link melError	Error
hi link melSpaceError	melError
hi link melCharError	melError
hi link melParenError	melError
hi link melInParen	melError
hi link melCommentError melError
hi link  DirPagerTodo	Todo
hi	     DirPagerExe	ctermfg=Green	    guifg=Green
hi	     DirPagerDir	ctermfg=Blue	    guifg=Blue
hi	     DirPagerLink	ctermfg=Cyan	    guifg=Cyan
hi	     DirPagerSpecial	ctermfg=Yellow	    guifg=Yellow
hi	     DirPagerFifo	ctermfg=Brown	    guifg=Brown
hi link qfFileName	Directory
hi link qfLineNr	LineNr
hi link qfError	Error
hi link diffOldFile		diffFile
hi link diffNewFile		diffFile
hi link diffIndexLine	PreProc
hi link diffFile		Type
hi link diffOnly		Constant
hi link diffIdentical	Constant
hi link diffDiffer		Constant
hi link diffBDiffer		Constant
hi link diffIsA		Constant
hi link diffNoEOL		Constant
hi link diffCommon		Constant
hi link diffRemoved		Special
hi link diffChanged		PreProc
hi link diffAdded		Identifier
hi link diffLine		Statement
hi link diffSubname		PreProc
hi link diffComment		Comment
hi link n1qlBucketSpec Underlined
hi link n1qlComment    Comment
hi link n1qlKeyword    Macro
hi link n1qlOperator   Function
hi link n1qlSpecial    Special
hi link n1qlStatement  Statement
hi link n1qlString     String
hi link n1qlTODO       Todo
hi link n1qlType       Type
hi link logindefsComment        Comment
hi link logindefsTodo           Todo
hi link logindefsKeyword        Keyword
hi link logindefsBooleanKeyword logindefsKeyword
hi link logindefsEncryptKeyword logindefsKeyword
hi link logindefsNumberKeyword  logindefsKeyword
hi link logindefsPathKeyword    logindefsKeyword
hi link logindefsPathsKeyword   logindefsKeyword
hi link logindefsStringKeyword  logindefsKeyword
hi link logindefsBoolean        Boolean
hi link logindefsEncryptMethod  Type
hi link logindefsNumber         Number
hi link logindefsDecimal        logindefsNumber
hi link logindefsHex            logindefsNumber
hi link logindefsOctal          logindefsNumber
hi link logindefsOctalZero      PreProc
hi link logindefsOctalError     Error
hi link logindefsPath           String
hi link logindefsPaths          logindefsPath
hi link logindefsPathDelim      Delimiter
hi link logindefsString         String
hi link snnspatGen		Statement
hi link snnspatHeader		Error
hi link snnspatNoHeader	Define
hi link snnspatNumbers		Number
hi link snnspatComment		Comment
hi link snnspatError		Error
hi link snnspatTodo		Todo
hi link snnspatAccepted	NONE
hi link snnspatBrac		NONE
hi link issSection	Special
hi link issComment	Comment
hi link issDirective	Type
hi link issParam	Type
hi link issFolder	Special
hi link issString	String
hi link issURL	Include
hi link issPreProc	PreProc 
hi link issDirsFlags		Keyword
hi link issFilesCopyMode	Keyword
hi link issFilesAttribs	Keyword
hi link issFilesPermissions	Keyword
hi link issFilesFlags		Keyword
hi link issIconsFlags		Keyword
hi link issINIFlags		Keyword
hi link issRegRootKey		Keyword
hi link issRegValueType	Keyword
hi link issRegFlags		Keyword
hi link issRunFlags		Keyword
hi link issTypesFlags		Keyword
hi link issComponentsFlags	Keyword
hi link issInstallDeleteType	Keyword
hi link issTasksFlags		Keyword
hi link takoutPos		   Statement
hi link takoutNeg		   PreProc
hi link takoutTitle		   Type
hi link takoutFile		   takIncludeFile
hi link takoutInteger		   takInteger
hi link takoutSectionDelim	    Delimiter
hi link takoutSectionTitle	   Exception
hi link takoutHeaderDelim	   SpecialComment
hi link takoutLabel		   Identifier
hi link takoutError		   Error
hi link plsqlAttribute		Macro
hi link plsqlBlockError	Error
hi link plsqlBooleanLiteral	Boolean
hi link plsqlCharLiteral	Character
hi link plsqlComment		Comment
hi link plsqlCommentL		Comment
hi link plsqlConditional	Conditional
hi link plsqlError		Error
hi link plsqlErrInBracket	Error
hi link plsqlErrInBlock	Error
hi link plsqlErrInParen	Error
hi link plsqlException		Function
hi link plsqlFloatLiteral	Float
hi link plsqlFunction		Function
hi link plsqlGarbage		Error
hi link plsqlHostIdentifier	Label
hi link plsqlIdentifier	Normal
hi link plsqlIntLiteral	Number
hi link plsqlOperator		Operator
hi link plsqlParen		Normal
hi link plsqlParenError	Error
hi link plsqlSpaceError	Error
hi link plsqlPseudo		PreProc
hi link plsqlKeyword		Keyword
hi link plsqlRepeat		Repeat
hi link plsqlStorage		StorageClass
hi link plsqlSQLKeyword	Function
hi link plsqlStringError	Error
hi link plsqlStringLiteral	String
hi link plsqlCommentString	String
hi link plsqlComment2String	String
hi link plsqlSymbol		Normal
hi link plsqlTrigger		Function
hi link plsqlTypeAttribute	StorageClass
hi link plsqlTodo		Todo
hi link texinfoSpecialChar	Special
hi link texinfoHFSpecialChar	Special
hi link texinfoError		Error
hi link texinfoIdent		Identifier
hi link texinfoAssignment	Identifier
hi link texinfoSinglePar	Identifier
hi link texinfoIndexPar	Identifier
hi link texinfoSIPar		Identifier
hi link texinfoDIEPar		Identifier
hi link texinfoTexCmd		PreProc
hi link texinfoAtCmd		Statement	"@-command
hi link texinfoPrmAtCmd	String		"@-command in one line with unknown nr. of parameters
hi link texinfoBrcPrmAtCmd	String		"@-command with parameter(s) in braces ({})
hi link texinfoMltlnAtCmdFLine  texinfoAtCmd	"repeated embedded First lines in @-commands
hi link texinfoMltlnAtCmd	String		"@-command in multiple lines
hi link texinfoMltln2AtCmd	PreProc		"@-command in multiple lines (same as texinfoMltlnAtCmd, just with other colors)
hi link texinfoMltlnDMAtCmd	PreProc		"@-command in multiple lines (same as texinfoMltlnAtCmd, just with other colors; used for @detailmenu, which can be included in @menu)
hi link texinfoMltlnNAtCmd	Normal		"@-command in multiple lines (same as texinfoMltlnAtCmd, just with other colors)
hi link texinfoThisAtCmd	Statement	"@-command used in headers and footers (@this... series)
hi link texinfoComment	Comment
hi link taskeditComment	Comment
hi link taskeditHeading	Function
hi link taskeditKey		Statement
hi link taskeditReadOnly	Special
hi link taskeditString	String
hi link crmTodo       Todo
hi link crmComment    Comment
hi link crmVariable   Identifier
hi link crmSpecial    SpecialChar
hi link crmStatement  Statement
hi link crmRegex      String
hi link crmLabel      Label
hi link manconfTodo         Todo
hi link manconfComment      Comment
hi link manconfKeyword      Keyword
hi link manconfExt          Type
hi link sqljComment	Comment
hi link sqljKeyword	sqljSpecial
hi link sqljNumber	Number
hi link sqljOperator	sqljStatement
hi link sqljSpecial	Special
hi link sqljStatement	Statement
hi link sqljString	String
hi link sqljType	Type
hi link sqljPre	PreProc
hi link dictconfTodo        Todo
hi link dictconfComment     Comment
hi link dictconfKeyword     Keyword
hi link dictconfServer      String
hi link dictconfServerOptsD Delimiter
hi link dictconfServerOpts  Identifier
hi link dictconfUsername    String
hi link dictconfSecret      Special
hi link dictconfNumber      Number
hi link dictconfPager       String
hi link DnsmasqKeywordSpecial Type
hi link DnsmasqTodo		Todo
hi link DnsmasqSpecial	Constant
hi link DnsmasqIPv4		Identifier
hi link DnsmasqSubnet2	DnsmasqSubnet
hi link DnsmasqSubnet	DnsmasqMac
hi link DnsmasqRange	DnsmasqMac
hi link DnsmasqMac		Preproc
hi link DnsmasqTime		Preproc
hi link DnsmasqComment	Comment
hi link DnsmasqTrailSpace	DiffDelete
hi link DnsmasqString	Constant
hi link DnsmasqValues	Normal
hi link foxproSpecial  Special
hi link foxproAtSymbol Special
hi link foxproAtCmd    Statement
hi link foxproPreProc  PreProc
hi link foxproFunc     Identifier
hi link foxproCmd      Statement
hi link foxproEnBlk    Type
hi link foxproSysVar   String
hi link foxproString   String
hi link foxproConst    Constant
hi link foxproNumber   Number
hi link foxproFloat    Float
hi link foxproComment  Comment
hi link foxproParenErr Error
hi link foxproCBConst  PreProc
hi link foxproCBField  Special
hi link foxproCBVar    Identifier
hi link foxproCBWin    Special
hi link foxproCBObject Identifier
hi link straceComment Comment
hi link straceVerbosed Comment
hi link stracePID PreProc
hi link straceNumber Number
hi link straceNumberRHS Type
hi link straceOtherRHS Type
hi link straceString String
hi link straceConstant Function
hi link straceEquals Type
hi link straceSysCallEmbed straceSysCall
hi link straceSysCall Statement
hi link straceParenthesis Statement
hi link straceOperator Normal
hi link straceSpecialChar Special
hi link straceOtherPID PreProc
hi link lssComment Comment
hi link lssElement Identifier
hi lssBold		term=bold cterm=bold
hi lssReverse		term=reverse cterm=reverse
hi lssUnderline		term=underline cterm=underline
hi lssStandout		term=standout cterm=standout
hi lssRedFg		ctermfg=red
hi lssBlueFg		ctermfg=blue
hi lssGreenFg		ctermfg=green
hi lssBrownFg		ctermfg=brown
hi lssMagentaFg		ctermfg=magenta
hi lssCyanFg		ctermfg=cyan
hi lssGrayFg		ctermfg=gray
hi lssRedBg		ctermbg=red
hi lssBlueBg		ctermbg=blue
hi lssGreenBg		ctermbg=green
hi lssBrownBg		ctermbg=brown
hi lssMagentaBg		ctermbg=magenta
hi lssCyanBg		ctermbg=cyan
hi lssLightgrayBg		ctermbg=lightgray
hi lssGrayBg		ctermbg=gray
hi lssBrightredBg		ctermbg=lightred
hi lssBrightgreenBg	ctermbg=lightgreen
hi lssYellowBg		ctermbg=yellow
hi lssBrightblueBg	ctermbg=lightblue
hi lssBrightmagentaBg	ctermbg=lightmagenta
hi lssBrightcyanBg	ctermbg=lightcyan
hi lssWhiteBg		ctermbg=white ctermfg=black
hi link netrcKeyword    Keyword
hi link netrcMacro      PreProc
hi link netrcMachine    Identifier
hi link netrcLogin      String
hi link netrcPassword   String
hi link netrcMacroName  String
hi link netrcSpecial    Special
hi link netrcInit       Special
hi link euphoria3Comment	Comment
hi link euphoria3String	String
hi link euphoria3Char	Character
hi link euphoria3Number	Number	
hi link euphoria3Boolean	Boolean	
hi link euphoria3Builtin	Identifier	
hi link euphoria3Library 	Function	
hi link euphoria3Keyword	Statement	
hi link euphoria3Operator	Statement	
hi link euphoria3Debug	Debug	
hi link euphoria3Delimit	Delimiter	
hi link sisu_normal                Normal
hi link sisu_bold                  Statement
hi link sisu_header                PreProc
hi link sisu_header_content        Normal
hi link sisu_sub_header_title      Statement
hi link sisu_sub_header_creator    Statement
hi link sisu_sub_header_date       Statement
hi link sisu_sub_header_publisher  Statement
hi link sisu_sub_header_rights     Statement
hi link sisu_sub_header_classify   Statement
hi link sisu_sub_header_identifier Statement
hi link sisu_sub_header_original   Statement
hi link sisu_sub_header_links      Statement
hi link sisu_sub_header_notes      Statement
hi link sisu_sub_header_make       Statement
hi link sisu_heading               Title
hi link sisu_structure             Operator
hi link sisu_contain               Include
hi link sisu_mark_endnote          Delimiter
hi link sisu_require               NonText
hi link sisu_link                  NonText
hi link sisu_linked                String
hi link sisu_fontface              Delimiter
hi link sisu_strikeout             DiffDelete
hi link sisu_content_alt           Special
hi link sisu_sem_content           SpecialKey
hi link sisu_sem_block             Special
hi link sisu_sem_marker            Visual
hi link sisu_sem_marker_block      MatchParen
hi link sisu_sem_ex_marker         FoldColumn
hi link sisu_sem_ex_marker_block   Folded
hi link sisu_sem_ex_content        Comment
hi link sisu_sem_ex_block          Comment
hi link sisu_index                 SpecialKey
hi link sisu_index_block           Visual
hi link sisu_content_endnote       Special
hi link sisu_control               Delimiter
hi link sisu_within_index          Delimiter
hi link sisu_within_index_ignore   SpecialKey
hi link sisu_ocn                   Include
hi link sisu_number                Number
hi link sisu_identifier            Function
hi link sisu_underline             Underlined
hi link sisu_markpara              Include
hi link sisu_marktail              Include
hi link sisu_mark                  Identifier
hi link sisu_break                 Structure
hi link sisu_html                  Type
hi link sisu_action                Identifier
hi link sisu_comment               Comment
hi link sisu_error_sem_marker      Error
hi link sisu_error_wspace          Error
hi link sisu_error                 Error
hi link tadsFunctionDef Function
hi link tadsFunction  Structure
hi link tadsClass     Structure
hi link tadsClassDef  Identifier
hi link tadsObjectDef Identifier
hi link tadsOperator	Operator
hi link tadsStructure	Structure
hi link tadsTodo	Todo
hi link tadsLabel	Label
hi link tadsConditional	Conditional
hi link tadsRepeat	Repeat
hi link tadsException	Exception
hi link tadsStatement	Statement
hi link tadsStorageClass	StorageClass
hi link tadsKeyWord   Keyword
hi link tadsSpecial	SpecialChar
hi link tadsNumber	Number
hi link tadsBoolean	Boolean
hi link tadsDoubleString	tadsString
hi link tadsSingleString	tadsString
hi link tadsOctalError	tadsError
hi link tadsCommentError	tadsError
hi link tadsBraceError	tadsError
hi link tadsInBrace	tadsError
hi link tadsError	Error
hi link tadsInclude	Include
hi link tadsPreProc	PreProc
hi link tadsDefine	Macro
hi link tadsIncluded	tadsString
hi link tadsPreCondit	PreCondit
hi link tadsString	String
hi link tadsComment	Comment
hi link mmaComment           Comment
hi link mmaCommentStar       Comment
hi link mmaFunctionComment   Comment
hi link mmaLooseQuote        Comment
hi link mmaGenericFunction   Function
hi link mmaVariable          Identifier
hi link mmaOperator          Operator
hi link mmaPatternOp         Operator
hi link mmaPureFunction      Operator
hi link mmaString            String
hi link mmaCommentString     String
hi link mmaUnicode           String
hi link mmaMessage           Type
hi link mmaNumber            Type
hi link mmaPattern           Type
hi link mmaError             Error
hi link mmaFixme             Error
hi link mmaPatternError      Error
hi link mmaTodo              Todo
hi link mmaemPHAsis          Special
hi link mmaFunctionTitle     Special
hi link mmaMessageType       Special
hi link mmaItem              Preproc
hi link confComment	Comment
hi link confTodo	Todo
hi link confString	String
hi link jsonPadding         Operator
hi link jsonString          String
hi link jsonTest          Label
hi link jsonEscape          Special
hi link jsonNumber          Number
hi link jsonBraces          Delimiter
hi link jsonNull            Function
hi link jsonBoolean         Boolean
hi link jsonKeyword         Label
hi link jsonNumError        Error
hi link jsonCommentError    Error
hi link jsonSemicolonError  Error
hi link jsonTrailingCommaError     Error
hi link jsonMissingCommaError      Error
hi link jsonStringSQError        	Error
hi link jsonNoQuotesError        	Error
hi link jsonTripleQuotesError     	Error
hi link jsonQuote           Quote
hi link jsonNoise           Noise
hi link tarComment	Comment
hi link tarFilename	Constant
hi link tarDirectory Type
hi link sgmldeclDeclKeys	Keyword
hi link sgmldeclTypes		Type
hi link sgmldeclConst		Constant
hi link sgmldeclNConst		Constant
hi link sgmldeclString		String
hi link sgmldeclDeclBlock	Normal
hi link sgmldeclBool		Boolean
hi link sgmldeclSpecial		Special
hi link sgmldeclComment		Comment
hi link sgmldeclStatem		Statement
hi link sgmldeclVariables	Type
hi link catalogString		     String
hi link catalogComment		     Comment
hi link catalogTodo			     Todo
hi link catalogKeyword		     Statement
hi link bdfKeyword        Keyword
hi link bdfNumber         Number
hi link bdfTodo           Todo
hi link bdfComment        Comment
hi link bdfFont           String
hi link bdfProperty       Identifier
hi link bdfXProperty      Identifier
hi link bdfString         String
hi link bdfChars          Keyword
hi link bdfBitmap         Keyword
hi link amlComment	Comment
hi link amlNumber	Number
hi link amlQuote	String
hi link amlVar	Identifier
hi link amlVar2	Identifier
hi link amlFunction	PreProc
hi link amlDir	Statement
hi link amlDir2	Statement
hi link amlDirSym	Statement
hi link amlOutput	Statement
hi link amlArcCmd	ModeMsg
hi link amlFormedCmd	amlArcCmd
hi link amlTabCmd	amlArcCmd
hi link amlInfoCmd	amlArcCmd
hi link amlVtrCmd	amlArcCmd
hi link amlFormed	amlArcCmd
hi link amlTab	amlArcCmd
hi link laceTopStruct			PreProc
hi link laceOptionClause		Statement
hi link laceOptionMark			Constant
hi link laceClusterProp		Label
hi link laceAdaptClassName		Label
hi link laceExternal			Statement
hi link laceCluster			ModeMsg
hi link laceEscape				Special
hi link laceBool				Boolean
hi link laceString				String
hi link laceCharacter			Character
hi link laceClassName			Type
hi link laceNumber				Number
hi link laceOperator			Special
hi link laceArray				Special
hi link laceExport				Special
hi link laceCreation			Special
hi link laceBrackets			Special
hi link laceConstraint			Special
hi link laceComment			Comment
hi link laceError				Error
hi link laceStringError		Error
hi link laceParenError			Error
hi link laceBracketError		Error
hi link laceTodo				Todo
hi link updatedbTodo    Todo
hi link updatedbComment Comment
hi link updatedbName    Identifier
hi link updatedbNameEq  Operator
hi link updatedbValue   String
hi link asmSection	Special
hi link asmLabel	Label
hi link asmComment	Comment
hi link asmTodo	Todo
hi link asmDirective	Statement
hi link asmInclude	Include
hi link asmCond	PreCondit
hi link asmMacro	Macro
hi link hexNumber	Number
hi link decNumber	Number
hi link octNumber	Number
hi link binNumber	Number
hi link asmIdentifier	Identifier
hi link asmType	Type
hi link a2psTodo          Todo
hi link a2psComment       Comment
hi link a2psPreProc       PreProc
hi link a2psMacro         Macro
hi link a2psKeyword       Keyword
hi link a2psKeywordColon  Delimiter
hi link a2psVariableColon Delimiter
hi link a2psVariable      Identifier
hi link a2psVarPrefix     Type
hi link a2psLineCont      Special
hi link a2psSubst         PreProc
hi link a2psString        String
hi link fetchmailComment    Comment
hi link fetchmailTodo       Todo
hi link fetchmailNumber     Number
hi link fetchmailString     String
hi link fetchmailStringEsc  SpecialChar
hi link fetchmailKeyword    Keyword
hi link fetchmailServerOpts Identifier
hi link fetchmailUserOpts   Identifier
hi link fetchmailSpecial    Special
hi link fetchmailSet        Keyword
hi link fetchmailOptions    Identifier
hi link gdbFuncDef	Function
hi link gdbComment	Comment
hi link gdbStatement	Statement
hi link gdbString	String
hi link gdbCharacter	Character
hi link gdbVariable	Identifier
hi link gdbSet		Constant
hi link gdbInfo	Type
hi link gdbDocument	Special
hi link gdbNumber	Number
hi link nanorcTodo          Todo
hi link nanorcComment       Comment
hi link nanorcKeyword       Keyword
hi link nanorcBoolOption    Identifier
hi link nanorcStringOption  Identifier
hi link nanorcNumberOption  Identifier
hi link nanorcSynGroupName  String
hi link nanorcString        String
hi link nanorcRegexes       nanorcString
hi link nanorcNumber        Number
hi      nanorcFGWhite       ctermfg=Gray guifg=Gray
hi      nanorcFGBlack       ctermfg=Black guifg=Black
hi      nanorcFGRed         ctermfg=DarkRed guifg=DarkRed
hi      nanorcFGBlue        ctermfg=DarkBlue guifg=DarkBlue
hi      nanorcFGGreen       ctermfg=DarkGreen guifg=DarkGreen
hi      nanorcFGYellow      ctermfg=Brown guifg=Brown
hi      nanorcFGMagenta     ctermfg=DarkMagenta guifg=DarkMagenta
hi      nanorcFGCyan        ctermfg=DarkCyan guifg=DarkCyan
hi      nanorcFGBWhite      ctermfg=White guifg=White
hi      nanorcFGBBlack      ctermfg=DarkGray guifg=DarkGray
hi      nanorcFGBRed        ctermfg=Red guifg=Red
hi      nanorcFGBBlue       ctermfg=Blue guifg=Blue
hi      nanorcFGBGreen      ctermfg=Green guifg=Green
hi      nanorcFGBYellow     ctermfg=Yellow guifg=Yellow
hi      nanorcFGBMagenta    ctermfg=Magenta guifg=Magenta
hi      nanorcFGBCyan       ctermfg=Cyan guifg=Cyan
hi link nanorcBGColorSep    Normal
hi      nanorcBGWhite       ctermbg=Gray guibg=Gray
hi      nanorcBGBlack       ctermbg=Black guibg=Black
hi      nanorcBGRed         ctermbg=DarkRed guibg=DarkRed
hi      nanorcBGBlue        ctermbg=DarkBlue guibg=DarkBlue
hi      nanorcBGGreen       ctermbg=DarkGreen guibg=DarkGreen
hi      nanorcBGYellow      ctermbg=Brown guibg=Brown
hi      nanorcBGMagenta     ctermbg=DarkMagenta guibg=DarkMagenta
hi      nanorcBGCyan        ctermbg=DarkCyan guibg=DarkCyan
hi      nanorcBGBWhite      ctermbg=White guibg=White
hi      nanorcBGBBlack      ctermbg=DarkGray guibg=DarkGray
hi      nanorcBGBRed        ctermbg=Red guibg=Red
hi      nanorcBGBBlue       ctermbg=Blue guibg=Blue
hi      nanorcBGBGreen      ctermbg=Green guibg=Green
hi      nanorcBGBYellow     ctermbg=Yellow guibg=Yellow
hi      nanorcBGBMagenta    ctermbg=Magenta guibg=Magenta
hi      nanorcBGBCyan       ctermbg=Cyan guibg=Cyan
hi link nanorcStartRegion   Type
hi link nanorcStartRegionEq Operator
hi link nanorcRegion        nanorcString
hi link nanorcEndRegion     Type
hi link nanorcEndRegionEq   Operator
hi link nanorcRegex         nanoRegexes
hi link defComment	Comment
hi link defKeyword	Keyword
hi link defStorage	StorageClass
hi link defString	String
hi link defNumber	Number
hi link defOrdinal	Operator
hi link rcslogFile		Type
hi link rcslogRevision	Constant
hi link rcslogDate		Identifier
hi link smartyTagName Identifier
hi link smartyProperty Constant
hi link smartyInFunc Function
hi link smartyBlock Constant
hi link smartyDot SpecialChar
hi link smartyModifier Function
hi link srecRecStart            srecRecType
hi link srecRecTypeUnknown      srecRecType
hi link srecRecType             WarningMsg
hi link srecByteCount           Constant
hi srecAddressFieldUnknown term=italic cterm=italic gui=italic
hi link srecNoAddress           DiffAdd
hi link srecDataAddress         Comment
hi link srecRecCount            srecNoAddress
hi link srecStartAddress        srecDataAddress
hi srecDataOdd             term=bold cterm=bold gui=bold
hi srecDataEven            term=NONE cterm=NONE gui=NONE
hi link srecDataUnexpected      Error
hi link srecChecksum            DiffChange
hi link rtfControlWord		Statement
hi link rtfNewControlWord	Special
hi link rtfControlSymbol	Constant
hi link rtfCharacter		Character
hi link rtfUnicodeCharacter	SpecialChar
hi link rtfFootNote		Comment
hi rtfRed	      term=underline cterm=underline ctermfg=DarkRed gui=underline guifg=DarkRed
hi rtfGreen	      term=underline cterm=underline ctermfg=DarkGreen gui=underline guifg=DarkGreen
hi rtfBlue	      term=underline cterm=underline ctermfg=DarkBlue gui=underline guifg=DarkBlue
hi link rtfRed	rtfRed
hi link rtfGreen	rtfGreen
hi link rtfBlue	rtfBlue
hi link upstreamdat_Parameter Type
hi link upstreamdat_Comment Comment
hi link usserverlog_Date	Underlined
hi link usserverlog_MsgD	Type
hi link usserverlog_MsgE	Error
hi link usserverlog_MsgW	Constant
hi link usserverlog_Process	Statement
hi link usserverlog_IPaddr	Identifier
hi link usserverlog_Profile	Identifier
hi link usserverlog_Target	Identifier
hi link hexRecStart            hexRecType
hi link hexDataByteCount       Constant
hi hexAddressFieldUnknown term=italic cterm=italic gui=italic
hi link hexDataAddress         Comment
hi link hexNoAddress           DiffAdd
hi link hexRecTypeUnknown      hexRecType
hi link hexRecType             WarningMsg
hi hexDataFieldUnknown    term=italic cterm=italic gui=italic
hi hexDataOdd             term=bold cterm=bold gui=bold
hi hexDataEven            term=NONE cterm=NONE gui=NONE
hi link hexDataUnexpected      Error
hi link hexExtendedAddress     hexDataAddress
hi link hexStartAddress        hexDataAddress
hi link hexChecksum            DiffChange
hi link cppAccess		cppStatement
hi link cppCast		cppStatement
hi link cppExceptions		Exception
hi link cppOperator		Operator
hi link cppStatement		Statement
hi link cppModifier		Type
hi link cppType		Type
hi link cppStorageClass	StorageClass
hi link cppStructure		Structure
hi link cppBoolean		Boolean
hi link cppConstant		Constant
hi link cppRawStringDelimiter	Delimiter
hi link cppRawString		String
hi link cppNumber		Number
hi link murphiComment        Comment
hi link murphiString         String
hi link murphiNumber         Number
hi link murphiBoolean        Boolean
hi link murphiIdentifier     Identifier
hi link murphiFunction       Function
hi link murphiStatement      Statement
hi link murphiConditional    Conditional
hi link murphiRepeat         Repeat
hi link murphiLabel          Label
hi link murphiOperator       Operator
hi link murphiKeyword        Keyword
hi link murphiType           Type
hi link murphiStructure      Structure
hi link murphiSpecial        Special
hi link murphiDelimiter      Delimiter
hi link murphiError          Error
hi link murphiTodo           Todo
hi link sqrSection Statement
hi link sqrParagraph Statement
hi link sqrReserved Statement
hi link sqrParameter Statement
hi link sqrPreProc PreProc
hi link sqrSubstVar PreProc
hi link sqrCommand Statement
hi link sqrParam Type
hi link sqrFunction Special
hi link sqrString String
hi link sqrStrOpen Todo
hi link sqrNumber Number
hi link sqrVariable Identifier
hi link sqrComment Comment
hi link sqrTodo Todo
hi link sqrError Error
hi link openroadKeyword	Statement
hi link openroadNumber	Number
hi link openroadString	String
hi link openroadComment	Comment
hi link openroadOperator	Operator
hi link openroadType		Type
hi link openroadFunc		Special
hi link openroadClass	Type
hi link openroadEvent	Statement
hi link openroadConst	Constant
hi link openroadVar		Identifier
hi link openroadIdent	Identifier
hi link openroadTodo		Todo
hi link p6EscOctOld       p6Error
hi link p6PackageTwigil   p6Twigil
hi link p6StringAngle     p6String
hi link p6StringFrench    p6String
hi link p6StringAngles    p6String
hi link p6StringSQ        p6String
hi link p6StringDQ        p6String
hi link p6StringQ         p6String
hi link p6RxStringSQ      p6String
hi link p6RxStringDQ      p6String
hi link p6Substitution    p6String
hi link p6Transliteration p6String
hi link p6StringAuto      p6String
hi link p6StringP5Auto    p6String
hi link p6Key             p6String
hi link p6Match           p6String
hi link p6RegexBlock      p6String
hi link p6RxP5CharClass   p6String
hi link p6RxP5QuoteMeta   p6String
hi link p6RxCharClass     p6String
hi link p6RxQuoteWords    p6String
hi link p6ReduceOp        p6Operator
hi link p6ReverseCrossOp  p6Operator
hi link p6HyperOp         p6Operator
hi link p6QuoteQ          p6Operator
hi link p6RxRange         p6StringSpecial
hi link p6RxAnchor        p6StringSpecial
hi link p6RxP5Anchor      p6StringSpecial
hi link p6CodePoint       p6StringSpecial
hi link p6RxMeta          p6StringSpecial
hi link p6RxP5Range       p6StringSpecial
hi link p6RxP5CPId        p6StringSpecial
hi link p6RxP5Posix       p6StringSpecial
hi link p6RxP5Mod         p6StringSpecial
hi link p6RxP5HexSeq      p6StringSpecial
hi link p6RxP5OctSeq      p6StringSpecial
hi link p6RxP5WriteRefId  p6StringSpecial
hi link p6HexSequence     p6StringSpecial
hi link p6OctSequence     p6StringSpecial
hi link p6RxP5Named       p6StringSpecial
hi link p6RxP5PropId      p6StringSpecial
hi link p6RxP5Quantifier  p6StringSpecial
hi link p6RxP5CountId     p6StringSpecial
hi link p6RxP5Verb        p6StringSpecial
hi link p6Escape          p6StringSpecial2
hi link p6EscNull         p6StringSpecial2
hi link p6EscHash         p6StringSpecial2
hi link p6EscQQ           p6StringSpecial2
hi link p6EscQuote        p6StringSpecial2
hi link p6EscDoubleQuote  p6StringSpecial2
hi link p6EscBackTick     p6StringSpecial2
hi link p6EscForwardSlash p6StringSpecial2
hi link p6EscVerticalBar  p6StringSpecial2
hi link p6EscExclamation  p6StringSpecial2
hi link p6EscDollar       p6StringSpecial2
hi link p6EscOpenCurly    p6StringSpecial2
hi link p6EscCloseCurly   p6StringSpecial2
hi link p6EscCloseBracket p6StringSpecial2
hi link p6EscCloseAngle   p6StringSpecial2
hi link p6EscCloseFrench  p6StringSpecial2
hi link p6EscBackSlash    p6StringSpecial2
hi link p6RxEscape        p6StringSpecial2
hi link p6RxCapture       p6StringSpecial2
hi link p6RxAlternation   p6StringSpecial2
hi link p6RxP5            p6StringSpecial2
hi link p6RxP5ReadRef     p6StringSpecial2
hi link p6RxP5Oct         p6StringSpecial2
hi link p6RxP5Hex         p6StringSpecial2
hi link p6RxP5EscMeta     p6StringSpecial2
hi link p6RxP5Meta        p6StringSpecial2
hi link p6RxP5Escape      p6StringSpecial2
hi link p6RxP5CodePoint   p6StringSpecial2
hi link p6RxP5WriteRef    p6StringSpecial2
hi link p6RxP5Prop        p6StringSpecial2
hi link p6Property       Tag
hi link p6Attention      Todo
hi link p6Type           Type
hi link p6Error          Error
hi link p6BlockLabel     Label
hi link p6Float          Float
hi link p6Normal         Normal
hi link p6Package        Normal
hi link p6PackageScope   Normal
hi link p6Number         Number
hi link p6VersionNum     Number
hi link p6String         String
hi link p6Repeat         Repeat
hi link p6Keyword        Keyword
hi link p6Pragma         Keyword
hi link p6Module         Keyword
hi link p6DeclareRoutine Keyword
hi link p6VarStorage     Special
hi link p6FlowControl    Special
hi link p6NumberBase     Special
hi link p6Twigil         Special
hi link p6StringSpecial2 Special
hi link p6VersionDot     Special
hi link p6Comment        Comment
hi link p6Include        Include
hi link p6Shebang        PreProc
hi link p6ClosureTrait   PreProc
hi link p6Routine        Function
hi link p6Operator       Operator
hi link p6Version        Operator
hi link p6Context        Operator
hi link p6Quote          Delimiter
hi link p6TypeConstraint PreCondit
hi link p6Exception      Exception
hi link p6Placeholder    Identifier
hi link p6Variable       Identifier
hi link p6VarSlash       Identifier
hi link p6VarNum         Identifier
hi link p6VarExclam      Identifier
hi link p6VarMatch       Identifier
hi link p6VarName        Identifier
hi link p6MatchVar       Identifier
hi link p6RxP5ReadRefId  Identifier
hi link p6RxP5ModDef     Identifier
hi link p6RxP5ModName    Identifier
hi link p6Conditional    Conditional
hi link p6StringSpecial  SpecialChar
hi link p6PodAbbr         p6Pod
hi link p6PodAbbrEOF      p6Pod
hi link p6PodAbbrNoCode   p6Pod
hi link p6PodAbbrCode     p6PodCode
hi link p6PodPara         p6Pod
hi link p6PodParaEOF      p6Pod
hi link p6PodParaNoCode   p6Pod
hi link p6PodParaCode     p6PodCode
hi link p6PodDelim        p6Pod
hi link p6PodDelimEOF     p6Pod
hi link p6PodDelimNoCode  p6Pod
hi link p6PodDelimCode    p6PodCode
hi link p6PodImplicitCode p6PodCode
hi link p6PodExtraConfig  p6PodPrefix
hi link p6PodVerticalBar  p6PodFormatCode
hi link p6PodColon        p6PodFormatCode
hi link p6PodSemicolon    p6PodFormatCode
hi link p6PodComma        p6PodFormatCode
hi link p6PodFormatOne    p6PodFormat
hi link p6PodFormatTwo    p6PodFormat
hi link p6PodFormatThree  p6PodFormat
hi link p6PodFormatFrench p6PodFormat
hi link p6PodType           Type
hi link p6PodConfigOption   String
hi link p6PodCode           PreProc
hi link p6Pod               Comment
hi link p6PodComment        Comment
hi link p6PodAutoQuote      Operator
hi link p6PodConfigOperator Operator
hi link p6PodPrefix         Statement
hi link p6PodName           Identifier
hi link p6PodFormatCode     SpecialChar
hi link p6PodFormat         SpecialComment
hi link pl1Attribute       Macro
hi link pl1BlockError      Error
hi link pl1BooleanLiteral  Boolean
hi link pl1CharLiteral     Character
hi link pl1Comment         Comment
hi link pl1CommentL        Comment
hi link pl1Conditional     Conditional
hi link pl1Error           Error
hi link pl1ErrInBracket    Error
hi link pl1ErrInBlock      Error
hi link pl1ErrInParen      Error
hi link pl1Exception       Function
hi link pl1FloatLiteral    Float
hi link pl1Function        Function
hi link pl1Garbage         Error
hi link pl1HostIdentifier  Label
hi link pl1Identifier      Normal
hi link pl1IntLiteral      Number
hi link pl1Operator        Operator
hi link pl1Paren           Normal
hi link pl1ParenError      Error
hi link pl1SpaceError      Error
hi link pl1Pseudo          PreProc
hi link pl1PreProc         PreProc
hi link pl1PreProcSym      PreProc
hi link pl1Keyword         Keyword
hi link pl1Other           Keyword
hi link pl1Repeat          Repeat
hi link pl1Statement       Keyword
hi link pl1Storage         StorageClass
hi link pl1StringError     Error
hi link pl1StringLiteral   String
hi link pl1CommentString   String
hi link pl1Comment2String  String
hi link pl1Symbol          Normal
hi link pl1Trigger         Function
hi link pl1TypeAttribute   StorageClass
hi link pl1Todo            Todo
hi link sdIP Number
hi link sdHostname Type
hi link sdEncoding Identifier
hi link sdCoding Identifier
hi link sdSource Identifier
hi link sdComment Comment
hi link sdIPError Error
hi link sdError Error
hi link sdStatement Statement
hi link sdIPSpecial Special
hi link sdSpecial Special
hi link sdDelimiter Delimiter
hi link hastepreproc	Preproc
hi link hastepreprocVar	Special
hi link hastepreprocError	Error
hi link eComment     Comment
hi link eConstant    Identifier
hi link eStringId    Identifier
hi link eCommand     Type
hi link eString      String
hi link eNumber      Number
hi link eBoolean     Boolean
hi link eFloat       Float
hi link eConditional Conditional
hi link eProgLang    Statement
hi link eOVP	      Statement
hi link eStdCmd      Statement
hi link eIdentifier  Normal
hi link eDelimiter   Delimiter
hi link eError       Error
hi link eBraceError  Error
hi link eCurlyError  Error
hi link eParenError  Error
hi link uilCharacter		uilString
hi link uilSpecialCharacter	uilSpecial
hi link uilNumber		uilString
hi link uilCommentError	uilError
hi link uilInclude		uilPreCondit
hi link uilDefine		uilPreCondit
hi link uilIncluded		uilString
hi link uilSpecialFunction	uilRessource
hi link uilRessource		Identifier
hi link uilSpecialStatement	Keyword
hi link uilError		Error
hi link uilPreCondit		PreCondit
hi link uilType		Type
hi link uilString		String
hi link uilComment		Comment
hi link uilSpecial		Special
hi link uilTodo		Todo
hi link smlBraceErr	 Error
hi link smlBrackErr	 Error
hi link smlParenErr	 Error
hi link smlCommentErr	 Error
hi link smlEndErr	 Error
hi link smlThenErr	 Error
hi link smlCharErr	 Error
hi link smlComment	 Comment
hi link smlModPath	 Include
hi link smlModule	 Include
hi link smlModParam1	 Include
hi link smlModType	 Include
hi link smlMPRestr3	 Include
hi link smlFullMod	 Include
hi link smlModTypeRestr Include
hi link smlWith	 Include
hi link smlMTDef	 Include
hi link smlConstructor  Constant
hi link smlModPreRHS	 Keyword
hi link smlMPRestr2	 Keyword
hi link smlKeyword	 Keyword
hi link smlFunDef	 Keyword
hi link smlRefAssign	 Keyword
hi link smlKeyChar	 Keyword
hi link smlAnyVar	 Keyword
hi link smlTopStop	 Keyword
hi link smlOperator	 Keyword
hi link smlBoolean	 Boolean
hi link smlCharacter	 Character
hi link smlNumber	 Number
hi link smlReal	 Float
hi link smlString	 String
hi link smlType	 Type
hi link smlTodo	 Todo
hi link smlEncl	 Keyword
hi link mglBoolean		Boolean
hi link mglComment		Comment
hi link mglConditional		Conditional
hi link mglConstant		Constant
hi link mglException		Exception
hi link mglFunction		Function
hi link mglLabel		Label
hi link mglMatrixDelimiter	Identifier
hi link mglNumber		Number
hi link mglHexNumber		Number
hi link mglCharacter		Number
hi link mglIpAddr		Number
hi link mglOperator		Operator
hi link mglPredefined		mglFunction
hi link mglPreProc		PreProc
hi link mglRepeat		Repeat
hi link mglStatement		Statement
hi link mglString		String
hi link mglStringEscape	Special
hi link mglStringEscapeGPC	Special
hi link mglStringError		Error
hi link mglStruct		mglStatement
hi link mglSymbolOperator	mglOperator
hi link mglType		Type
hi link divaDRCKeywords		Statement
hi link divaMeasKeywords		Statement
hi link divaCtrlFunctions	Conditional
hi link divaExtFunctions		Function
hi link divaDRCFunctions		Function
hi link divaFunctions		Function
hi link divaLayerFunctions	Function
hi link divaChkFunctions		Function
hi link divaLVSFunctions		Function
hi link divaGeomFunctions	Function
hi link pythonStatement		Statement
hi link pythonConditional		Conditional
hi link pythonRepeat		Repeat
hi link pythonOperator		Operator
hi link pythonException		Exception
hi link pythonInclude		Include
hi link pythonAsync			Statement
hi link pythonDecorator		Define
hi link pythonDecoratorName		Function
hi link pythonFunction		Function
hi link pythonComment		Comment
hi link pythonTodo			Todo
hi link pythonString		String
hi link pythonRawString		String
hi link pythonQuotes		String
hi link pythonTripleQuotes		pythonQuotes
hi link pythonEscape		Special
hi link modelKeyword	Statement
hi link modelBlock		PreProc
hi link modelComment	Comment
hi link modelString		String
hi link taskdataEncoded	Function
hi link taskdataKey		Statement
hi link taskdataString 	String
hi link taskdataUUID 	Special
hi link taskdataUndo 	Type
hi link schemeSyntax		Statement
hi link schemeFunc		Function
hi link schemeString		String
hi link schemeCharacter	Character
hi link schemeNumber		Number
hi link schemeBoolean		Boolean
hi link schemeDelimiter	Delimiter
hi link schemeConstant		Constant
hi link schemeComment		Comment
hi link schemeMultilineComment	Comment
hi link schemeError		Error
hi link schemeExtSyntax	Type
hi link schemeExtFunc		PreProc
hi link schemeLang		PreProc
hi link treetopTodo                         Todo
hi link treetopComment                      Comment
hi link treetopKeyword                      Keyword
hi link treetopGrammarName                  Constant
hi link treetopRubyModuleName               Constant
hi link treetopRuleName                     Identifier
hi link treetopString                       String
hi link treetopStringDelimiter              treetopString
hi link treetopCharacterClass               treetopString
hi link treetopCharacterClassDelimiter      treetopCharacterClass
hi link treetopRubyBlockDelimiter           PreProc
hi link treetopSemanticPredicateDelimiter   PreProc
hi link treetopSubclassDeclarationDelimiter PreProc
hi link treetopEllipsis                     Special
hi link sindaMacro		Macro
hi link sindaOptions		Special
hi link sindaRoutine		Type
hi link sindaControl		Special
hi link sindaSubRoutine	Function
hi link sindaIdentifier	Identifier
hi link sindaFortran		PreProc
hi link sindaMotran		PreProc
hi link sindaComment		Comment
hi link sindaHeader		Typedef
hi link sindaIncludeFile	Type
hi link sindaInteger		Number
hi link sindaFloat		Float
hi link sindaScientific	Float
hi link sindaEndData		Macro
hi link sindaTodo		Todo
hi link smithRegister	Identifier
hi link smithKeyword	Keyword
hi link smithComment Comment
hi link smithString String
hi link smithNumber	Number
hi link matlabTransposeOperator	matlabOperator
hi link matlabOperator			Operator
hi link matlabLineContinuation		Special
hi link matlabLabel			Label
hi link matlabConditional		Conditional
hi link matlabExceptions		Conditional
hi link matlabRepeat			Repeat
hi link matlabTodo			Todo
hi link matlabString			String
hi link matlabDelimiter		Identifier
hi link matlabTransposeOther		Identifier
hi link matlabNumber			Number
hi link matlabFloat			Float
hi link matlabFunction			Function
hi link matlabError			Error
hi link matlabImplicit			matlabStatement
hi link matlabStatement		Statement
hi link matlabOO			Statement
hi link matlabSemicolon		SpecialChar
hi link matlabComment			Comment
hi link matlabMultilineComment		Comment
hi link matlabCellComment          Todo
hi link matlabScope			Type
hi link matlabArithmeticOperator	matlabOperator
hi link matlabRelationalOperator	matlabOperator
hi link matlabLogicalOperator		matlabOperator
hi link dtsCellProperty     Number
hi link dtsBinaryProperty   Number
hi link dtsStringProperty   String
hi link dtsKeyword          Include
hi link dtsLabel            Label
hi link dtsNode             Structure
hi link dtsReference        Macro
hi link dtsComment          Comment
hi link dtsCommentInner     Comment 
hi link dtsCommentLine      Comment
hi link CfgOnOff     Label
hi link CfgComment	Comment
hi link CfgSection	Type
hi link CfgString	String
hi link CfgParams    Keyword
hi link CfgValues    Constant
hi link CfgDirectory Directory
hi link UncPath      Directory
hi link draculaIdentifier Identifier
hi link draculaStatement  Statement
hi link draculaType       Type
hi link draculaComment    Comment
hi link draculaPreProc    PreProc
hi link cucumberUnparsedComment   cucumberComment
hi link cucumberComment           Comment
hi link cucumberLanguage          SpecialComment
hi link cucumberFeature           Macro
hi link cucumberBackground        Define
hi link cucumberScenario          Define
hi link cucumberScenarioOutline   Define
hi link cucumberExamples          Define
hi link cucumberPlaceholder       Constant
hi link cucumberDelimiter         Delimiter
hi link cucumberTags              Tag
hi link cucumberString            String
hi link cucumberGiven             Conditional
hi link cucumberWhen              Function
hi link cucumberThen              Type
hi link eiffelKeyword		Statement
hi link eiffelProperty		Statement
hi link eiffelInheritClause	Statement
hi link eiffelStatement	Statement
hi link eiffelDeclaration	Statement
hi link eiffelAssertion	Statement
hi link eiffelDebug		Statement
hi link eiffelException	Statement
hi link eiffelGenericCreate	Statement
hi link eiffelAgent		Statement
hi link eiffelConvert		Statement
hi link eiffelTopStruct	PreProc
hi link eiffelAll		Special
hi link eiffelAnchored		Special
hi link eiffelBitType		Special
hi link eiffelBool		Boolean
hi link eiffelString		String
hi link eiffelCharacter	Character
hi link eiffelClassName	Type
hi link eiffelNumber		Number
hi link eiffelStringEscape	Special
hi link eiffelOperator		Special
hi link eiffelArray		Special
hi link eiffelExport		Special
hi link eiffelCreation		Special
hi link eiffelBrackets		Special
hi link eiffelGeneric		Special
hi link eiffelGenericDecl	Special
hi link eiffelConstraint	Special
hi link eiffelCreate		Special
hi link eiffelPredefined	Constant
hi link eiffelComment		Comment
hi link eiffelError		Error
hi link eiffelBadConstant	Error
hi link eiffelStringError	Error
hi link eiffelParenError	Error
hi link eiffelBracketError	Error
hi link eiffelTodo		Todo
hi link mpTeXdelim     mpPrimitive
hi link mpBoolExp      mfBoolExp
hi link mpNumExp       mfNumExp
hi link mpPairExp      mfPairExp
hi link mpPathExp      mfPathExp
hi link mpPenExp       mfPenExp
hi link mpPicExp       mfPicExp
hi link mpStringExp    mfStringExp
hi link mpInternal     mfInternal
hi link mpCommand      mfCommand
hi link mpType         mfType
hi link mpPrimitive    mfPrimitive
hi link mpDef          mfDef
hi link mpVardef       mpDef
hi link mpPrimaryDef   mpDef
hi link mpSecondaryDef mpDef
hi link mpTertiaryDef  mpDef
hi link mpNewInternal  mpInternal
hi link mpVariable     mfVariable
hi link mpConstant     mfConstant
hi link mpOnOff        mpPrimitive
hi link mpDash         mpPrimitive
hi link mpTeXKeyword   Identifier
hi link pfCmd	Statement
hi link pfComment	Comment
hi link pfCont	Statement
hi link pfErrClose	Error
hi link pfIPv4	Type
hi link pfIPv6	Type
hi link pfNetmask	Constant
hi link pfNum	Constant
hi link pfService	Constant
hi link pfString	String
hi link pfTable	Identifier
hi link pfTodo	Todo
hi link pfVar	Identifier
hi link pfVarAssign	Identifier
hi link pfWildAddr	Type
hi link abapError          Error
hi link abapComment        Comment
hi link abapInclude        Include
hi link abapStatement      Statement
hi link abapComplexStatement      Statement
hi link abapSpecial        Special
hi link abapNamespace      Special
hi link abapSpecialTables  Special
hi link abapSymbolOperator abapOperator
hi link abapOperator       Operator
hi link abapCharString     String
hi link abapString         String
hi link abapFloat          Float
hi link abapTypes          Type
hi link abapSymbol         Structure
hi link abapStructure      Structure
hi link abapField          Variable
hi link abapNumber         Number
hi link abapHex            Number
hi link sysctlTodo    Todo
hi link sysctlComment Comment
hi link sysctlToken   Identifier
hi link sysctlTokenEq Operator
hi link sysctlValue   String
hi link modula2Ident		Identifier
hi link modula2StdConst	Boolean
hi link modula2Type		Identifier
hi link modula2StdFunc		Identifier
hi link modula2Header		Type
hi link modula2Keyword		Statement
hi link modula2AttKeyword	PreProc
hi link modula2Comment		Comment
hi link modula2Todo		Todo
hi link modula2String		String
hi link modula2Set		String
hi link cdrtocKeyword                                  Keyword
hi link cdrtocHeaderKeyword                            cdrtocKeyword
hi link cdrtocHeaderCDText                             cdrtocHeaderKeyword
hi link cdrtocDelimiter                                Delimiter
hi link cdrtocCDTextDataBinaryEnd                      cdrtocDelimiter
hi link cdrtocHeaderCDTextDataBinaryEnd                cdrtocHeaderCDTextDataBinaryEnd
hi link cdrtocNumber                                   Number
hi link cdrtocCDTextDataBinaryInteger                  cdrtocNumber
hi link cdrtocHeaderCDTextDataBinaryInteger            cdrtocCDTextDataBinaryInteger
hi link cdrtocCDTextDataBinarySeparator                cdrtocDelimiter
hi link cdrtocHeaderCDTextDataBinarySeparator          cdrtocCDTextDataBinarySeparator
hi link cdrtocCDTextDataBinaryStart                    cdrtocDelimiter
hi link cdrtocHeaderCDTextDataBinaryStart              cdrtocCDTextDataBinaryStart
hi link cdrtocString                                   String
hi link cdrtocCDTextDataString                         cdrtocString
hi link cdrtocHeaderCDTextDataString                   cdrtocCDTextDataString
hi link cdrtocCDTextDataStringDelimiters               cdrtocDelimiter
hi link cdrtocHeaderCDTextDataStringDelimiters         cdrtocCDTextDataStringDelimiters
hi link cdrtocCDTextDataStringSpecialChar              SpecialChar
hi link cdrtocHeaderCDTextDataStringSpecialChar        cdrtocCDTextDataStringSpecialChar
hi link cdrtocCDTextEnd                                cdrtocDelimiter
hi link cdrtocHeaderCDTextEnd                          cdrtocCDTextEnd
hi link cdrtocType                                     Type
hi link cdrtocCDTextItem                               cdrtocType
hi link cdrtocHeaderCDTextItem                         cdrtocCDTextItem
hi link cdrtocHeaderCDTextLanguageMap                  cdrtocHeaderKeyword
hi link cdrtocCDTextStart                              cdrtocDelimiter
hi link cdrtocHeaderCDTextStart                        cdrtocCDTextStart
hi link cdrtocHeaderCatalog                            cdrtocHeaderKeyword
hi link cdrtocHeaderCatalogNumber                      cdrtocString
hi link cdrtocComment                                  Comment
hi link cdrtocHeaderCommentInitial                     cdrtocComment
hi link cdrtocHeaderLanguage                           cdrtocKeyword
hi link cdrtocLanguageEnd                              cdrtocDelimiter
hi link cdrtocHeaderLanguageEnd                        cdrtocLanguageEnd
hi link cdrtocHeaderLanguageMapColon                   cdrtocDelimiter
hi link cdrtocIdentifier                               Identifier
hi link cdrtocHeaderLanguageMapCountryCode             cdrtocNumber
hi link cdrtocHeaderLanguageMapCountryCodeName         cdrtocIdentifier
hi link cdrtocHeaderLanguageMapEnd                     cdrtocDelimiter
hi link cdrtocHeaderLanguageMapLanguageNumber          cdrtocNumber
hi link cdrtocHeaderLanguageMapStart                   cdrtocDelimiter
hi link cdrtocLanguageNumber                           cdrtocNumber
hi link cdrtocHeaderLanguageNumber                     cdrtocLanguageNumber
hi link cdrtocLanguageStart                            cdrtocDelimiter
hi link cdrtocHeaderLanguageStart                      cdrtocLanguageStart
hi link cdrtocHeaderTOCType                            cdrtocType
hi link cdrtocTodo                                     Todo
hi link cdrtocTrackKeyword                             cdrtocKeyword
hi link cdrtocTrack                                    cdrtocTrackKeyword
hi link cdrtocTrackCDText                              cdrtocTrackKeyword
hi link cdrtocTrackCDTextDataBinaryEnd                 cdrtocHeaderCDTextDataBinaryEnd
hi link cdrtocTrackCDTextDataBinaryInteger             cdrtocHeaderCDTextDataBinaryInteger
hi link cdrtocTrackCDTextDataBinarySeparator           cdrtocHeaderCDTextDataBinarySeparator
hi link cdrtocTrackCDTextDataBinaryStart               cdrtocHeaderCDTextDataBinaryStart
hi link cdrtocTrackCDTextDataString                    cdrtocHeaderCDTextDataString
hi link cdrtocTrackCDTextDataStringDelimiters          cdrtocCDTextDataStringDelimiters
hi link cdrtocTrackCDTextDataStringSpecialChar         cdrtocCDTextDataStringSpecialChar
hi link cdrtocTrackCDTextEnd                           cdrtocCDTextEnd
hi link cdrtocTrackCDTextItem                          cdrtocCDTextItem
hi link cdrtocTrackCDTextStart                         cdrtocCDTextStart
hi link cdrtocLength                                   cdrtocNumber
hi link cdrtocTrackDatafileLength                      cdrtocLength
hi link cdrtocTrackFifoLength                          cdrtocLength
hi link cdrtocPreProc                                  PreProc
hi link cdrtocTrackFlag                                cdrtocPreProc
hi link cdrtocTrackFlagCopy                            cdrtocTrackFlag
hi link cdrtocSpecial                                  Special
hi link cdrtocTrackFlagNo                              cdrtocSpecial
hi link cdrtocTrackFlagPreEmphasis                     cdrtocTrackFlag
hi link cdrtocTrackISRC                                cdrtocTrackFlag
hi link cdrtocTrackIndex                               cdrtocTrackKeyword
hi link cdrtocMMSSFF                                   cdrtocLength
hi link cdrtocTrackIndexMMSSFF                         cdrtocMMSSFF
hi link cdrtocTrackCDTextLanguage                      cdrtocTrackKeyword
hi link cdrtocTrackCDTextLanguageEnd                   cdrtocLanguageEnd
hi link cdrtocTrackCDTextLanguageNumber                cdrtocLanguageNumber
hi link cdrtocTrackCDTextLanguageStart                 cdrtocLanguageStart
hi link cdrtocTrackContents                            StorageClass
hi link cdrtocTrackMarker                              cdrtocTrackContents
hi link cdrtocTrackMarkerEndMMSSFF                     cdrtocMMSSFF
hi link cdrtocTrackMarkerStartMMSSFF                   cdrtocMMSSFF
hi link cdrtocTrackMode                                Type
hi link cdrtocTrackPregap                              cdrtocTrackContents
hi link cdrtocTrackPregapMMSSFF                        cdrtocMMSSFF
hi link cdrtocTrackSilenceLength                       cdrtocLength
hi link cdrtocTrackSubChannelMode                      cdrtocPreProc
hi link cdrtocTrackSubTrack                            cdrtocTrackContents
hi link cdrtocFilename                                 cdrtocString
hi link cdrtocTrackSubTrackDatafileFilename            cdrtocFilename
hi link cdrtocTrackSubTrackDatafileFilenameDelimiters  cdrtocTrackSubTrackDatafileFilename
hi link cdrtocSpecialChar                              SpecialChar
hi link cdrtocTrackSubTrackDatafileFilenameSpecialChar cdrtocSpecialChar
hi link cdrtocTrackSubTrackDatafileLength              cdrtocLength
hi link cdrtocTrackSubTrackFifoFilename                cdrtocFilename
hi link cdrtocTrackSubTrackFifoFilenameDelimiters      cdrtocTrackSubTrackFifoFilename
hi link cdrtocTrackSubTrackFifoFilenameSpecialChar     cdrtocSpecialChar
hi link cdrtocTrackSubTrackFifoLength                  cdrtocLength
hi link cdrtocTrackSubTrackFileFilename                cdrtocFilename
hi link cdrtocTrackSubTrackFileFilenameDelimiters      cdrtocTrackSubTrackFileFilename
hi link cdrtocTrackSubTrackFileFilenameSpecialChar     cdrtocSpecialChar
hi link cdrtocTrackSubTrackFileLength                  cdrtocLength
hi link cdrtocTrackSubTrackFileStart                   cdrtocLength
hi link cdrtocTrackSubTrackZeroDataLength              cdrtocLength
hi link cdrtocTrackSubTrackZeroDataMode                Type
hi link cdrtocTrackSubTrackZeroDataSubChannelMode      cdrtocPreProc
hi link cdrtocTrackSubTrackdatafileFilenameSpecialChar cdrtocSpecialChar
hi link litestepTodo                              Todo
hi link litestepComment                           Comment
hi link litestepDirective                         Keyword
hi link litestepGenericDirective                  litestepDirective
hi link litestepPreProc                           PreProc
hi link litestepMultiCommandStart                 litestepPreProc
hi link litestepMultiCommand                      litestepDirective
hi link litestepDelimiter                         Delimiter
hi link litestepVariableExpansion                 litestepDelimiter
hi link litestepNumber                            Number
hi link litestepString                            String
hi link litestepSubValue                          litestepString
hi link litestepBoolean                           Boolean
hi link litestepOperator                          Operator
hi link litestepRelationalOperator                litestepOperator
hi link litestepLogicalOperator                   litestepOperator
hi link litestepMathOperator                      litestepOperator
hi link litestepBuiltinDirective                  litestepDirective
hi link litestepDeprecatedBuiltinDirective        Error
hi link litestepVariable                          Identifier
hi link litestepBuiltinFolderVariable             Identifier
hi link litestepBuiltinConditionalVariable        Identifier
hi link litestepBuiltinResourceVariable           Identifier
hi link litestepBuiltinGUIDFolderMappingVariable  Identifier
hi link litestepBangStart                         litestepPreProc
hi link litestepBang                              litestepDirective
hi link litestepBuiltinBang                       litestepBang
hi link calendarTodo          Todo
hi link calendarComment       Comment
hi link calendarCppString     String
hi link calendarSpecial       SpecialChar
hi link calendarPreCondit     PreCondit
hi link calendarCppOut        Comment
hi link calendarCppOut2       calendarCppOut
hi link calendarCppSkip       calendarCppOut
hi link calendarIncluded      String
hi link calendarInclude       Include
hi link calendarDefine        Macro
hi link calendarPreProc       PreProc
hi link calendarKeyword       Keyword
hi link calendarNumber        Number
hi link calendarMonth         String
hi link calendarWeekday       String
hi link calendarWeekdayMod    Special
hi link calendarTime          Number
hi link calendarVariable      Identifier
hi link javaScriptComment		Comment
hi link javaScriptLineComment		Comment
hi link javaScriptCommentTodo		Todo
hi link javaScriptSpecial		Special
hi link javaScriptStringS		String
hi link javaScriptStringD		String
hi link javaScriptCharacter		Character
hi link javaScriptSpecialCharacter	javaScriptSpecial
hi link javaScriptNumber		javaScriptValue
hi link javaScriptConditional		Conditional
hi link javaScriptRepeat		Repeat
hi link javaScriptBranch		Conditional
hi link javaScriptOperator		Operator
hi link javaScriptType			Type
hi link javaScriptStatement		Statement
hi link javaScriptFunction		Function
hi link javaScriptBraces		Function
hi link javaScriptError		Error
hi link javaScrParenError		javaScriptError
hi link javaScriptNull			Keyword
hi link javaScriptBoolean		Boolean
hi link javaScriptRegexpString		String
hi link javaScriptIdentifier		Identifier
hi link javaScriptLabel		Label
hi link javaScriptException		Exception
hi link javaScriptMessage		Keyword
hi link javaScriptGlobal		Keyword
hi link javaScriptMember		Keyword
hi link javaScriptDeprecated		Exception 
hi link javaScriptReserved		Keyword
hi link javaScriptDebug		Debug
hi link javaScriptConstant		Label
hi link htmlTag                     Function
hi link htmlEndTag                  Identifier
hi link htmlArg                     Type
hi link htmlTagName                 htmlStatement
hi link htmlSpecialTagName          Exception
hi link htmlValue                     String
hi link htmlSpecialChar             Special
hi link htmlPreStmt            PreProc
hi link htmlPreError           Error
hi link htmlPreProc            PreProc
hi link htmlPreAttr            String
hi link htmlPreProcAttrName    PreProc
hi link htmlPreProcAttrError   Error
hi link htmlSpecial            Special
hi link htmlSpecialChar        Special
hi link htmlString             String
hi link htmlStatement          Statement
hi link htmlComment            Comment
hi link htmlCommentPart        Comment
hi link htmlValue              String
hi link htmlCommentError       htmlError
hi link htmlTagError           htmlError
hi link htmlEvent              javaScript
hi link htmlError              Error
hi link javaScript             Special
hi link javaScriptExpression   javaScript
hi link htmlCssStyleComment    Comment
hi link htmlCssDefinition      Special
hi link ttlCharacter Character
hi link ttlNumber Number
hi link ttlComment Comment
hi link ttlFirstComment Comment
hi link ttlString String
hi link ttlLabel Label
hi link ttlIf Conditional
hi link ttlElseIf Conditional
hi link ttlThen Conditional
hi link ttlConditional Conditional
hi link ttlRepeat Repeat
hi link ttlControlCommand Keyword
hi link ttlVar Identifier
hi link ttlOperator Operator
hi link ttlCommunicationCommand Keyword
hi link ttlStringCommand Keyword
hi link ttlFileCommand Keyword
hi link ttlPasswordCommand Keyword
hi link ttlMiscCommand Keyword
hi link focexecString1		String
hi link focexecString2		String
hi link focexecNumber		Number
hi link focexecComment		Comment
hi link focexecTable		Keyword
hi link focexecModify		Keyword
hi link focexecNormal		Keyword
hi link focexecSet		Keyword
hi link focexecDash		Keyword
hi link focexecFileDef		Keyword
hi link focexecJoin		Keyword
hi link focexecAmperVar	Identifier
hi link focexecFuse		Function
hi link abelHeader		abelStatement
hi link abelSection		abelStatement
hi link abelDeclaration	abelStatement
hi link abelLogicalOperator	abelOperator
hi link abelRangeOperator	abelOperator
hi link abelAlternateOperator	abelOperator
hi link abelArithmeticOperator	abelOperator
hi link abelRelationalOperator	abelOperator
hi link abelAssignmentOperator	abelOperator
hi link abelTruthTableOperator	abelOperator
hi link abelSpecifier		abelStatement
hi link abelOperator		abelStatement
hi link abelStatement		Statement
hi link abelIdentifier		Identifier
hi link abelTypeId		abelType
hi link abelTypeIdChar		abelType
hi link abelType		Type
hi link abelNumber		abelString
hi link abelString		String
hi link abelConstant		Constant
hi link abelComment		Comment
hi link abelExtension		abelSpecial
hi link abelSpecialChar	abelSpecial
hi link abelTypeIdEnd		abelSpecial
hi link abelSpecial		Special
hi link abelDirective		PreProc
hi link abelTodo		Todo
hi link abelError		Error
hi link sedAddress		Macro
hi link sedACI		NONE
hi link sedBranch		Label
hi link sedComment		Comment
hi link sedDelete		Function
hi link sedError		Error
hi link sedFlag		Type
hi link sedFlagwrite		Constant
hi link sedFunction		Function
hi link sedLabel		Label
hi link sedLineCont		Special
hi link sedPutHoldspc	Function
hi link sedReplaceMeta	Special
hi link sedRegexpMeta	Special
hi link sedRW		Constant
hi link sedSemicolon		Special
hi link sedST		Function
hi link sedSpecial		Special
hi link sedWhitespace	NONE
hi link sedTab		Todo
hi link radianceKeyword	Keyword
hi link radianceExtraType	Type
hi link radianceSurfType	Type
hi link radianceLightType	Type
hi link radianceMatType	Type
hi link radiancePatType	Type
hi link radianceTexType	Type
hi link radianceMixType	Type
hi link radianceComment	Comment
hi link radianceCommand	Function
hi link radianceID		String
hi link radianceTodo		Todo
hi link eximComment Comment
hi link eximFixme Todo
hi link eximEnd Keyword
hi link eximNumber Number
hi link eximDriverName Constant
hi link eximConstant Constant
hi link eximTime Constant
hi link eximKeyword Type
hi link eximSpecialChar Special
hi link eximMacroName Preproc
hi link eximTransport Identifier
hi link viminfoComment	Comment
hi link viminfoError	Error
hi link viminfoStatement	Statement
hi link viminfoNew		String
hi link raccTodo        Todo
hi link raccComment     Comment
hi link raccPrecSpec    Type
hi link raccPrecToken   raccToken
hi link raccPrecString  raccString
hi link raccTokenDecl   Keyword
hi link raccToken       Identifier
hi link raccTokenR      raccToken
hi link raccExpect      Keyword
hi link raccNumber      Number
hi link raccOptions     Keyword
hi link raccOptionsR    Identifier
hi link raccConvToken   raccToken
hi link raccStart       Keyword
hi link raccTargetS     Type
hi link raccSpecial     special
hi link raccString      String
hi link raccTarget      Type
hi link raccDelimiter   Delimiter
hi link raccPreProc     PreProc
hi link raccKeyword     Keyword
hi link cudaStorageClass	StorageClass
hi link cudaStructure	Structure
hi link cudaType		Type
hi link cudaVariable	Identifier
hi link cudaConstant	Constant
hi link mrxvtrcError	Error
hi link mrxvtrcComment	Comment
hi link mrxvtrcClass	Statement
hi link mrxvtrcOptions	mrxvtrcClass
hi link mrxvtrcBColon	mrxvtrcClass
hi link mrxvtrcCColon	mrxvtrcClass
hi link mrxvtrcNColon	mrxvtrcClass
hi link mrxvtrcSColon	mrxvtrcClass
hi link mrxvtrcProfile	mrxvtrcClass
hi link mrxvtrcPSOpts	mrxvtrcClass
hi link mrxvtrcPCOpts	mrxvtrcClass
hi link mrxvtrcPNOpts	mrxvtrcClass
hi link mrxvtrcBoolVal	Boolean
hi link mrxvtrcStrVal	String
hi link mrxvtrcColorVal	Constant
hi link mrxvtrcNumVal	Number
hi link mrxvtrcSBstyle	mrxvtrcStrVal
hi link mrxvtrcSBalign	mrxvtrcStrVal
hi link mrxvtrcTSmode	mrxvtrcStrVal
hi link mrxvtrcGrkKbd	mrxvtrcStrVal
hi link mrxvtrcXftWt	mrxvtrcStrVal
hi link mrxvtrcXftSl	mrxvtrcStrVal
hi link mrxvtrcXftWd	mrxvtrcStrVal
hi link mrxvtrcXftHt	mrxvtrcStrVal
hi link mrxvtrcPedit	mrxvtrcStrVal
hi link mrxvtrcMod		mrxvtrcStrVal
hi link mrxvtrcSelSty	mrxvtrcStrVal
hi link mrxvtrcMacro	Identifier
hi link mrxvtrcKey		mrxvtrcClass
hi link mrxvtrcTitle	mrxvtrcStrVal
hi link mrxvtrcShell	Special
hi link mrxvtrcCmd		PreProc
hi link mrxvtrcSubwin	mrxvtrcStrVal
hi link spyceDirectiveKeyword	Special
hi link spyceDirectiveArg	Type
hi link spyceDirectiveString	String
hi link spyceDirectiveValue	String
hi link spyceDelim		Special
hi link spyceStmtDelim		spyceDelim
hi link spyceChunkDelim		spyceDelim
hi link spyceEvalDelim		spyceDelim
hi link spyceLambdaDelim	spyceDelim
hi link spyceCommentDelim	Comment
hi link spyceBeginErrorS	Error
hi link spyceBeginErrorA	Error
hi link spyceEndErrorS		Error
hi link spyceEndErrorA		Error
hi link spyceStmtS		spyce
hi link spyceStmtA		spyce
hi link spyceChunkS		spyce
hi link spyceChunkA		spyce
hi link spyceEvalS		spyce
hi link spyceEvalA		spyce
hi link spyceDirectiveS		spyce
hi link spyceDirectiveA		spyce
hi link spyceCommentS		Comment
hi link spyceCommentA		Comment
hi link spyceLambdaS		Normal
hi link spyceLambdaA		Normal
hi link spyce			Statement
hi link atlasConditional	Conditional
hi link atlasRepeat		Repeat
hi link atlasStatement	Statement
hi link atlasNumber		Number
hi link atlasHexNumber	Number
hi link atlasOctalNumber	Number
hi link atlasBinNumber	Number
hi link atlasDecimalNumber	Float
hi link atlasFormatString	String
hi link atlasString		String
hi link atlasComment		Comment
hi link atlasComment2		Comment
hi link atlasInclude		Include
hi link atlasDefine		Macro
hi link atlasReserved		PreCondit
hi link atlasStorageClass	StorageClass
hi link atlasIdentifier	NONE
hi link atlasSpecial		Special
hi link smilTag			Function
hi link smilEndTag			Identifier
hi link smilArg			Type
hi link smilTagName			smilStatement
hi link smilSpecialTagName		Exception
hi link smilValue			Value
hi link smilSpecialChar		Special
hi link smilSpecial			Special
hi link smilSpecialChar		Special
hi link smilString			String
hi link smilStatement			Statement
hi link smilComment			Comment
hi link smilCommentPart		Comment
hi link smilPreProc			PreProc
hi link smilValue			String
hi link smilCommentError		smilError
hi link smilTagError			smilError
hi link smilError			Error
hi link htmlComment	 Comment
hi link htmlCommentPart Comment
hi link jspComment	 htmlComment
hi link jspTag		 htmlTag
hi link jspDirective	 jspTag
hi link jspDirName	 htmlTagName
hi link jspDirArg	 htmlArg
hi link jspCommand	 jspTag
hi link jspCommandName  htmlTagName
hi link jspCommandArg	 htmlArg
hi link occamType Type
hi link occamKeyword Keyword
hi link occamComment Comment
hi link occamCommentTitle PreProc
hi link occamTodo Todo
hi link occamNote Todo
hi link occamString String
hi link occamCharString String
hi link occamNumber Number
hi link occamCDirective PreProc
hi link occamCDString String
hi link occamPPIdentifier PreProc
hi link occamBoolean Boolean
hi link occamSpecialChar SpecialChar
hi link occamChar Character
hi link occamStructure Structure
hi link occamIdentifier Identifier
hi link occamConstant Constant
hi link occamOperator Operator
hi link occamFunction Ignore
hi link occamRepeat Repeat
hi link occamConditional Conditional
hi link occamBrackets Type
hi link occamParantheses Delimiter
hi link slLabel	Label
hi link slUserLabel	Label
hi link slConditional	Conditional
hi link slRepeat	Repeat
hi link slCharacter	Character
hi link slSpecialCharacter slSpecial
hi link slNumber	Number
hi link slFloat	Float
hi link slParenError	slError
hi link slInParen	slError
hi link slCommentError	slError
hi link slOperator	Operator
hi link slStorageClass	StorageClass
hi link slError	Error
hi link slStatement	Statement
hi link slType		Type
hi link slCommentError	slError
hi link slCommentString slString
hi link slComment2String slString
hi link slCommentSkip	slComment
hi link slString	String
hi link slComment	Comment
hi link slSpecial	SpecialChar
hi link slTodo	Todo
hi link slVariable	Identifier
hi link zoneDirective    Macro
hi link zoneUnknown      Error
hi link zoneOrigin       Statement
hi link zoneOwnerName    Statement
hi link zoneDomain       Identifier
hi link zoneSpecial      Special
hi link zoneTTL          Constant
hi link zoneClass        Include
hi link zoneRRType       Type
hi link zoneIPAddr       Number
hi link zoneIP6Addr      Number
hi link zoneText         String
hi link zoneNumber       Number
hi link zoneSerial       Special
hi link zoneErrParen     Error
hi link zoneComment      Comment
hi link ptcapComment		Comment
hi link ptcapDelimiter	Delimiter
hi link ptcapEntry		Todo
hi link ptcapError		Error
hi link ptcapEscapedChar	SpecialChar
hi link ptcapField		Type
hi link ptcapLeadBlank	NONE
hi link ptcapLineCont	Special
hi link ptcapNames		Label
hi link ptcapNumber		NONE
hi link ptcapNumberError	Error
hi link ptcapOperator	Operator
hi link ptcapSpecialCap	Type
hi link ptcapString		NONE
hi link sgmlTodo			Todo
hi link sgmlTag			Function
hi link sgmlEndTag			Identifier
hi link sgmlAbbrEndTag		Identifier
hi link sgmlEmptyTag		Function
hi link sgmlEntity			Statement
hi link sgmlEntityPunct		Type
hi link sgmlAttribPunct		Comment
hi link sgmlAttrib			Type
hi link sgmlValue			String
hi link sgmlString			String
hi link sgmlComment			Comment
hi link sgmlCommentPart		Comment
hi link sgmlCommentError		Error
hi link sgmlError			Error
hi link sgmlProcessingDelim		Comment
hi link sgmlProcessing		Type
hi link sgmlCdata			String
hi link sgmlCdataCdata		Statement
hi link sgmlCdataStart		Type
hi link sgmlCdataEnd		Type
hi link sgmlDocTypeDecl		Function
hi link sgmlDocTypeKeyword		Statement
hi link sgmlInlineDTD		Function
hi link sgmlUnicodeNumberAttr	Number
hi link sgmlUnicodeSpecifierAttr	SpecialChar
hi link sgmlUnicodeNumberData	Number
hi link sgmlUnicodeSpecifierData	SpecialChar
hi link xqNumber    Number
hi link xqFloat     Number
hi link xqString    String
hi link xqVariable  Identifier
hi link xqComment   Comment
hi link xqSeparator Operator
hi link xqStatement Statement
hi link xqFunction  Function
hi link xqOperator  Operator
hi link xqType      Type
hi link xqXPath     Operator
hi link XQdoc       Special
hi link xqExist     Operator
hi link postscrComment         Comment
hi link postscrConstant        Constant
hi link postscrString          String
hi link postscrASCIIString     postscrString
hi link postscrHexString       postscrString
hi link postscrASCII85String   postscrString
hi link postscrNumber          Number
hi link postscrInteger         postscrNumber
hi link postscrHex             postscrNumber
hi link postscrRadix           postscrNumber
hi link postscrFloat           Float
hi link postscrBoolean         Boolean
hi link postscrIdentifier      Identifier
hi link postscrProcedure       Function
hi link postscrName            Statement
hi link postscrConditional     Conditional
hi link postscrRepeat          Repeat
hi link postscrL2Repeat        postscrRepeat
hi link postscrOperator        Operator
hi link postscrL1Operator      postscrOperator
hi link postscrL2Operator      postscrOperator
hi link postscrL3Operator      postscrOperator
hi link postscrMathOperator    postscrOperator
hi link postscrLogicalOperator postscrOperator
hi link postscrBinaryOperator  postscrOperator
hi link postscrDSCComment      SpecialComment
hi link postscrSpecialChar     SpecialChar
hi link postscrTodo            Todo
hi link postscrError           Error
hi link postscrSpecialCharError postscrError
hi link postscrASCII85CharError postscrError
hi link postscrHexCharError    postscrError
hi link postscrASCIIStringError postscrError
hi link postscrIdentifierError postscrError
hi link postscrGSOperator      postscrOperator
hi link postscrGSMathOperator  postscrMathOperator
hi link postscrGSOperator      postscrError
hi link postscrGSMathOperator  postscrError
hi link vmasmComment		Comment
hi link vmasmTodo		Todo
hi link vmasmhexNumber		Number		" Constant
hi link vmasmoctNumber		Number		" Constant
hi link vmasmbinNumber		Number		" Constant
hi link vmasmdecNumber		Number		" Constant
hi link vmasmfloatNumber	Number		" Constant
hi link vmasmReg		Identifier
hi link vmasmOperator		Identifier
hi link vmasmInclude		Include		" PreProc
hi link vmasmMacro		Macro		" PreProc
hi link vmasmDirective		Special
hi link vmasmPreCond		Special
hi link vmasmOpcode		Statement
hi link vmasmCond		Conditional	" Statement
hi link vmasmRepeat		Repeat		" Statement
hi link vmasmLabel		Type
hi link dtdFunction		Function
hi link dtdTag		Normal
hi link dtdType		Type
hi link dtdAttrType		dtdType
hi link dtdAttrDef		dtdType
hi link dtdConstant		Constant
hi link dtdString		dtdConstant
hi link dtdEnum		dtdConstant
hi link dtdCard		dtdFunction
hi link dtdEntity		Statement
hi link dtdEntityPunct	dtdType
hi link dtdParamEntityInst	dtdConstant
hi link dtdParamEntityPunct	dtdType
hi link dtdParamEntityDecl	dtdType
hi link dtdParamEntityDPunct dtdComment
hi link dtdComment		Comment
hi link dtdTagName		Statement
hi link dtdError		Error
hi link dtdTodo		Todo
hi link tcshError		Error
hi link tcshBuiltin		Statement
hi link tcshShellVar	Preproc
hi link tcshEnvVar		tcshShellVar
hi link tcshAliases		tcshShellVar
hi link tcshAliCmd		Identifier
hi link tcshCommands	Identifier
hi link tcshIf		tcshBuiltin
hi link tcshWhile		tcshBuiltin
hi link tcshBindkeyFuncs	Function
hi link tcshExprStart	tcshBuiltin
hi link tcshExprVar		tcshUsrVar
hi link tcshExprOp		tcshOperator
hi link tcshExprEnd		tcshOperator
hi link tcshComment		Comment
hi link tcshCommentTi	Preproc
hi link tcshSharpBang	tcshCommentTi
hi link tcshTodo		Todo
hi link tcshSQuote		Constant
hi link tcshDQuote		tcshSQuote
hi link tcshBQuoteGrp	Include
hi link tcshVarError	Error
hi link tcshUsrVar		Type
hi link tcshArgv		tcshUsrVar
hi link tcshSubst		tcshUsrVar
hi link tcshModifier	tcshArguement
hi link tcshModifierError	tcshVarError
hi link tcshMeta		tcshSubst
hi link tcshRedir		tcshOperator
hi link tcshHereDoc		tcshSQuote
hi link tcshOperator	Operator
hi link tcshNumber		Number
hi link tcshArguement	Special
hi link tcshSpecial		SpecialChar
hi link jpropertiesComment	Comment
hi link jpropertiesTodo		Todo
hi link jpropertiesIdentifier	Identifier
hi link jpropertiesString	String
hi link jpropertiesExtendString	String
hi link jpropertiesCharacter	Character
hi link jpropertiesSpecial	Special
hi link jpropertiesSpecialChar	SpecialChar
hi link jpropertiesError	Error
hi link gpConditional		Conditional
hi link gpRepeat		Repeat
hi link gpError		Error
hi link gpParenError		gpError
hi link gpInParen		gpError
hi link gpStatement		Statement
hi link gpString		String
hi link gpComment		Comment
hi link gpInterface		Type
hi link gpInput		Type
hi link gpInterfaceKey		Statement
hi link gpFunction		Function
hi link gpScope		Type
hi link gpSpecial		Special
hi link gpTodo			Todo
hi link gpArgs			Type
hi link cmakeCommand Function
hi link cmakeCommandConditional Conditional
hi link cmakeCommandDeprecated WarningMsg
hi link cmakeCommandRepeat Repeat
hi link cmakeComment Comment
hi link cmakeEnvironment Special
hi link cmakeEscaped Special
hi link cmakeGeneratorExpression WarningMsg
hi link cmakeGeneratorExpressions Constant
hi link cmakeLuaComment Comment
hi link cmakeModule Include
hi link cmakeProperty Constant
hi link cmakeRegistry Underlined
hi link cmakeString String
hi link cmakeTodo TODO
hi link cmakeVariableValue Type
hi link cmakeVariable Identifier
hi link cmakeKWExternalProject ModeMsg
hi link cmakeKWadd_compile_options ModeMsg
hi link cmakeKWadd_custom_command ModeMsg
hi link cmakeKWadd_custom_target ModeMsg
hi link cmakeKWadd_definitions ModeMsg
hi link cmakeKWadd_dependencies ModeMsg
hi link cmakeKWadd_executable ModeMsg
hi link cmakeKWadd_library ModeMsg
hi link cmakeKWadd_subdirectory ModeMsg
hi link cmakeKWadd_test ModeMsg
hi link cmakeKWbuild_command ModeMsg
hi link cmakeKWbuild_name ModeMsg
hi link cmakeKWcmake_host_system_information ModeMsg
hi link cmakeKWcmake_minimum_required ModeMsg
hi link cmakeKWcmake_parse_arguments ModeMsg
hi link cmakeKWcmake_policy ModeMsg
hi link cmakeKWconfigure_file ModeMsg
hi link cmakeKWcreate_test_sourcelist ModeMsg
hi link cmakeKWctest_build ModeMsg
hi link cmakeKWctest_configure ModeMsg
hi link cmakeKWctest_coverage ModeMsg
hi link cmakeKWctest_memcheck ModeMsg
hi link cmakeKWctest_run_script ModeMsg
hi link cmakeKWctest_start ModeMsg
hi link cmakeKWctest_submit ModeMsg
hi link cmakeKWctest_test ModeMsg
hi link cmakeKWctest_update ModeMsg
hi link cmakeKWctest_upload ModeMsg
hi link cmakeKWdefine_property ModeMsg
hi link cmakeKWenable_language ModeMsg
hi link cmakeKWexec_program ModeMsg
hi link cmakeKWexecute_process ModeMsg
hi link cmakeKWexport ModeMsg
hi link cmakeKWexport_library_dependencies ModeMsg
hi link cmakeKWfile ModeMsg
hi link cmakeKWfind_file ModeMsg
hi link cmakeKWfind_library ModeMsg
hi link cmakeKWfind_package ModeMsg
hi link cmakeKWfind_path ModeMsg
hi link cmakeKWfind_program ModeMsg
hi link cmakeKWfltk_wrap_ui ModeMsg
hi link cmakeKWforeach ModeMsg
hi link cmakeKWfunction ModeMsg
hi link cmakeKWget_cmake_property ModeMsg
hi link cmakeKWget_directory_property ModeMsg
hi link cmakeKWget_filename_component ModeMsg
hi link cmakeKWget_property ModeMsg
hi link cmakeKWget_source_file_property ModeMsg
hi link cmakeKWget_target_property ModeMsg
hi link cmakeKWget_test_property ModeMsg
hi link cmakeKWif ModeMsg
hi link cmakeKWinclude ModeMsg
hi link cmakeKWinclude_directories ModeMsg
hi link cmakeKWinclude_external_msproject ModeMsg
hi link cmakeKWinclude_guard ModeMsg
hi link cmakeKWinstall ModeMsg
hi link cmakeKWinstall_files ModeMsg
hi link cmakeKWinstall_programs ModeMsg
hi link cmakeKWinstall_targets ModeMsg
hi link cmakeKWlist ModeMsg
hi link cmakeKWload_cache ModeMsg
hi link cmakeKWload_command ModeMsg
hi link cmakeKWmacro ModeMsg
hi link cmakeKWmake_directory ModeMsg
hi link cmakeKWmark_as_advanced ModeMsg
hi link cmakeKWmath ModeMsg
hi link cmakeKWmessage ModeMsg
hi link cmakeKWoption ModeMsg
hi link cmakeKWproject ModeMsg
hi link cmakeKWremove ModeMsg
hi link cmakeKWseparate_arguments ModeMsg
hi link cmakeKWset ModeMsg
hi link cmakeKWset_directory_properties ModeMsg
hi link cmakeKWset_property ModeMsg
hi link cmakeKWset_source_files_properties ModeMsg
hi link cmakeKWset_target_properties ModeMsg
hi link cmakeKWset_tests_properties ModeMsg
hi link cmakeKWsource_group ModeMsg
hi link cmakeKWstring ModeMsg
hi link cmakeKWsubdirs ModeMsg
hi link cmakeKWtarget_compile_definitions ModeMsg
hi link cmakeKWtarget_compile_features ModeMsg
hi link cmakeKWtarget_compile_options ModeMsg
hi link cmakeKWtarget_include_directories ModeMsg
hi link cmakeKWtarget_link_libraries ModeMsg
hi link cmakeKWtarget_sources ModeMsg
hi link cmakeKWtry_compile ModeMsg
hi link cmakeKWtry_run ModeMsg
hi link cmakeKWunset ModeMsg
hi link cmakeKWuse_mangled_mesa ModeMsg
hi link cmakeKWvariable_requires ModeMsg
hi link cmakeKWvariable_watch ModeMsg
hi link cmakeKWwhile ModeMsg
hi link cmakeKWwrite_file ModeMsg
hi link spupCdi	    spupSection
hi link spupConditions   spupSection
hi link spupDeclare	    spupSection
hi link spupEstimation   spupSection
hi link spupExternal	    spupSection
hi link spupFlowsheet    spupSection
hi link spupFunction	    spupSection
hi link spupGlobal	    spupSection
hi link spupHomotopy	    spupSection
hi link spupMacro	    spupSection
hi link spupModel	    spupSection
hi link spupOperation    spupSection
hi link spupOptions	    spupSection
hi link spupProcedure    spupSection
hi link spupProfiles	    spupSection
hi link spupReport	    spupSection
hi link spupTitle	    spupConstant  " this is correct, truly ;)
hi link spupUnit	    spupSection
hi link spupCdiSubs	      spupSubs
hi link spupConditionsSubs spupSubs
hi link spupDeclareSubs    spupSubs
hi link spupEstimationSubs spupSubs
hi link spupExternalSubs   spupSubs
hi link spupFlowsheetSubs  spupSubs
hi link spupFunctionSubs   spupSubs
hi link spupHomotopySubs   spupSubs
hi link spupMacroSubs      spupSubs
hi link spupModelSubs      spupSubs
hi link spupOperationSubs  spupSubs
hi link spupOptionsSubs    spupSubs
hi link spupProcedureSubs  spupSubs
hi link spupReportSubs     spupSubs
hi link spupUnitSubs	      spupSubs
hi link spupCode	       Normal
hi link spupComment	       Comment
hi link spupComment2	       spupComment
hi link spupConditional     Statement
hi link spupConstant	       Constant
hi link spupError	       Error
hi link spupHelp	       Normal
hi link spupIdentifier      Identifier
hi link spupNumber	       Constant
hi link spupOperator	       Special
hi link spupOpenBrace       spupError
hi link spupSection	       Statement
hi link spupSpecial	       spupTextprocGeneric
hi link spupStreams	       Type
hi link spupString	       Constant
hi link spupSubs	       Statement
hi link spupSymbol	       Special
hi link spupTextprocError   Normal
hi link spupTextprocGeneric PreProc
hi link spupTypes	       Type
hi link virataDefSubstError	virataPreProcError
hi link virataDefSubst		virataPreProc
hi link virataInAlter		virataOperator
hi link virataInExec		virataOperator
hi link virataInExport		virataOperator
hi link virataInImport		virataOperator
hi link virataInInstance	virataOperator
hi link virataInMake		virataOperator
hi link virataInModule		virataOperator
hi link virataInProcess	virataOperator
hi link virataInMacAddr	virataHexNumber
hi link virataComment		Comment
hi link virataSpclComment	SpecialComment
hi link virataInCommentTodo	Todo
hi link virataString		String
hi link virataStringError	Error
hi link virataCharacter	Character
hi link virataSpclChar		Special
hi link virataDecNumber	Number
hi link virataHexNumber	Number
hi link virataSizeNumber	Number
hi link virataNumberError	Error
hi link virataIdentError	Error
hi link virataPreProc		PreProc
hi link virataDefine		Define
hi link virataInclude		Include
hi link virataPreCondit	PreCondit
hi link virataPreProcError	Error
hi link virataPreProcWarn	Todo
hi link virataStatement	Statement
hi link virataCfgStatement	Statement
hi link virataOperator		Operator
hi link virataDirective	Keyword
hi link resolvIP Number
hi link resolvIPNetmask Number
hi link resolvHostname String
hi link resolvOption String
hi link resolvIPNameserver Number
hi link resolvHostnameSearch String
hi link resolvIPNetmaskSortList Number
hi link resolvNameServer Identifier
hi link resolvLwserver Identifier
hi link resolvDomain Identifier
hi link resolvSearch Identifier
hi link resolvSortList Identifier
hi link resolvOptions Identifier
hi link resolvComment Comment
hi link resolvOperator Operator
hi link resolvError Error
hi link resolvIPError Error
hi link resolvIPSpecial Special
hi link oraKeyword	  Statement		"usual keywords
hi link oraKeywordGroup  Type			"keywords which group other keywords
hi link oraKeywordPref   oraKeywordGroup	"keywords which act as prefixes
hi link oraKeywordObs	  Todo			"obsolete keywords
hi link oraKeywordUnd	  PreProc		"undocumented keywords
hi link oraKeywordUndObs oraKeywordObs		"undocumented obsolete keywords
hi link oraValue	  Identifier		"values, like true or false
hi link oraModifier	  oraValue		"modifies values
hi link oraString	  String		"strings
hi link oraSpecial	  Special		"special characters
hi link oraError	  Error			"errors
hi link oraParenError	  oraError		"errors caused by mismatching parantheses
hi link oraComment	  Comment		"comments
hi link rnowebDelimiter	Delimiter
hi link rnowebSweaveOpts Statement
hi link rnowebChunkReference Delimiter
hi link fvwmComment		Comment
hi link fvwmEnvVar		Macro
hi link fvwmNumber		Number
hi link fvwmKeyword		Keyword
hi link fvwmPath		Constant
hi link fvwmModConf		Macro
hi link fvwmRGBValue	Constant
hi link fvwmString		String
hi link fvwmBackslash	SpecialChar
hi link fvwmExec		fvwmKeyword
hi link fvwmKey		fvwmKeyword
hi link fvwmModule		fvwmKeyword
hi link fvwmFunction	Function
hi link fvwmSpecialFn	Type
hi link fvwmCursorStyle	fvwmStyleNames
hi link fvwmStyleNames	Identifier
hi link fvwmMStyleNames	fvwmStyleNames
hi link fvwmCSNames		fvwmStyleNames
hi link fvwmGradient	fvwmStyleNames
hi link fvwmCondNames	fvwmStyleNames
hi link fvwmTCNames		fvwmStyleNames
hi link fvwmTRNames		fvwmStyleNames
hi link fvwmWLOpts		fvwmStyleNames
hi link fvwmBNum		Number
hi link fvwmBState		Type
hi link fvwmBStyleNames	fvwmStyleNames
hi link fvwmBStyleFlags	Special
hi link fvwmBStateTF	Constant
hi link fvwmBStateNames	fvwmStyleNames
hi link fvwmBdState		fvwmBState
hi link fvwmBdStyNames	fvwmStyleNames
hi link fvwmBdStyFlags	fvwmBStyleFlags
hi link fvwmTState		fvwmBState
hi link fvwmTStyleNames	fvwmStyleNames
hi link fvwmMPmapNames	fvwmBStyleFlags
hi link fvwmTStyleFlags	fvwmBStyleFlags
hi link fvwmDirection	fvwmBStyleFlags
hi link fvwmKeyWin		Constant
hi link fvwmMouseWin	fvwmKeyWin
hi link fvwmKeyName		Special
hi link fvwmKeyContext	fvwmKeyName
hi link fvwmKeyMods		fvwmKeyName
hi link fvwmMouseButton	fvwmKeyName
hi link fvwmMenuString	String
hi link fvwmIcon		Type
hi link fvwmShortcutKey	SpecialChar
hi link fvwmModuleName	Function
hi link wdiffOld       Special
hi link wdiffNew       Identifier
hi link ishdNumber	    Number
hi link ishdError	    Error
hi link ishdStatement	    Statement
hi link ishdString	    String
hi link ishdComment	    Comment
hi link ishdTodo	    Todo
hi link ishdFunction	    Identifier
hi link ishdConstant	    PreProc
hi link ishdType	    Type
hi link ishdInclude	    Include
hi link ishdDefine	    Macro
hi link ishdIncluded	    String
hi link ishdPreCondit	    PreCondit
hi link ishdHashIf0Skip   ishdHashIf0
hi link ishdHashIf0End    ishdHashIf0
hi link ishdHashIf0	    Comment
hi link inittabComment Comment
hi link inittabFixme Todo
hi link inittabActionName Type
hi link inittabError Error
hi link inittabId Identifier
hi link inittabRunLevels Special
hi link inittabColonProcess inittabColon
hi link inittabColonAction inittabColon
hi link inittabColonRunLevels inittabColon
hi link inittabColon PreProc
hi link inittabShString String
hi link inittabShOption Special
hi link inittabShCommand Statement
hi link Quote            Special
hi link sqlComment	Comment
hi link sqlFunction	Function
hi link sqlKeyword	sqlSpecial
hi link sqlNumber	Number
hi link sqlOperator	sqlStatement
hi link sqlSpecial	Special
hi link sqlStatement	Statement
hi link sqlString	String
hi link sqlType		Type
hi link sqlTodo		Todo
hi link cdrdaoconfTodo              Todo
hi link cdrdaoconfComment           Comment
hi link cdrdaoconfKeyword           Keyword
hi link cdrdaoconfIntegerKeyword    cdrdaoconfKeyword
hi link cdrdaoconfDriverKeyword     cdrdaoconfKeyword
hi link cdrdaoconfDeviceKeyword     cdrdaoconfKeyword
hi link cdrdaoconfPathKeyword       cdrdaoconfKeyword
hi link cdrdaoconfDelimiter         Delimiter
hi link cdrdaoconfIntegerDelimiter  cdrdaoconfDelimiter
hi link cdrdaoconfDriverDelimiter   cdrdaoconfDelimiter
hi link cdrdaoconfDeviceDelimiter   cdrdaoconfDelimiter
hi link cdrdaoconfPathDelimiter     cdrdaoconfDelimiter
hi link cdrdaoconfInteger           Number
hi link cdrdaoconfParanoiaMode      Number
hi link cdrdaoconfDriver            Identifier
hi link cdrdaoconfDevice            cdrdaoconfPath
hi link cdrdaoconfPath              String
hi link esqlcOperator	Operator
hi link esqlcStatement	Statement
hi link esqlcKeyword	esqlcSpecial
hi link esqlcSpecial	Special
hi link esqlcPreProc	PreProc
hi link valgrindSpecLine	Type
hi link valgrindPid0	Special
hi link valgrindPid1	Comment
hi link valgrindPid2	Type
hi link valgrindPid3	Constant
hi link valgrindPid4	Number
hi link valgrindPid5	Identifier
hi link valgrindPid6	Statement
hi link valgrindPid7	Error
hi link valgrindPid8	LineNr
hi link valgrindPid9	Normal
hi link valgrindOptions	Type
hi link valgrindError	Special
hi link valgrindNote	Comment
hi link valgrindSummary	Type
hi link valgrindAt		Special
hi link valgrindAddr	Number
hi link valgrindFunc	Type
hi link valgrindBin		Comment
hi link valgrindSrc		Statement
hi link sshconfigComment        Comment
hi link sshconfigTodo           Todo
hi link sshconfigHostPort       sshconfigConstant
hi link sshconfigNumber         sshconfigConstant
hi link sshconfigConstant       Constant
hi link sshconfigYesNo          sshconfigEnum
hi link sshconfigCipher         sshconfigEnum
hi link sshconfigCiphers	 sshconfigEnum
hi link sshconfigMAC            sshconfigEnum
hi link sshconfigHostKeyAlgo    sshconfigEnum
hi link sshconfigLogLevel       sshconfigEnum
hi link sshconfigSysLogFacility sshconfigEnum
hi link sshconfigAddressFamily  sshconfigEnum
hi link sshconfigIPQoS		 sshconfigEnum
hi link sshconfigKbdInteractive sshconfigEnum
hi link sshconfigKexAlgo	 sshconfigEnum
hi link sshconfigTunnel	 sshconfigEnum
hi link sshconfigPreferredAuth  sshconfigEnum
hi link sshconfigVar            sshconfigEnum
hi link sshconfigEnum           Identifier
hi link sshconfigSpecial        Special
hi link sshconfigKeyword        Keyword
hi link sshconfigHostSect       Type
hi link sshconfigMatch          Type
hi link flexwikiH1                    Title
hi link flexwikiH2                    flexwikiH1
hi link flexwikiH3                    flexwikiH2
hi link flexwikiH4                    flexwikiH3
hi link flexwikiH5                    flexwikiH4
hi link flexwikiH6                    flexwikiH5
hi link flexwikiHR                    flexwikiH6
hi flexwikiBold                       term=bold cterm=bold gui=bold
hi flexwikiItalic                     term=italic cterm=italic gui=italic
hi link flexwikiCode                  Statement
hi link flexwikiWord                  Underlined
hi link flexwikiEscape                Todo
hi link flexwikiPre                   PreProc
hi link flexwikiLink                  Underlined
hi link flexwikiList                  Type
hi link flexwikiTable                 Type
hi link flexwikiEmoticons             Constant
hi link flexwikiDelText               Comment
hi link flexwikiDeEmphasis            Comment
hi link flexwikiInsText               Constant
hi link flexwikiSuperScript           Constant
hi link flexwikiSubScript             Constant
hi link flexwikiCitation              Constant
hi link flexwikiSingleLineProperty    Identifier
hi link xsPrivate    Error
hi link xsSuperseded Error
hi link xsType       Type
hi link xsString     String
hi link xsConstant   Constant
hi link xsException  Exception
hi link xsKeyword    Keyword
hi link xsFunction   Function
hi link xsVariable   Identifier
hi link xsMacro      Macro
hi link contextOptions    Typedef
hi link contextComment    Comment
hi link contextBlockDelim Keyword
hi link contextBuiltin    Keyword
hi link contextDelimiter  Delimiter
hi link contextEscaped    String
hi link contextPreProc    PreProc
hi link contextSectioning PreProc
hi link contextSpecial    Special
hi link contextType       Type
hi link contextStyle      contextType
hi link contextFont       contextType
hi link contextDirectLua  Keyword
hi link tssopParam		Statement
hi link tssopProp		Identifier
hi link tssopArgs		Special
hi link tssopComment		Statement
hi link tssopCommentString	Comment
hi link tssopPropName		Typedef
hi link tssopInteger		Number
hi link tssopFloat		Float
hi link tssopScientific	Float
hi link crontabMin		Number
hi link crontabHr		PreProc
hi link crontabDay		Type
hi link crontabMnth		Number
hi link crontabMnth12		Number
hi link crontabMnthS		Number
hi link crontabMnthN		Number
hi link crontabDow		PreProc
hi link crontabDow7		PreProc
hi link crontabDowS		PreProc
hi link crontabDowN		PreProc
hi link crontabNick		Special
hi link crontabVar		Identifier
hi link crontabPercent		Special
hi link crontabCmd		Statement
hi link crontabCmnt		Comment
hi link specmanConditional	Conditional
hi link specmanConstraint	Conditional
hi link specmanRepeat		Repeat
hi link specmanString		String
hi link specmanComment		Comment
hi link specmanConstant		Macro
hi link specmanNumber		Number
hi link specmanCompare		Operator
hi link specmanOperator		Operator
hi link specmanLogical		Operator
hi link specmanStatement	Statement
hi link specmanHDL		SpecialChar
hi link specmanMethod		Function
hi link specmanInclude		Include
hi link specmanStructure	Structure
hi link specmanBoolean		Boolean
hi link specmanFSM		Label
hi link specmanSpecial		Special
hi link specmanType		Type
hi link specmanTemporal		Type
hi link specmanFile		Include
hi link specmanPreCondit	Include
hi link specmanDefine		Typedef
hi link specmanLabel		Label
hi link specmanPacking		keyword
hi link specmanTodo		Todo
hi link specmanParenError	Error
hi link specmanErrInParen	Error
hi link specmanErrInBracket	Error
hi link rplControl		Statement
hi link rplStatement		Statement
hi link rplAlgConditional	Conditional
hi link rplConditional		Repeat
hi link rplConditionalError	Error
hi link rplRepeat		Repeat
hi link rplCycle		Repeat
hi link rplUntil		Repeat
hi link rplIntrinsic		Special
hi link rplStorage		StorageClass
hi link rplStorageExpr		StorageClass
hi link rplStorageError	Error
hi link rplReadWrite		rplIntrinsic
hi link rplOperator		Operator
hi link rplList		Special
hi link rplArray		Special
hi link rplConstant		Identifier
hi link rplExpr		Type
hi link rplString		String
hi link rplStringGuilles	String
hi link rplStringAntislash	String
hi link rplBinary		Boolean
hi link rplOctal		Boolean
hi link rplDecimal		Boolean
hi link rplHexadecimal		Boolean
hi link rplInteger		Number
hi link rplFloat		Float
hi link rplComplex		Float
hi link rplBoolean		Identifier
hi link rplObsolete		Todo
hi link rplPreCondit		PreCondit
hi link rplInclude		Include
hi link rplIncluded		rplString
hi link rplInclude		Include
hi link rplExecPath		Include
hi link rplPreProc		PreProc
hi link rplComment		Comment
hi link rplCommentLine		Comment
hi link rplCommentString	Comment
hi link rplSubDelimitor	rplStorage
hi link rplCommentError	Error
hi link rplParenError		Error
hi link rplSubError		Error
hi link rplArrayError		Error
hi link rplListError		Error
hi link rplTab			Error
hi link rplBinaryError		Error
hi link rplOctalError		Error
hi link rplDecimalError	Error
hi link rplHexadecimalError	Error
hi link scssComment sassComment
hi link gpgComment  Comment
hi link gpgTodo     Todo
hi link gpgID       Number
hi link gpgOption   Keyword
hi link gpgCommand  Error
hi link gpgArgError Error
hi link xmlTodo		Todo
hi link xmlTag		Function
hi link xmlTagName		Function
hi link xmlEndTag		Identifier
hi link xmlEntity		Statement
hi link xmlEntityPunct	Type
hi link xmlAttribPunct	Comment
hi link xmlAttrib		Type
hi link xmlString		String
hi link xmlComment		Comment
hi link xmlCommentStart	xmlComment
hi link xmlCommentPart	Comment
hi link xmlCommentError	Error
hi link xmlError		Error
hi link xmlProcessingDelim	Comment
hi link xmlProcessing	Type
hi link xmlCdata		String
hi link xmlCdataCdata	Statement
hi link xmlCdataStart	Type
hi link xmlCdataEnd		Type
hi link xmlDocTypeDecl	Function
hi link xmlDocTypeKeyword	Statement
hi link xmlInlineDTD	Function
hi link sqlComment Comment
hi link sqlKeyword Statement
hi link sqlNumber Number
hi link sqlOperator Statement
hi link sqlProcedure Statement
hi link sqlFunction Statement
hi link sqlSystem Identifier
hi link sqlSpecial Special
hi link sqlStatement Statement
hi link sqlString String
hi link sqlType Type
hi link sqlCodes Identifier
hi link sqlTriggers PreProc
hi link rcsKeyword     Keyword
hi link rcsNumber      Identifier
hi link rcsString      String
hi link rcsTextStr     String
hi link rcsSpecial     Special
hi link rcsDiffLines   Special
hi link rcsEOFError    Error
hi link hsModule			  hsStructure
hi link hsImport			  Include
hi link hsImportMod			  hsImport
hi link hsInfix			  PreProc
hi link hsStructure			  Structure
hi link hsStatement			  Statement
hi link hsConditional			  Conditional
hi link hsSpecialChar			  SpecialChar
hi link hsTypedef			  Typedef
hi link hsVarSym			  hsOperator
hi link hsConSym			  hsOperator
hi link hsOperator			  Operator
hi link hsDelimiter			  Delimiter
hi link hsSpecialCharError		  Error
hi link hsString			  String
hi link hsCharacter			  Character
hi link hsNumber			  Number
hi link hsFloat			  Float
hi link hsConditional			  Conditional
hi link hsLiterateComment		  hsComment
hi link hsBlockComment		  hsComment
hi link hsLineComment			  hsComment
hi link hsComment			  Comment
hi link hsPragma			  SpecialComment
hi link hsBoolean			  Boolean
hi link hsType			  Type
hi link hsMaybe			  hsEnumConst
hi link hsOrdering			  hsEnumConst
hi link hsEnumConst			  Constant
hi link hsDebug			  Debug
hi link cCppString		hsString
hi link cCommentStart		hsComment
hi link cCommentError		hsError
hi link cCommentStartError	hsError
hi link cInclude		Include
hi link cPreProc		PreProc
hi link cDefine		Macro
hi link cIncluded		hsString
hi link cError			Error
hi link cPreCondit		PreCondit
hi link cComment		Comment
hi link cCppSkip		cCppOut
hi link cCppOut2		cCppOut
hi link cCppOut		Comment
hi link xmodmapComment    Comment
hi link xmodmapTodo       Todo
hi link xmodmapInt        Number
hi link xmodmapHex        Number
hi link xmodmapOctal      Number
hi link xmodmapOctalError Error
hi link xmodmapKeySym     Constant
hi link xmodmapKeyword    Keyword
hi link zshTodo             Todo
hi link zshComment          Comment
hi link zshPreProc          PreProc
hi link zshQuoted           SpecialChar
hi link zshString           String
hi link zshStringDelimiter  zshString
hi link zshPOSIXString      zshString
hi link zshJobSpec          Special
hi link zshPrecommand       Special
hi link zshDelimiter        Keyword
hi link zshConditional      Conditional
hi link zshException        Exception
hi link zshRepeat           Repeat
hi link zshKeyword          Keyword
hi link zshFunction         None
hi link zshKSHFunction      zshFunction
hi link zshHereDoc          String
hi link zshOperator         None
hi link zshRedir            Operator
hi link zshVariable         None
hi link zshVariableDef      zshVariable
hi link zshDereferencing    PreProc
hi link zshShortDeref       zshDereferencing
hi link zshLongDeref        zshDereferencing
hi link zshDeref            zshDereferencing
hi link zshDollarVar        zshDereferencing
hi link zshCommands         Keyword
hi link zshOptStart         Keyword
hi link zshOption           Constant
hi link zshTypes            Type
hi link zshSwitches         Special
hi link zshNumber           Number
hi link zshSubst            PreProc
hi link zshMathSubst        zshSubst
hi link zshOldSubst         zshSubst
hi link zshSubstDelim       zshSubst
hi link zshGlob             zshSubst
hi link pikeLabel		Label
hi link pikeUserLabel		Label
hi link pikeConditional	Conditional
hi link pikeRepeat		Repeat
hi link pikeCharacter		Character
hi link pikeSpecialCharacter pikeSpecial
hi link pikeNumber		Number
hi link pikeFloat		Float
hi link pikeOctalError		pikeError
hi link pikeParenError		pikeError
hi link pikeInParen		pikeError
hi link pikeCommentError	pikeError
hi link pikeOperator		Operator
hi link pikeInclude		Include
hi link pikePreProc		PreProc
hi link pikeDefine		Macro
hi link pikeIncluded		pikeString
hi link pikeError		Error
hi link pikeStatement		Statement
hi link pikePreCondit		PreCondit
hi link pikeType		Type
hi link pikeCommentError	pikeError
hi link pikeCommentString	pikeString
hi link pikeComment2String	pikeString
hi link pikeCommentSkip	pikeComment
hi link pikeString		String
hi link pikeComment		Comment
hi link pikeSpecial		SpecialChar
hi link pikeTodo		Todo
hi link pikeException		pikeStatement
hi link pikeCompoundType	Constant
hi link cuplsimOrder		cuplStatement
hi link cuplsimBase		cuplStatement
hi link cuplsimBaseType	cuplStatement
hi link cuplsimVectors		cuplStatement
hi link cuplsimStimulus	cuplNumber
hi link cuplsimOutput		cuplNumber
hi link cuplsimOrderFormat	cuplNumber
hi link cuplHeader	cuplStatement
hi link cuplLogicalOperator	 cuplOperator
hi link cuplRangeOperator	 cuplOperator
hi link cuplArithmeticOperator cuplOperator
hi link cuplAssignmentOperator cuplOperator
hi link cuplEqualityOperator	 cuplOperator
hi link cuplTruthTableOperator cuplOperator
hi link cuplOperator	cuplStatement
hi link cuplFunction	cuplStatement
hi link cuplStatement Statement
hi link cuplNumberRange cuplNumber
hi link cuplNumber	  cuplString
hi link cuplString	String
hi link cuplComment	Comment
hi link cuplExtension   cuplSpecial
hi link cuplSpecialChar cuplSpecial
hi link cuplSpecial	Special
hi link cuplDirective PreProc
hi link cuplTodo	Todo
hi link dLineCommentString	dBlockCommentString
hi link dBlockCommentString	dString
hi link dNestedCommentString	dString
hi link dCommentStar		dBlockComment
hi link dCommentPlus		dNestedComment
hi link dParenString dNestString
hi link dBrackString dNestString
hi link dAngleString dNestString
hi link dCurlyString dNestString
hi link dBinary              Number
hi link dDec                 Number
hi link dHex                 Number
hi link dOctal               Number
hi link dFloat               Float
hi link dHexFloat            Float
hi link dDebug               Debug
hi link dBranch              Conditional
hi link dConditional         Conditional
hi link dLabel               Label
hi link dUserLabel           Label
hi link dRepeat              Repeat
hi link dExceptions          Exception
hi link dAssert              Statement
hi link dStatement           Statement
hi link dScopeDecl           dStorageClass
hi link dStorageClass        StorageClass
hi link dBoolean             Boolean
hi link dUnicode             Special
hi link dTokenStringBrack    String
hi link dHereString          String
hi link dNestString          String
hi link dDelimString         String
hi link dRawString           String
hi link dString              String
hi link dHexString           String
hi link dCharacter           Character
hi link dEscSequence         SpecialChar
hi link dFormat              SpecialChar
hi link dSpecialCharError    Error
hi link dOctalError          Error
hi link dOperator            Operator
hi link dOpOverload          Identifier
hi link dConstant            Constant
hi link dTypedef             Typedef
hi link dEnum                Structure
hi link dStructure           Structure
hi link dTodo                Todo
hi link dType                Type
hi link dLineComment         Comment
hi link dBlockComment        Comment
hi link dNestedComment       Comment
hi link dCommentError        Error
hi link dNestedCommentError  Error
hi link dCommentStartError   Error
hi link dExternal            Include
hi link dAnnotation          PreProc
hi link dSharpBang           PreProc
hi link dAttribute           StorageClass
hi link dIdentifier          Identifier
hi link dVersion             dStatement
hi link dVersionIdentifier   Identifier
hi link dScopeIdentifier     Identifier
hi link dTraitsIdentifier    Identifier
hi link dPragma              PreProc
hi link dPragmaIdentifier    Identifier
hi link dExtern              dExternal
hi link dExternIdentifier    Identifier
hi link dAsmBody dUnicode
hi link dAsmStatement dStatement
hi link dAsmOpCode Identifier
hi link ecdComment	Comment
hi link ecdAttr	Type
hi link ecdAttrN	Statement
hi link ecdAttrV	Value
hi link ecdTag		Function
hi link ecdTagN	Statement
hi link ecdTagError	Error
hi link ProgressByte		Number
hi link ProgressCase		Repeat
hi link ProgressComment		Comment
hi link ProgressConditional	Conditional
hi link ProgressDebug		Debug
hi link ProgressDo		Repeat
hi link ProgressEndError		Error
hi link ProgressFor		Repeat
hi link ProgressFunction		Procedure
hi link ProgressIdentifier	Identifier
hi link ProgressInclude		Include
hi link ProgressMatrixDelimiter	Identifier
hi link ProgressNumber		Number
hi link ProgressOperator		Operator
hi link ProgressPreProc		PreProc
hi link ProgressProcedure	Procedure
hi link ProgressQuote		Delimiter
hi link ProgressRepeat		Repeat
hi link ProgressReserved		Statement
hi link ProgressSpaceError	Error
hi link ProgressString		String
hi link ProgressTodo		Todo
hi link ProgressType		Statement
hi link ProgressShowTab		Error
hi link takcmpTitle		   Type
hi link takcmpUnit		   PreProc
hi link takcmpLabel		   Statement
hi link takcmpHeader		   takHeader
hi link takcmpDate		   Identifier
hi link takcmpTime		   Identifier
hi link takcmpInteger		   Number
hi link takcmpFloat		   Special
hi link ncfCommands		Statement
hi link ncfSetCommands	ncfCommands
hi link ncfLogins		ncfCommands
hi link ncfString		String
hi link ncfContString	ncfString
hi link ncfComment		Comment
hi link ncfImplicit		Type
hi link ncfBoolean		Boolean
hi link ncfScript		Identifier
hi link ncfNumber		Number
hi link ncfIPAddr		ncfNumber
hi link ncfHexNumber		ncfNumber
hi link ncfTime		ncfNumber
hi link ncfDSTTime		ncfNumber
hi link ncfPath		Constant
hi link ncfServerName	Special
hi link ncfIPXNet		ncfServerName
hi link ncfTimeTypes		Constant
hi link ncfSetCommandsNum	   ncfSetCommands
hi link ncfSetCommandsBool	   ncfSetCommands
hi link ncfSetCommandsStr	   ncfSetCommands
hi link ncfSetCommandsTime	   ncfSetCommands
hi link ncfSetCommandsTimeDate  ncfSetCommands
hi link ncfSetCommandsBindCon   ncfSetCommands
hi link hamsterHashComment	Comment
hi link hamsterSpecial	Special
hi link hamsterStatement	Statement
hi link hamsterString	String
hi link hamsterFunction	Function
hi link fanCommentString fanString
hi link fanComment2String fanString
hi link fanCommentCharacter fanCharacter
hi link fanBranch			Conditional
hi link fanLabel			Label
hi link fanUserLabel		Label
hi link fanConditional		Conditional
hi link fanRepeat			Repeat
hi link fanExceptions		Exception
hi link fanAssert			Statement
hi link fanStorageClass		StorageClass
hi link fanSlot        		StorageClass
hi link fanField        		StorageClass
hi link fanScopeDecl		StorageClass
hi link fanBoolean		Boolean
hi link fanSpecial		Special
hi link fanSpecialError		Error
hi link fanSpecialCharError	Error
hi link fanTripleString		String
hi link fanString			String
hi link fanDSL			String
hi link fanCharacter		String
hi link fanStringSubst		Identifier
hi link fanUri			SpecialChar
hi link fanSpecialChar		SpecialChar
hi link fanNumber			Number
hi link fanError			Error
hi link fanStringError		Error
hi link fanStatement		Statement
hi link fanOperator		Operator
hi link fanLongOperator		Operator
hi link fanComment		Comment
hi link fanDocComment		Comment
hi link fanLineComment		Comment
hi link fanConstant		Constant
hi link fanTypedef		Typedef
hi link fanTodo			Todo
hi link fanFacet                  PreProc
hi link fanCommentTitle		SpecialComment
hi link fanCommentStar		SpecialComment
hi link fanType			Identifier
hi link fanExternal		Include
hi link fanSpaceError		Error
hi link skillcdfFunctions	Function
hi link skillgeFunctions		Function
hi link skillhiFunctions		Function
hi link skillleFunctions		Function
hi link skilldbefFunctions	Function
hi link skillddFunctions		Function
hi link skillpcFunctions		Function
hi link skilltechFunctions	Function
hi link skillConstants		Constant
hi link skillFunction		Function
hi link skillKeywords		Statement
hi link skillConditional		Conditional
hi link skillRepeat			Repeat
hi link skillString			String
hi link skillTodo			Todo
hi link skillNote			Todo
hi link skillComment			Comment
hi link skillCommentError	Error
hi link htmlosSpecialIdentifier	Operator
hi link htmlosIdentifier	Identifier
hi link htmlosStorageClass	StorageClass
hi link htmlosComment	Comment
hi link htmlosBoolean	Boolean
hi link htmlosStringSingle	String
hi link htmlosStringDouble	String
hi link htmlosNumber	Number
hi link htmlosFloat	Float
hi link htmlosFunctions	Function
hi link htmlosRepeat	Repeat
hi link htmlosConditional	Conditional
hi link htmlosLabel	Label
hi link htmlosStatement	Statement
hi link htmlosKeyword	Statement
hi link htmlosType	Type
hi link htmlosDefine	Define
hi link htmlosParent	Delimiter
hi link htmlosError	Error
hi link htmlosTodo	Todo
hi link htmlosOperator	Operator
hi link htmlosRelation	Operator
hi link stpConditional Conditional
hi link stpComment Comment
hi link stpKeyword Keyword
hi link stpNumber Number
hi link stpOperator Operator
hi link stpSpecial Special
hi link stpStatement Statement
hi link stpString String
hi link stpStringError Error
hi link stpType Type
hi link stpTodo Todo
hi link stpFunction Function
hi link stpGlobals Macro
hi link stpParen Normal
hi link stpParenError Error
hi link stpSQLKeyword Function
hi link stpRepeat Repeat
hi link ribStructure		Structure
hi link ribCommand		Statement
hi link ribStructureComment	SpecialComment
hi link ribLineComment		Comment
hi link ribString		String
hi link ribNumber		Number
hi link ribFloat		Float
hi link udevpermTodo        Todo
hi link udevpermComment     Comment
hi link udevpermDevice      String
hi link udevpermPattern     SpecialChar
hi link udevpermPatRange    udevpermPattern
hi link udevpermColon       Normal
hi link udevpermUserColon   udevpermColon
hi link udevpermUser        Identifier
hi link udevpermGroupColon  udevpermColon
hi link udevpermGroup       Type
hi link udevpermPermColon   udevpermColon
hi link udevpermPerm        Number
hi link udevpermOctalZero   PreProc
hi link udevpermOctalError  Error
hi link quakeComment      Comment
hi link quakeTodo         Todo
hi link quakeString       String
hi link quakeNumber       Number
hi link quakeOctal        Number
hi link quakeOctalZero    PreProc
hi link quakeFloat        Number
hi link quakeOctalError   Error
hi link quakeCommand      quakeCommands
hi link quake1Command     quakeCommands
hi link quake12Command    quakeCommands
hi link quake2Command     quakeCommands
hi link quake23Command    quakeCommands
hi link quake3Command     quakeCommands
hi link quakeCommands     Keyword
hi link etermTodo             Todo
hi link etermComment          Comment
hi link etermMagic            PreProc
hi link etermNumber           Number
hi link etermString           String
hi link etermBoolean          Boolean
hi link etermPreProc          PreProc
hi link etermFunctions        Function
hi link etermKeyMod           Constant
hi link etermOption           Keyword
hi link etermColorOptions     etermOption
hi link etermColor            String
hi link etermVideoType        Type
hi link etermColorType        Type
hi link etermColorNumber      Number
hi link etermColorSpec        etermColor
hi link etermContext          Keyword
hi link etermAttrOptions      etermOption
hi link etermGeometry         String
hi link etermScrollbarType    Type
hi link etermFontType         Type
hi link etermIClassOptions    etermOption
hi link etermImageOptions     etermOption
hi link etermImageTypes       Type
hi link etermImageModes       Type
hi link etermImageModesAllow  Keyword
hi link etermImageModesR      Type
hi link etermImageState       Keyword
hi link etermImageColorFG     etermColor
hi link etermImageColorBG     etermColor
hi link etermImageGeom        String
hi link etermImageCmod        etermOption
hi link etermImageBrightness  Number
hi link etermImageContrast    Number
hi link etermImageGamma       Number
hi link etermMenuItemOptions  etermOption
hi link etermMenuItemAction   Keyword
hi link etermMenuOptions      etermOption
hi link etermBind             Keyword
hi link etermBindMods         Identifier
hi link etermBindTo           Keyword
hi link etermBindType         Type
hi link etermBindParam        String
hi link etermButtonOptions    etermOption
hi link etermDockOption       etermOption
hi link etermButtonText       String
hi link etermButtonIcon       String
hi link etermButtonIconFile   String
hi link etermButtonAction     Keyword
hi link etermMultiOptions     etermOption
hi link etermEncoding         Identifier
hi link etermXimOptions       etermOption
hi link etermInputMethod      Identifier
hi link etermPreeditType      Type
hi link etermTogOptions       etermOption
hi link etermKeyboardOptions  etermOption
hi link etermKeysym           Constant
hi link etermMiscOptions      etermOption
hi link etermEScreenOptions   etermOption
hi link etermURL              Identifier
hi link formConditional	Conditional
hi link formNumber		Number
hi link formStatement		Statement
hi link formComment		Comment
hi link formPreProc		PreProc
hi link formDirective		PreProc
hi link formType		Type
hi link formString		String
hi link formNestedString	String
hi link formReserved           Error
hi link formTodo               Todo
hi link formSpecial            SpecialChar
hi link formHeaderStatement	Statement
hi link formHeaderStatement	HeaderStatement
hi HeaderStatement term=underline ctermfg=LightGreen guifg=LightGreen gui=bold
hi HeaderStatement term=underline ctermfg=DarkGreen guifg=SeaGreen gui=bold
hi Conditional guifg=LightBlue gui=bold
hi Statement guifg=LightYellow
hi link changelogText		Normal
hi link changelogBullet	Type
hi link changelogColon		Type
hi link changelogFiles		Comment
hi link changelogFuncs	Comment
hi link changelogHeader	Statement
hi link changelogMail		Special
hi link changelogNumber	Number
hi link changelogMonth		Number
hi link changelogDay		Number
hi link changelogError		Folded
hi link mailaliasesTodo         Todo
hi link mailaliasesComment      Comment
hi link mailaliasesName         Identifier
hi link mailaliasesColon        Delimiter
hi link mailaliasesValueAddress String
hi link mailaliasesValueFile    String
hi link mailaliasesValueCommand String
hi link mailaliasesValueInclude PreProc
hi link mailaliasesValueSep     Delimiter
hi link jargonChaptTitle	Title
hi link jargonEmailAddr	 Comment
hi link jargonUrl	 Comment
hi link jargonMark	Label
hi link javaccSpecToken Statement
hi link javaccActionToken Type
hi link javaccPackages javaScopeDecl
hi link javaccToken String
hi link javaccError Error
hi link scilabStatement				Statement
hi link scilabFunction				Keyword
hi link scilabPredicate				Keyword
hi link scilabKeyword				Keyword
hi link scilabDebug					Debug
hi link scilabRepeat				Repeat
hi link scilabConditional			Conditional
hi link scilabMultiplex				Conditional
hi link scilabConstant				Constant
hi link scilabBoolean				Boolean
hi link scilabDelimiter				Delimiter
hi link scilabMlistAccess			Delimiter
hi link scilabComparison			Operator
hi link scilabLogical				Operator
hi link scilabAssignment			Operator
hi link scilabArithmetic			Operator
hi link scilabRange					Operator
hi link scilabLineContinuation		Underlined
hi link scilabTransposition			Operator
hi link scilabTodo					Todo
hi link scilabComment				Comment
hi link scilabNumber				Number
hi link scilabString				String
hi link scilabIdentifier			Identifier
hi link scilabOverload				Special
hi link rustDecNumber       rustNumber
hi link rustHexNumber       rustNumber
hi link rustOctNumber       rustNumber
hi link rustBinNumber       rustNumber
hi link rustIdentifierPrime rustIdentifier
hi link rustTrait           rustType
hi link rustDeriveTrait     rustTrait
hi link rustMacroRepeatCount   rustMacroRepeatDelimiters
hi link rustMacroRepeatDelimiters   Macro
hi link rustMacroVariable Define
hi link rustSigil         StorageClass
hi link rustEscape        Special
hi link rustEscapeUnicode rustEscape
hi link rustEscapeError   Error
hi link rustStringContinuation Special
hi link rustString        String
hi link rustCharacterInvalid Error
hi link rustCharacterInvalidUnicode rustCharacterInvalid
hi link rustCharacter     Character
hi link rustNumber        Number
hi link rustBoolean       Boolean
hi link rustEnum          rustType
hi link rustEnumVariant   rustConstant
hi link rustConstant      Constant
hi link rustSelf          Constant
hi link rustFloat         Float
hi link rustArrowCharacter rustOperator
hi link rustOperator      Operator
hi link rustKeyword       Keyword
hi link rustTypedef       Keyword " More precise is Typedef, but it doesn't feel right for Rust
hi link rustStructure     Keyword " More precise is Structure
hi link rustUnion         rustStructure
hi link rustPubScopeDelim Delimiter
hi link rustPubScopeCrate rustKeyword
hi link rustSuper         rustKeyword
hi link rustReservedKeyword Error
hi link rustRepeat        Conditional
hi link rustConditional   Conditional
hi link rustIdentifier    Identifier
hi link rustCapsIdent     rustIdentifier
hi link rustModPath       Include
hi link rustModPathSep    Delimiter
hi link rustFunction      Function
hi link rustFuncName      Function
hi link rustFuncCall      Function
hi link rustShebang       Comment
hi link rustCommentLine   Comment
hi link rustCommentLineDoc SpecialComment
hi link rustCommentLineDocError Error
hi link rustCommentBlock  rustCommentLine
hi link rustCommentBlockDoc rustCommentLineDoc
hi link rustCommentBlockDocError Error
hi link rustAssert        PreCondit
hi link rustPanic         PreCondit
hi link rustMacro         Macro
hi link rustType          Type
hi link rustTodo          Todo
hi link rustAttribute     PreProc
hi link rustDerive        PreProc
hi link rustDefault       StorageClass
hi link rustStorage       StorageClass
hi link rustObsoleteStorage Error
hi link rustLifetime      Special
hi link rustLabel         Label
hi link rustInvalidBareKeyword Error
hi link rustExternCrate   rustKeyword
hi link rustObsoleteExternMod Error
hi link rustBoxPlacementParens Delimiter
hi link rustQuestionMark  Special
hi link        asteriskvmComment Comment
hi link        asteriskvmContext         Identifier
hi link        asteriskvmZone            Type
hi link        zoneName                String
hi link        zoneDef                 String
hi link        asteriskvmSetting         Type
hi link        asteriskvmSettingBool     Type
hi link        asteriskvmMailbox         Statement
hi link        mailboxEmail            String
hi link squidTodo	Todo
hi link squidComment	Comment
hi link squidTag	Special
hi link squidConf	Keyword
hi link squidOpt	Constant
hi link squidAction	String
hi link squidNumber	Number
hi link squidIP	Number
hi link squidAcl	Keyword
hi link squidStr	String
hi link squidRegexOpt	Special
hi link protocolsTodo      Todo
hi link protocolsComment   Comment
hi link protocolsName      Identifier
hi link protocolsPort      Number
hi link protocolsPPDiv     Delimiter
hi link protocolsPPDivDepr Error
hi link protocolsProtocol  Type
hi link protocolsAliases   Macro
hi link clifError	Error
hi link clSpaceError	Error
hi link clWhile		Repeat
hi link clConditional	Conditional
hi link clDebug		Debug
hi link clNeedsWork	Todo
hi link clTodo		Todo
hi link clComment	Comment
hi link clProcedure	Procedure
hi link clBreak		Procedure
hi link clInclude	Include
hi link clSetOption	Statement
hi link clSet		Identifier
hi link clPreProc	PreProc
hi link clOperator	Operator
hi link clNumber		Number
hi link clString		String
hi link clQuote		Delimiter
hi link clReserved	Identifier
hi link clFunction	Function
hi link clStatement	Statement
hi link sieveTodo        Todo
hi link sieveComment     Comment
hi link sieveTag         Type
hi link sieveNumber      Number
hi link sieveSpecial     Special
hi link sieveString      String
hi link sieveConditional Conditional
hi link sieveTest        Keyword
hi link sievePreProc     PreProc
hi link sieveAction      Function
hi link sieveKeyword     Keyword
hi link logtalkBlockComment	Comment
hi link logtalkLineComment	Comment
hi link logtalkOpenEntityDir	Normal
hi link logtalkOpenEntityDirTag	PreProc
hi link logtalkIfContainer	PreProc
hi link logtalkIf		PreProc
hi link logtalkElseIf		PreProc
hi link logtalkElse		PreProc
hi link logtalkEntity		Normal
hi link logtalkEntityRel	Normal
hi link logtalkEntityRelTag	PreProc
hi link logtalkCloseEntityDir	PreProc
hi link logtalkDir		Normal
hi link logtalkDirTag		PreProc
hi link logtalkAtom		String
hi link logtalkString		String
hi link logtalkEscapeSequence	SpecialChar
hi link logtalkNumber		Number
hi link logtalkKeyword		Keyword
hi link logtalkBuiltIn		Keyword
hi link logtalkBuiltInMethod	Keyword
hi link logtalkOperator		Operator
hi link logtalkExtCall		Normal
hi link logtalkExtCallTag	Operator
hi link logtalkVariable		Identifier
hi link xsdElement Statement
hi link hasteSpecial	Special
hi link hasteStatement	Statement
hi link hasteCharacter	String
hi link hasteString		String
hi link hasteVector		String
hi link hasteBoolean	String
hi link hasteComment	Comment
hi link hasteNumber		String
hi link hasteTime		String
hi link hasteType		Type
hi link hasteGlobal		Error
hi link hasteError		Error
hi link hasteAttribute	Type
hi link hasteSeparators	Special
hi link hasteExecution	Special
hi link hasteTypeConstr	Special
hi link hasteOperator	Type
hi link hasteExprOp		Type
hi link hasteMisc		String
hi link hasteFutureExt 	Error
hi link hasteVerilog	Error
hi link hasteDefine		Macro
hi link hasteInclude	Include
hi link forthTodo Todo
hi link forthOperators Operator
hi link forthMath Number
hi link forthInteger Number
hi link forthFloat Float
hi link forthStack Special
hi link forthRstack Special
hi link forthFStack Special
hi link forthSP Special
hi link forthMemory Function
hi link forthAdrArith Function
hi link forthMemBlks Function
hi link forthCond Conditional
hi link forthLoop Repeat
hi link forthColonDef Define
hi link forthEndOfColonDef Define
hi link forthDefine Define
hi link forthDebug Debug
hi link forthAssembler Include
hi link forthCharOps Character
hi link forthConversion String
hi link forthForth Statement
hi link forthVocs Statement
hi link forthString String
hi link forthComment Comment
hi link forthClassDef Define
hi link forthEndOfClassDef Define
hi link forthObjectDef Define
hi link forthEndOfObjectDef Define
hi link forthInclude Include
hi link forthLocals Type " nothing else uses type and locals must stand out
hi link forthDeprecated Error " if you must, change to Type
hi link forthFileMode Function
hi link forthFileWords Statement
hi link forthBlocks Statement
hi link forthSpaceError Error
hi link phpSpecialFunction phpOperator
hi link phpClasses phpFunctions
hi link phpInterfaces phpConstant
hi link phpConstant Constant
hi link phpCoreConstant Constant
hi link phpComment Comment
hi link phpDocTags PreProc
hi link phpDocCustomTags Type
hi link phpException Exception
hi link phpBoolean Boolean
hi link phpStorageClass StorageClass
hi link phpSCKeyword StorageClass
hi link phpFCKeyword Define
hi link phpStructure Structure
hi link phpStringSingle String
hi link phpStringDouble String
hi link phpBacktick String
hi link phpNumber Number
hi link phpFloat Float
hi link phpMethods Function
hi link phpFunctions Function
hi link phpBaselib Function
hi link phpRepeat Repeat
hi link phpConditional Conditional
hi link phpLabel Label
hi link phpStatement Statement
hi link phpKeyword Statement
hi link phpType Type
hi link phpInclude Include
hi link phpDefine Define
hi link phpBackslashSequences SpecialChar
hi link phpBackslashDoubleQuote SpecialChar
hi link phpBackslashSingleQuote SpecialChar
hi link phpParent Delimiter
hi link phpBrackets Delimiter
hi link phpIdentifierConst Delimiter
hi link phpParentError Error
hi link phpOctalError Error
hi link phpInterpSimpleError Error
hi link phpInterpBogusDollarCurley Error
hi link phpInterpDollarCurly1 Error
hi link phpInterpDollarCurly2 Error
hi link phpInterpSimpleBracketsInner String
hi link phpInterpSimpleCurly Delimiter
hi link phpInterpVarname Identifier
hi link phpTodo Todo
hi link phpDocTodo Todo
hi link phpMemberSelector Structure
hi link OPLStatement		Statement
hi link OPLNumber		Number
hi link OPLString		String
hi link OPLComment		Comment
hi link OPLMathsOperator	Conditional
hi link papp_prep		preCondit
hi link papp_gettext	String
hi link rubyClass			rubyDefine
hi link rubyModule			rubyDefine
hi link rubyMethodExceptional	rubyDefine
hi link rubyDefine			Define
hi link rubyFunction		Function
hi link rubyConditional		Conditional
hi link rubyConditionalModifier	rubyConditional
hi link rubyExceptional		rubyConditional
hi link rubyRepeat			Repeat
hi link rubyRepeatModifier		rubyRepeat
hi link rubyOptionalDo		rubyRepeat
hi link rubyControl			Statement
hi link rubyInclude			Include
hi link rubyInteger			Number
hi link rubyASCIICode		Character
hi link rubyFloat			Float
hi link rubyBoolean			Boolean
hi link rubyException		Exception
hi link rubyClassVariable		rubyIdentifier
hi link rubyConstant		Type
hi link rubyGlobalVariable		rubyIdentifier
hi link rubyBlockParameter		rubyIdentifier
hi link rubyInstanceVariable	rubyIdentifier
hi link rubyPredefinedIdentifier	rubyIdentifier
hi link rubyPredefinedConstant	rubyPredefinedIdentifier
hi link rubyPredefinedVariable	rubyPredefinedIdentifier
hi link rubySymbol			Constant
hi link rubyKeyword			Keyword
hi link rubyOperator		Operator
hi link rubyBeginEnd		Statement
hi link rubyAccess			Statement
hi link rubyAttribute		Statement
hi link rubyEval			Statement
hi link rubyPseudoVariable		Constant
hi link rubyCapitalizedMethod	rubyLocalVariableOrMethod
hi link rubyComment			Comment
hi link rubyData			Comment
hi link rubyDataDirective		Delimiter
hi link rubyDocumentation		Comment
hi link rubyTodo			Todo
hi link rubyQuoteEscape		rubyStringEscape
hi link rubyStringEscape		Special
hi link rubyInterpolationDelimiter	Delimiter
hi link rubyNoInterpolation		rubyString
hi link rubySharpBang		PreProc
hi link rubyRegexpDelimiter		rubyStringDelimiter
hi link rubySymbolDelimiter		rubySymbol
hi link rubyStringDelimiter		Delimiter
hi link rubyHeredoc			rubyString
hi link rubyString			String
hi link rubyRegexpEscape		rubyRegexpSpecial
hi link rubyRegexpQuantifier	rubyRegexpSpecial
hi link rubyRegexpAnchor		rubyRegexpSpecial
hi link rubyRegexpDot		rubyRegexpCharClass
hi link rubyRegexpCharClass		rubyRegexpSpecial
hi link rubyRegexpSpecial		Special
hi link rubyRegexpComment		Comment
hi link rubyRegexp			rubyString
hi link rubyInvalidVariable		Error
hi link rubyError			Error
hi link rubySpaceError		rubyError
hi link groupDelimiter      Normal
hi link groupName           Identifier
hi link groupPasswordColon  groupDelimiter
hi link groupPassword       Number
hi link groupShadow         Special
hi link groupGIDColon       groupDelimiter
hi link groupGID            Number
hi link groupUserListColon  groupDelimiter
hi link groupUserList       Identifier
hi link groupUserListSep    groupDelimiter
hi link masonDoc Comment
hi link masonPod Comment
hi link masonPerlComment perlComment
hi link	fasmAddressSizes	type
hi link	fasmNumericOperator	fasmOperator
hi link	fasmLogicalOperator	fasmOperator
hi link	fasmBinaryNumber	fasmNumber
hi link	fasmHexNumber		fasmNumber
hi link	fasmFPUNumber		fasmNumber
hi link	fasmOctalNumber		fasmNumber
hi link	fasmDecimalNumber	fasmNumber
hi link	fasmSymbols		fasmRegister
hi link	fasmPreprocess		fasmDirective
hi link	fasmOperator operator
hi link	fasmComment  comment
hi link	fasmDirective	preproc
hi link	fasmRegister  type
hi link	fasmNumber   constant
hi link	fasmSymbol structure
hi link	fasmString  String
hi link	fasmSpecial	special
hi link	fasmInstr keyword
hi link	fasmLabel label
hi link	fasmPrefix preproc
hi link mailcapComment	Comment
hi link mailcapDelimiter	Delimiter
hi link mailcapFlag		Statement
hi link mailcapFieldname	Statement
hi link mailcapSpecial	Identifier
hi link mailcapTypeField	Type
hi link mailcapString	String
hi link CtrlHHide Ignore
hi CtrlHUnderline term=underline cterm=underline gui=underline
hi CtrlHBold term=bold cterm=bold gui=bold
hi link sambaParameter Normal
hi link sambaKeyword   Type
hi link sambaSection   Statement
hi link sambaMacro     PreProc
hi link sambaComment   Comment
hi link sambaContinue  Operator
hi link sambaBoolean   Constant
hi link slangDefinition	Type
hi link slangBlock		slangDefinition
hi link slangLabel		Label
hi link slangConditional	Conditional
hi link slangRepeat		Repeat
hi link slangCharacter	Character
hi link slangFloat		Float
hi link slangImaginary	Float
hi link slangDecimal		slangNumber
hi link slangOctal		slangNumber
hi link slangHex		slangNumber
hi link slangNumber		Number
hi link slangParenError	Error
hi link slangOctalError	Error
hi link slangOperator		Operator
hi link slangStructure	Structure
hi link slangInclude		Include
hi link slangPreCondit	PreCondit
hi link slangError		Error
hi link slangStatement	Statement
hi link slangType		Type
hi link slangString		String
hi link slangConstant		Constant
hi link slangRangeArray	slangConstant
hi link slangComment		Comment
hi link slangSpecial		SpecialChar
hi link slangTodo		Todo
hi link slangDelim		Delimiter
hi link bstComment           Comment
hi link bstString            String
hi link bstCommand           PreProc
hi link bstBuiltIn           Statement
hi link bstField             Special
hi link bstNumber            Number
hi link bstType              Type
hi link bstIdentifier        Identifier
hi link bstError             Error
hi link xpm2Type		Type
hi link xpm2StorageClass	StorageClass
hi link xpm2Todo		Todo
hi link xpm2Comment		Comment
hi link xpm2PixelString	String
hi link gkrellmrcComment Comment
hi link gkrellmrcFixme Todo
hi link gkrellmrcString gkrellmrcConstant
hi link gkrellmrcNumber gkrellmrcConstant
hi link gkrellmrcRGBColor gkrellmrcConstant
hi link gkrellmrcExpandMode gkrellmrcConstant
hi link gkrellmrcConstant Constant
hi link gkrellmrcMeterName gkrellmrcClass
hi link gkrellmrcChartName gkrellmrcClass
hi link gkrellmrcSpecialClassName gkrellmrcClass
hi link gkrellmrcClass Type
hi link gkrellmrcGlobal gkrellmrcItem
hi link gkrellmrcBuiltinExt gkrellmrcItem
hi link gkrellmrcStyleItem gkrellmrcItem
hi link gkrellmrcItem Function
hi link gkrellmrcSetCmd Special
hi link gkrellmrcStyleCmd Statement
hi link elfComment Comment
hi link elfPPCom Include
hi link elfKeyword Keyword
hi link elfSpecial Special
hi link elfEnvironment Special
hi link elfBraceError Error
hi link elfConditional Conditional
hi link elfMacro Function
hi link elfNumber Number
hi link elfString String
hi link elfParens Delimiter
hi link elfPunct Delimiter
hi link initexCharacter                     Character
hi link initexNumber                        Number
hi link initexIdentifier                    Identifier
hi link initexStatement                     Statement
hi link initexConditional                   Conditional
hi link initexPreProc                       PreProc
hi link initexMacro                         Macro
hi link initexType                          Type
hi link initexDebug                         Debug
hi link initexTodo                          Todo
hi link initexComment                       Comment
hi link initexDimension                     initexNumber
hi link initexCommand                       initexStatement
hi link initexBoxCommand                    initexCommand
hi link initexCharacterCommand              initexCharacter
hi link initexDebuggingCommand              initexDebug
hi link initexFileIOCommand                 initexCommand
hi link initexFontsCommand                  initexType
hi link initexGlueCommand                   initexCommand
hi link initexHyphenationCommand            initexCommand
hi link initexInsertsCommand                initexCommand
hi link initexJobCommand                    initexPreProc
hi link initexKernCommand                   initexCommand
hi link initexLogicCommand                  initexConditional
hi link initexMacroCommand                  initexMacro
hi link initexMarksCommand                  initexCommand
hi link initexMathCommand                   initexCommand
hi link initexParagraphCommand              initexCommand
hi link initexPenaltiesCommand              initexCommand
hi link initexRegistersCommand              initexCommand
hi link initexTablesCommand                 initexCommand
hi link initexDerivedCommand                initexStatement
hi link initexGlueDerivedCommand            initexDerivedCommand
hi link initexHyphenationDerivedCommand     initexDerivedCommand
hi link initexMacroDerivedCommand           initexDerivedCommand
hi link initexMathDerivedCommand            initexDerivedCommand
hi link initexInternalQuantity              initexIdentifier
hi link initexBoxInternalQuantity           initexInternalQuantity
hi link initexCharacterInternalQuantity     initexInternalQuantity
hi link initexFileIOInternalQuantity        initexInternalQuantity
hi link initexFontsInternalQuantity         initexInternalQuantity
hi link initexHyphenationInternalQuantity   initexInternalQuantity
hi link initexJobInternalQuantity           initexInternalQuantity
hi link initexKernInternalQuantity          initexInternalQuantity
hi link initexMathInternalQuantity          initexInternalQuantity
hi link initexPageInternalQuantity          initexInternalQuantity
hi link initexParagraphInternalQuantity     initexInternalQuantity
hi link initexPenaltiesInternalQuantity     initexInternalQuantity
hi link initexRegistersInternalQuantity     initexInternalQuantity
hi link initexParameterDimen                initexNumber
hi link initexBoxParameterDimen             initexParameterDimen
hi link initexInsertsParameterDimen         initexParameterDimen
hi link initexMathParameterDimen            initexParameterDimen
hi link initexPageParameterDimen            initexParameterDimen
hi link initexParagraphParameterDimen       initexParameterDimen
hi link initexParameterGlue                 initexNumber
hi link initexInsertsParameterGlue          initexParameterGlue
hi link initexMathParameterGlue             initexParameterGlue
hi link initexPageParameterGlue             initexParameterGlue
hi link initexParagraphParameterGlue        initexParameterGlue
hi link initexTablesParameterGlue           initexParameterGlue
hi link initexParameterInteger              initexNumber
hi link initexBoxParameterInteger           initexParameterInteger
hi link initexCharacterParameterInteger     initexParameterInteger
hi link initexDebuggingParameterInteger     initexParameterInteger
hi link initexHyphenationParameterInteger   initexParameterInteger
hi link initexInsertsParameterInteger       initexParameterInteger
hi link initexJobParameterInteger           initexParameterInteger
hi link initexMacroParameterInteger         initexParameterInteger
hi link initexMathParameterInteger          initexParameterInteger
hi link initexParagraphParameterInteger     initexParameterInteger
hi link initexPenaltiesParameterInteger     initexParameterInteger
hi link initexParameterMuglue               initexNumber
hi link initexMathParameterMuglue           initexParameterMuglue
hi link initexParameterToken                initexIdentifier
hi link initexBoxParameterToken             initexParameterToken
hi link initexDebuggingParameterToken       initexParameterToken
hi link initexFileIOParameterToken          initexParameterToken
hi link initexMathParameterToken            initexParameterToken
hi link initexParagraphParameterToken       initexParameterToken
hi link initexTablesParameterToken          initexParameterToken
hi link fdccBlank		 Blank
hi link fdccTodo		 Todo
hi link fdccComment		 Comment
hi link fdccVariable		 Type
hi link fdccLCIdentification	 Statement
hi link fdccLCCtype		 Statement
hi link fdccLCCollate		 Statement
hi link fdccLCMonetary		 Statement
hi link fdccLCNumeric		 Statement
hi link fdccLCTime		 Statement
hi link fdccLCMessages		 Statement
hi link fdccLCPaper		 Statement
hi link fdccLCTelephone	 Statement
hi link fdccLCMeasurement	 Statement
hi link fdccLCName		 Statement
hi link fdccLCAddress		 Statement
hi link fdccUnicodeInValid	 Error
hi link fdccUnicodeValid	 String
hi link fdccString		 String
hi link fdccNumber		 Blank
hi link fdccKeywordIdentification fdccKeyword
hi link fdccKeywordCtype	   fdccKeyword
hi link fdccKeywordCollate	   fdccKeyword
hi link fdccKeywordMonetary	   fdccKeyword
hi link fdccKeywordNumeric	   fdccKeyword
hi link fdccKeywordTime	   fdccKeyword
hi link fdccKeywordMessages	   fdccKeyword
hi link fdccKeywordPaper	   fdccKeyword
hi link fdccKeywordTelephone	   fdccKeyword
hi link fdccKeywordMeasurement    fdccKeyword
hi link fdccKeywordName	   fdccKeyword
hi link fdccKeywordAddress	   fdccKeyword
hi link fdccKeyword		   Identifier
hi link dcdFunction		Identifier
hi link dcdLabel		Constant
hi link dcdConditional		Conditional
hi link dcdDisplay		Type
hi link dcdStatement		Statement
hi link dcdSpecial		Special
hi link dcdComment		Comment
hi link	tildeComment	Comment
hi link	tildeFunction	Operator
hi link	tildeOperator	Operator
hi link	tildeString	String
hi link	tildeNumber	Number
hi link	tildeHexNumber	Number
hi link	tildeVariable	Identifier
hi link	tildeField	Identifier
hi link	tildeSymtab	Identifier
hi link	tildeError	Error
hi link bzrRemoved    Constant
hi link bzrAdded      Identifier
hi link bzrModified   Special
hi link bzrRenamed    Special
hi link bzrUnchanged  Special
hi link bzrUnknown    Special
hi link debsourcesLine                    Error
hi link debsourcesKeyword                 Statement
hi link debsourcesDistrKeyword            Type
hi link debsourcesUnsupportedDistrKeyword WarningMsg
hi link debsourcesComment                 Comment
hi link debsourcesUri                     Constant
hi link erubyDelimiter		PreProc
hi link erubyComment		Comment
hi link usw2kagtlog_Date		Underlined
hi link usw2kagtlog_MsgD		Type
hi link usw2kagtlog_MsgE		Error
hi link usw2kagtlog_MsgW		Constant
hi link usw2kagtlog_Process		Statement
hi link usw2kagtlog_IPaddr		Identifier
hi link usw2kagtlog_Profile		Identifier
hi link usw2kagtlog_Target		Identifier
hi link usw2kagtlog_Agentword	Special
hi link muttrcComment		Comment
hi link muttrcEscape		SpecialChar
hi link muttrcRXChars		SpecialChar
hi link muttrcString		String
hi link muttrcRXString		String
hi link muttrcRXString2	String
hi link muttrcSpecial		Special
hi link muttrcHooks		Type
hi link muttrcGroupFlag	Type
hi link muttrcGroupDef		Macro
hi link muttrcAddrDef		muttrcGroupFlag
hi link muttrcRXDef		muttrcGroupFlag
hi link muttrcRXPat		String
hi link muttrcAliasGroupName	Macro
hi link muttrcAliasKey	        Identifier
hi link muttrcUnAliasKey	Identifier
hi link muttrcAliasEncEmail	Identifier
hi link muttrcAliasParens	Type
hi link muttrcSetNumAssignment	Number
hi link muttrcSetBoolAssignment	Boolean
hi link muttrcSetQuadAssignment	Boolean
hi link muttrcSetStrAssignment	String
hi link muttrcEmail		Special
hi link muttrcVariableInner	Special
hi link muttrcEscapedVariable	String
hi link muttrcHeader		Type
hi link muttrcKeySpecial	SpecialChar
hi link muttrcKey		Type
hi link muttrcKeyName		SpecialChar
hi link muttrcVarBool		Identifier
hi link muttrcVarQuad		Identifier
hi link muttrcVarNum		Identifier
hi link muttrcVarStr		Identifier
hi link muttrcMenu		Identifier
hi link muttrcCommand		Keyword
hi link muttrcMacroDescr	String
hi link muttrcAction		Macro
hi link muttrcBadAction	Error
hi link muttrcBindFunction	Error
hi link muttrcBindMenuList	Error
hi link muttrcFunction		Macro
hi link muttrcGroupKeyword	muttrcCommand
hi link muttrcGroupLine	Error
hi link muttrcSubscribeKeyword	muttrcCommand
hi link muttrcSubscribeLine	Error
hi link muttrcListsKeyword	muttrcCommand
hi link muttrcListsLine	Error
hi link muttrcAlternateKeyword	muttrcCommand
hi link muttrcAlternatesLine	Error
hi link muttrcAttachmentsLine	muttrcCommand
hi link muttrcAttachmentsFlag	Type
hi link muttrcAttachmentsMimeType	String
hi link muttrcColorLine	Error
hi link muttrcColorContext	Error
hi link muttrcColorContextI	Identifier
hi link muttrcColorContextH	Identifier
hi link muttrcColorKeyword	muttrcCommand
hi link muttrcColorKeywordI	muttrcColorKeyword
hi link muttrcColorKeywordH	muttrcColorKeyword
hi link muttrcColorField	Identifier
hi link muttrcColor		Type
hi link muttrcColorFG		Error
hi link muttrcColorFGI		Error
hi link muttrcColorFGH		Error
hi link muttrcColorBG		Error
hi link muttrcColorBGI		Error
hi link muttrcColorBGH		Error
hi link muttrcMonoAttrib	muttrcColor
hi link muttrcMono		muttrcCommand
hi link muttrcSimplePat	Identifier
hi link muttrcSimplePatString	Macro
hi link muttrcSimplePatMetas	Special
hi link muttrcPattern		Error
hi link muttrcUnColorLine	Error
hi link muttrcUnColorKeyword	muttrcCommand
hi link muttrcUnColorIndex	Identifier
hi link muttrcShellString	muttrcEscape
hi link muttrcRXHooks		muttrcCommand
hi link muttrcRXHookNot	Type
hi link muttrcPatHooks		muttrcCommand
hi link muttrcPatHookNot	Type
hi link muttrcFormatConditionals2 Type
hi link muttrcIndexFormatStr	muttrcString
hi link muttrcIndexFormatEscapes muttrcEscape
hi link muttrcIndexFormatConditionals muttrcFormatConditionals2
hi link muttrcAliasFormatStr	muttrcString
hi link muttrcAliasFormatEscapes muttrcEscape
hi link muttrcAttachFormatStr	muttrcString
hi link muttrcAttachFormatEscapes muttrcEscape
hi link muttrcAttachFormatConditionals muttrcFormatConditionals2
hi link muttrcComposeFormatStr	muttrcString
hi link muttrcComposeFormatEscapes muttrcEscape
hi link muttrcFolderFormatStr	muttrcString
hi link muttrcFolderFormatEscapes muttrcEscape
hi link muttrcFolderFormatConditionals muttrcFormatConditionals2
hi link muttrcMixFormatStr	muttrcString
hi link muttrcMixFormatEscapes muttrcEscape
hi link muttrcMixFormatConditionals muttrcFormatConditionals2
hi link muttrcPGPFormatStr	muttrcString
hi link muttrcPGPFormatEscapes muttrcEscape
hi link muttrcPGPFormatConditionals muttrcFormatConditionals2
hi link muttrcPGPCmdFormatStr	muttrcString
hi link muttrcPGPCmdFormatEscapes muttrcEscape
hi link muttrcPGPCmdFormatConditionals muttrcFormatConditionals2
hi link muttrcStatusFormatStr	muttrcString
hi link muttrcStatusFormatEscapes muttrcEscape
hi link muttrcStatusFormatConditionals muttrcFormatConditionals2
hi link muttrcPGPGetKeysFormatStr	muttrcString
hi link muttrcPGPGetKeysFormatEscapes muttrcEscape
hi link muttrcSmimeFormatStr	muttrcString
hi link muttrcSmimeFormatEscapes muttrcEscape
hi link muttrcSmimeFormatConditionals muttrcFormatConditionals2
hi link muttrcTimeEscapes	muttrcEscape
hi link muttrcPGPTimeEscapes	muttrcEscape
hi link muttrcStrftimeEscapes	Type
hi link muttrcStrftimeFormatStr muttrcString
hi link muttrcFormatErrors Error
hi link muttrcBindFunctionNL	SpecialChar
hi link muttrcBindKeyNL	SpecialChar
hi link muttrcBindMenuListNL	SpecialChar
hi link muttrcMacroDescrNL	SpecialChar
hi link muttrcMacroBodyNL	SpecialChar
hi link muttrcMacroKeyNL	SpecialChar
hi link muttrcMacroMenuListNL	SpecialChar
hi link muttrcColorMatchCountNL SpecialChar
hi link muttrcColorNL		SpecialChar
hi link muttrcColorRXNL	SpecialChar
hi link muttrcColorBGNL	SpecialChar
hi link muttrcColorFGNL	SpecialChar
hi link muttrcAliasNameNL	SpecialChar
hi link muttrcAliasENNL	SpecialChar
hi link muttrcAliasNL		SpecialChar
hi link muttrcUnAliasNL	SpecialChar
hi link muttrcAliasGroupDefNL	SpecialChar
hi link muttrcAliasEncEmailNL	SpecialChar
hi link muttrcPatternNL	SpecialChar
hi link muttrcUnColorPatNL	SpecialChar
hi link muttrcUnColorAPNL	SpecialChar
hi link muttrcUnColorIndexNL	SpecialChar
hi link muttrcStringNL		SpecialChar
hi link ninjaComment Comment
hi link ninjaKeyword Keyword
hi link ninjaRuleCommand Statement
hi link ninjaPoolCommand Statement
hi link ninjaDollar ninjaOperator
hi link ninjaWrapLineOperator ninjaOperator
hi link ninjaOperator Operator
hi link ninjaSimpleVar ninjaVar
hi link ninjaVar Identifier
hi link liteComment		Comment
hi link liteString		String
hi link liteNumber		Number
hi link liteFloat		Float
hi link liteIdentifier	Identifier
hi link liteGlobalIdentifier	Identifier
hi link liteIntVar		Identifier
hi link liteFunctions		Function
hi link liteRepeat		Repeat
hi link liteConditional	Conditional
hi link liteStatement		Statement
hi link liteType		Type
hi link liteInclude		Include
hi link liteDefine		Define
hi link liteSpecialChar	SpecialChar
hi link liteParentError	liteError
hi link liteError		Error
hi link liteTodo		Todo
hi link liteOperator		Operator
hi link liteRelation		Operator
hi link tssgmParam		Statement
hi link tssgmSurfType		Type
hi link tssgmArgs		Special
hi link tssgmDelim		Typedef
hi link tssgmEnd		Macro
hi link tssgmUnits		Special
hi link tssgmDefault		SpecialComment
hi link tssgmComment		Statement
hi link tssgmCommentString	Comment
hi link tssgmSurfIdent		Identifier
hi link tssgmString		Delimiter
hi link tssgmInteger		Number
hi link tssgmFloat		Float
hi link tssgmScientific	Float
hi link podCommand		Statement
hi link podCmdText		String
hi link podOverIndent	Number
hi link podForKeywd		Identifier
hi link podFormat		Identifier
hi link podVerbatimLine	PreProc
hi link podSpecial		Identifier
hi link podEscape		String
hi link podEscape2		Number
hi link pamconfTodo             Todo
hi link pamconfComment          Comment
hi link pamconfService          Statement
hi link pamconfServiceLineCont  Special
hi link pamconfType             Type
hi link pamconfTypeLineCont     pamconfServiceLineCont
hi link pamconfControl          Macro
hi link pamconfControlBegin     Delimiter
hi link pamconfControlLineContH pamconfServiceLineCont
hi link pamconfControlLineCont  pamconfServiceLineCont
hi link pamconfControlValues    Identifier
hi link pamconfControlValueEq   Operator
hi link pamconfControlActionN   Number
hi link pamconfControlAction    Identifier
hi link pamconfControlEnd       Delimiter
hi link pamconfMPath            String
hi link pamconfMPathLineCont    pamconfServiceLineCont
hi link pamconfArgs             Normal
hi link pamconfArgsLineCont     pamconfServiceLineCont
hi link esterelStatement		Statement
hi link esterelType			Type
hi link esterelComment		Comment
hi link esterelBoolean		Number
hi link esterelExpressions	Number
hi link esterelIO			String
hi link esterelOperator		Type
hi link esterelSysCall		Type
hi link esterelFunctions		Type
hi link esterelSpecial		Special
hi link rstTodo                         Todo
hi link rstComment                      Comment
hi link rstSections                     Title
hi link rstTransition                   rstSections
hi link rstLiteralBlock                 String
hi link rstQuotedLiteralBlock           String
hi link rstDoctestBlock                 PreProc
hi link rstTableLines                   rstDelimiter
hi link rstSimpleTableLines             rstTableLines
hi link rstExplicitMarkup               rstDirective
hi link rstDirective                    Keyword
hi link rstFootnote                     String
hi link rstCitation                     String
hi link rstHyperlinkTarget              String
hi link rstExDirective                  String
hi link rstSubstitutionDefinition       rstDirective
hi link rstDelimiter                    Delimiter
hi rstEmphasis ctermfg=13 term=italic cterm=italic gui=italic
hi rstStrongEmphasis ctermfg=1 term=bold cterm=bold gui=bold
hi link rstInterpretedTextOrHyperlinkReference  Identifier
hi link rstInlineLiteral                String
hi link rstSubstitutionReference        PreProc
hi link rstInlineInternalTargets        Identifier
hi link rstFootnoteReference            Identifier
hi link rstCitationReference            Identifier
hi link rstHyperLinkReference           Identifier
hi link rstStandaloneHyperlink          Identifier
hi link rstCodeBlock                    String
hi link dosiniNumber   Number
hi link dosiniHeader   Special
hi link dosiniComment  Comment
hi link dosiniLabel    Type
hi link gitrebaseCommit         gitrebaseHash
hi link gitrebaseHash           Identifier
hi link gitrebasePick           Statement
hi link gitrebaseReword         Number
hi link gitrebaseEdit           PreProc
hi link gitrebaseSquash         Type
hi link gitrebaseFixup          Special
hi link gitrebaseExec           Function
hi link gitrebaseDrop           Comment
hi link gitrebaseSummary        String
hi link gitrebaseComment        Comment
hi link gitrebaseSquashError    Error
hi link VRMLCharacter  VRMLString
hi link VRMLSpecialCharacter VRMLSpecial
hi link VRMLNumber     VRMLString
hi link VRMLValues     VRMLString
hi link VRMLString     String
hi link VRMLSpecial    Special
hi link VRMLComment    Comment
hi link VRMLNodes      Statement
hi link VRMLFields     Type
hi link VRMLEvents     Type
hi link VRMLfTypes     LineNr
hi link VRMLInstances  PreCondit
hi link VRMLRoutes     PreCondit
hi link VRMLProtos     PreProc
hi link VRMLRouteNode  Identifier
hi link VRMLInstName   Identifier
hi link VRMLTypes      Identifier
hi link bLabel	Label
hi link bUserLabel	Label
hi link bConditional	Conditional
hi link bRepeat	Repeat
hi link bLogic	Special
hi link bCharacter	Character
hi link bSpecialCharacter bSpecial
hi link bNumber	Number
hi link bFloat	Float
hi link bOctalError	bError
hi link bParenError	bError
hi link bCommentError	bError
hi link bBoolean	Identifier
hi link bConstant	Identifier
hi link bGuard	Identifier
hi link bOperator	Operator
hi link bKeywords	Operator
hi link bOps		Identifier
hi link bStructure	Structure
hi link bStorageClass	StorageClass
hi link bInclude	Include
hi link bPreProc	PreProc
hi link bDefine	Macro
hi link bIncluded	bString
hi link bError	Error
hi link bStatement	Statement
hi link bPreCondit	PreCondit
hi link bType		Type
hi link bCommentError	bError
hi link bCommentString bString
hi link bComment2String bString
hi link bCommentSkip	bComment
hi link bString	String
hi link bComment	Comment
hi link bSpecial	SpecialChar
hi link bTodo		Todo
hi link latteSyntax		Statement
hi link latteVar			Function
hi link latteString		String
hi link latteQuote			String
hi link latteDelimiter		Delimiter
hi link latteOperator		Operator
hi link latteComment		Comment
hi link latteError			Error
hi link acedbMagic	Special
hi link acedbHyb	Special
hi link acedbType	Type
hi link acedbOption	Type
hi link acedbSubclass	Type
hi link acedbSubtag	Include
hi link acedbFlag	Include
hi link acedbTag	Include
hi link acedbClass	Todo
hi link acedbHelp	Todo
hi link acedbXref	Identifier
hi link acedbModifier	Label
hi link acedbComment	Comment
hi link acedbBlock	ModeMsg
hi link acedbNumber	Number
hi link acedbString	String
hi link stataBraceError	stataError
hi link stataBracketError	stataError
hi link stataErrInBrace	stataError
hi link stataErrInBracket	stataError
hi link stataErrInParen	stataError
hi link stataEString	stataString
hi link stataFormat		stataSpecial
hi link stataGlobal		stataMacro
hi link stataLocal		stataMacro
hi link stataParenError	stataError
hi link stataSlashComment	stataComment
hi link stataStarComment	stataComment
hi link stataCommand	Define
hi link stataComment	Comment
hi link stataConditional	Conditional
hi link stataError		Error
hi link stataFunc		None
hi link stataMacro		Define
hi link stataRepeat		Repeat
hi link stataSpecial	SpecialChar
hi link stataString		String
hi link        asteriskComment		Comment
hi link        asteriskExten		String
hi link        asteriskContext         Preproc
hi link        asteriskPattern         Type
hi link        asteriskApp             Statement
hi link        asteriskInclude         Preproc
hi link        asteriskIncludeBad	Error
hi link        asteriskPriority        Preproc
hi link        asteriskLabel           Type
hi link        asteriskVar             String
hi link        asteriskVarLen          Function
hi link        asteriskExp             Type
hi link        asteriskCodecsPermit    Preproc
hi link        asteriskCodecs          String
hi link        asteriskType            Statement
hi link        asteriskTypeType        Type
hi link        asteriskAuth            String
hi link        asteriskAuthType        Type
hi link        asteriskIPRange         Identifier
hi link        asteriskIP              Identifier
hi link        asteriskPort            Identifier
hi link        asteriskHostname        Identifier
hi link        asteriskSetting         Statement
hi link        asteriskError           Error
hi link verilogamsCharacter    Character
hi link verilogamsConditional  Conditional
hi link verilogamsRepeat       Repeat
hi link verilogamsString       String
hi link verilogamsTodo         Todo
hi link verilogamsComment      Comment
hi link verilogamsConstant     Constant
hi link verilogamsLabel        Label
hi link verilogamsNumber       Number
hi link verilogamsOperator     Special
hi link verilogamsStatement    Statement
hi link verilogamsGlobal       Define
hi link verilogamsDirective    SpecialComment
hi link verilogamsEscape       Special
hi link verilogamsType         Type
hi link verilogamsSystask      Function
hi link slrnrcTodo		Todo
hi link slrnrcSpaceError	Error
hi link slrnrcNumber		Number
hi link slrnrcSpecKey		SpecialChar
hi link slrnrcKey		String
hi link slrnrcSpecChar		SpecialChar
hi link slrnrcString		String
hi link slrnSlangPreCondit	Special
hi link slrnrcComment		Comment
hi link slrnrcVarInt		Identifier
hi link slrnrcVarStr		Identifier
hi link slrnrcCmd		slrnrcSet
hi link slrnrcSet		Operator
hi link slrnrcColor		Keyword
hi link slrnrcColorObj		Identifier
hi link slrnrcColorVal		String
hi link slrnrcMono		Keyword
hi link slrnrcMonoObj		Identifier
hi link slrnrcMonoVal		String
hi link slrnrcFunArt		Macro
hi link slrnrcFunGroup		Macro
hi link slrnrcFunRead		Macro
hi link slrnrcSetkeyObj	Identifier
hi link slrnrcSetkey		Keyword
hi link slrnrcUnsetkey		slrnrcSetkey
hi link protoTodo         Todo
hi link protoSyntax       Include
hi link protoStructure    Structure
hi link protoRepeat       Repeat
hi link protoDefault      Keyword
hi link protoExtend       Keyword
hi link protoRPC          Keyword
hi link protoType         Type
hi link protoTypedef      Typedef
hi link protoBool         Boolean
hi link protoInt          Number
hi link protoFloat        Float
hi link protoComment      Comment
hi link protoString       String
hi link cynlibOperator   Operator
hi link cynlibMacro      Statement
hi link cynlibFunction   Statement
hi link cynlibppMacro      Statement
hi link cynlibType       Type
hi link HBhtmlString			 String
hi link HBhtmlTagN			 Function
hi link htmlSpecialChar		 String
hi link HBInvalidLine Error
hi link HBFoobar Comment
hi HBFileName guibg=lightgray guifg=black
hi link HBDirectiveError Error
hi link HBDirectiveBlockEnd HBDirectiveKeyword
hi HBDirectiveKeyword guibg=lightgray guifg=darkgreen
hi link HBComment Comment
hi link HBhtmlTagSk Statement
hi link cspComment			Comment
hi link cspNumber			Number
hi link cspConditional			Conditional
hi link cspOperator			Delimiter
hi link cspKeyword			Keyword
hi link cspReserved			SpecialChar
hi link cspInclude			Error
hi link cspIncludeKeyword		Include
hi link cspIncludeArg			Include
hi link cspAssert			PreCondit
hi link cspType			Type
hi link cspProcess			Function
hi link cspTodo			Todo
hi link cspOldRttComment		Define
hi link cspRttPragmaKeyword		Define
hi link cspSdlRttComment		Define
hi link cspRttPragmaArg		Define
hi link cspRttPragmaSdlArg		Define
hi link cspRttPragmaSdlName		Default
hi link cspRttPragmaSdlTailArg		Define
hi link cspRttPragmaSdlTransName	Default
hi link cspRttPragmaSdlTransTailArg	Define
hi link cspReservedIdentifier	Error
hi link sassEndOfLineComment        sassComment
hi link sassCssComment              sassComment
hi link sassComment                 Comment
hi link sassDefault                 cssImportant
hi link sassVariable                Identifier
hi link sassFunction                Function
hi link sassMixing                  PreProc
hi link sassMixin                   PreProc
hi link sassPlaceholder             PreProc
hi link sassExtend                  PreProc
hi link sassFunctionDecl            PreProc
hi link sassReturn                  PreProc
hi link sassTodo                    Todo
hi link sassCharset                 PreProc
hi link sassMedia                   PreProc
hi link sassMediaOperators          PreProc
hi link sassInclude                 Include
hi link sassDebug                   sassControl
hi link sassWarn                    sassControl
hi link sassControl                 PreProc
hi link sassFor                     PreProc
hi link sassEscape                  Special
hi link sassIdChar                  Special
hi link sassClassChar               Special
hi link sassInterpolationDelimiter  Delimiter
hi link sassAmpersand               Character
hi link sassId                      Identifier
hi link sassClass                   Type
hi link chillLabel	Label
hi link chillUserLabel	Label
hi link chillConditional	Conditional
hi link chillRepeat	Repeat
hi link chillProcess	Repeat
hi link chillSignal	Repeat
hi link chillCharacter	Character
hi link chillSpecialCharacter chillSpecial
hi link chillNumber	Number
hi link chillFloat	Float
hi link chillOctalError	chillError
hi link chillParenError	chillError
hi link chillInParen	chillError
hi link chillCommentError	chillError
hi link chillSpaceError	chillError
hi link chillOperator	Operator
hi link chillStructure	Structure
hi link chillBlock	Operator
hi link chillScope	Operator
hi link chillEDML	PreProc
hi link chillBoolConst	Constant
hi link chillLogical	Constant
hi link chillStorageClass	StorageClass
hi link chillInclude	Include
hi link chillPreProc	PreProc
hi link chillDefine	Macro
hi link chillIncluded	chillString
hi link chillError	Error
hi link chillStatement	Statement
hi link chillPreCondit	PreCondit
hi link chillType	Type
hi link chillCommentError	chillError
hi link chillCommentString chillString
hi link chillComment2String chillString
hi link chillCommentSkip	chillComment
hi link chillString	String
hi link chillComment	Comment
hi link chillSpecial	SpecialChar
hi link chillTodo	Todo
hi link chillBlock	Statement
hi link chillBracket	Delimiter
hi link rngTagName Statement
hi cscVarName term=bold ctermfg=9 gui=bold guifg=blue
hi link cscNumber	Number
hi link cscOctal	Number
hi link cscFloat	Float
hi link cscParenE	Error
hi link cscCommentE	Error
hi link cscSpaceE	Error
hi link cscError	Error
hi link cscString	String
hi link cscComment	Comment
hi link cscTodo		Todo
hi link cscStatement	Statement
hi link cscIfError	Error
hi link cscEqError	Error
hi link cscFunction	Statement
hi link cscCondition	Statement
hi link cscWarn		WarningMsg
hi link cscComE	Error
hi link cscCom	Statement
hi link cscComW	WarningMsg
hi link cscBPMacro	Identifier
hi link cscBPW		WarningMsg
hi link kscriptConditional		Conditional
hi link kscriptRepeat			Repeat
hi link kscriptExceptions		Statement
hi link kscriptFunction		Function
hi link kscriptConst			Constant
hi link kscriptStatement		Statement
hi link kscriptLabel			Label
hi link kscriptStorageClass		StorageClass
hi link kscriptType			Type
hi link kscriptTodo			Todo
hi link kscriptComment		Comment
hi link kscriptString			String
hi link kscriptPreCondit		PreCondit
hi link kscriptHardCoded		Statement
hi link lslKeyword      Keyword
hi link lslType         Type
hi link lslLabel        Label
hi link lslConstant     Constant
hi link lslEvent        PreProc
hi link lslFunction     Function
hi link lslOperator     Operator
hi link lslNumber       Number
hi link lslVectorRot    Special
hi link lslProperty     Identifier
hi link lslString       String
hi link lslSpecialChar  SpecialChar
hi link lslKey          Special
hi link lslBlock        Special
hi link lslTypecast     Operator
hi link lslComment      Comment
hi link chordproDirective Statement
hi link chordproDirWithOpt Statement
hi link chordproOptions Special
hi link chordproChord Type
hi link chordproTag Constant
hi link chordproTab PreProc
hi link chordproComment Comment
hi link chordproBracket Constant
hi link chordproDefineKeyword Type
hi chordproChorus term=bold cterm=bold gui=bold
hi link cocoKeywords         Keyword
hi link cocoUnilineComment   Comment 
hi link cocoMultilineComment Comment
hi link cocoIdentifier       Identifier
hi link cocoString           String
hi link cocoCharacter        Character
hi link cocoOperator         Operator
hi link cocoProductionCode   Statement
hi link cocoPragma           Special
hi link mplayerconfTodo     Todo
hi link mplayerconfComment  Comment
hi link mplayerconfPreProc  PreProc
hi link mplayerconfBoolean  Boolean
hi link mplayerconfNumber   Number
hi link mplayerconfOption   Keyword
hi link mplayerconfString   String
hi link mplayerconfProfile  Special
hi link gitconfigComment		Comment
hi link gitconfigSection		Keyword
hi link gitconfigVariable		Identifier
hi link gitconfigBoolean		Boolean
hi link gitconfigNumber		Number
hi link gitconfigString		String
hi link gitconfigDelim		Delimiter
hi link gitconfigEscape		Delimiter
hi link gitconfigError		Error
hi link dylanintrInfo		Special
hi link dylanintrInterface	Operator
hi link dylanintrMods		Type
hi link dylanintrClass		StorageClass
hi link dylanintrType		Type
hi link dylanintrIncluded	String
hi link dylanintrInclude	Include
hi link HogRuleType           Statement
hi link HogRuleTypeName       Type
hi link HogRuleTypeType       Keyword
hi link HogPreproc            Statement
hi link HogConfig             Statement
hi link HogOutput             Statement
hi link HogConfigName         Type
hi link HogEvFilterKeyword    Statement
hi link HogSuppressKeyword    Statement
hi link HogEvFilterTypes      Constant
hi link HogEvFilterTrack      Constant
hi link HogAttribute          Statement
hi link HogAttributeFile      String
hi link HogAttributeType      Statement
hi link HogInclude            Statement
hi link HogIncludeFile        String
hi link HogDylib              Statement
hi link HogDylibType          Statement
hi link HogDylibFile          String
hi link HogVar                Identifier
hi link HogVarType            Keyword
hi link HogVarSet             Identifier
hi link HogVarValue           String
hi link HogIPVarType          Keyword
hi link HogIPVarSet           Identifier
hi link HogPortVarType         Keyword
hi link HogPortVarSet          Identifier
hi link HogPort                Constant
hi link HogTodo               Todo
hi link HogComment            Comment
hi link HogString             String
hi link HogHexEsc             PreProc
hi link HogNumber             Number
hi link HogSpecial            Constant
hi link HogSpecialAny         Constant
hi link HogIPAddr             Constant
hi link HogIPCidr             Constant
hi link HogOpNot              Operator
hi link HogOpRange            Operator
hi link HogRuleAction         Statement
hi link HogRuleProto          Identifier
hi link HogRuleDir            Operator
hi link HogRuleOption         Keyword
hi link HogRuleChars           String 
hi link HogFileType    HogRuleAction
hi link HogFileTypeOpt HogRuleOption
hi link NotASemiColn     HogRuleChars
hi link expectSharpBang	PreProc
hi link expectVariables	Special
hi link expectCommand		Function
hi link expectStatement	Statement
hi link expectConditional	Conditional
hi link expectRepeat		Repeat
hi link expectExpectOpts	Keyword
hi link expectOutVar		Special
hi link expectSpecial		Special
hi link expectNumber		Number
hi link expectString		String
hi link expectComment		Comment
hi link expectTodo		Todo
hi link specSection			Structure
hi link specSectionMacro		Macro
hi link specWWWlink			PreProc
hi link specOpts			Operator
hi specGlobalMacro		ctermfg=white
hi link specGlobalMacro		Identifier
hi link shComment			Comment
hi link shIf				Statement
hi link shOperator			Special
hi link shQuote1			String
hi link shQuote2			String
hi link shQuoteDelim			Statement
hi link specBlock			Function
hi link specColon			Special
hi link specCommand			Statement
hi link specCommandOpts		specOpts
hi link specCommandSpecial		Special
hi link specComment			Comment
hi link specConfigure			specCommand
hi link specDate			String
hi link specDescriptionOpts		specOpts
hi link specEmail			specWWWlink
hi link specError			Error
hi link specFilesDirective		specSectionMacro
hi link specFilesOpts			specOpts
hi link specLicense			String
hi link specMacroNameLocal		specGlobalMacro
hi link specMacroNameOther		specGlobalMacro
hi link specManpageFile		NONE
hi link specMonth			specDate
hi link specNoNumberHilite		NONE
hi link specNumber			Number
hi link specPackageOpts		specOpts
hi link specPercent			Special
hi link specSpecialChar		Special
hi link specSpecialVariables		specGlobalMacro
hi link specSpecialVariablesNames	specGlobalMacro
hi link specTarCommand			specCommand
hi link specURL			specWWWlink
hi link specURLMacro			specWWWlink
hi link specVariables			Identifier
hi link specWeekday			specDate
hi link specListedFilesBin		Statement
hi link specListedFilesDoc		Statement
hi link specListedFilesEtc		Statement
hi link specListedFilesLib		Statement
hi link specListedFilesPrefix		Statement
hi link specListedFilesShare		Statement
hi link perlSharpBang		PreProc
hi link perlControl		PreProc
hi link perlInclude		Include
hi link perlSpecial		Special
hi link perlString		String
hi link perlCharacter		Character
hi link perlNumber		Number
hi link perlFloat		Float
hi link perlType			Type
hi link perlIdentifier		Identifier
hi link perlLabel		Label
hi link perlStatement		Statement
hi link perlConditional		Conditional
hi link perlRepeat		Repeat
hi link perlOperator		Operator
hi link perlFunction		Keyword
hi link perlSubName		Function
hi link perlSubPrototype		Type
hi link perlSignature		Type
hi link perlSubAttributes	PreProc
hi link perlSubAttributesCont	perlSubAttributes
hi link perlComment		Comment
hi link perlTodo			Todo
hi link perlVStringV		perlStringStartEnd
hi link perlList			perlStatement
hi link perlMisc			perlStatement
hi link perlVarPlain		perlIdentifier
hi link perlVarPlain2		perlIdentifier
hi link perlArrow		perlIdentifier
hi link perlFiledescRead		perlIdentifier
hi link perlFiledescStatement	perlIdentifier
hi link perlVarSimpleMember	perlIdentifier
hi link perlVarSimpleMemberName 	perlString
hi link perlVarNotInMatches	perlIdentifier
hi link perlVarSlash		perlIdentifier
hi link perlQQ			perlString
hi link perlHereDoc		perlString
hi link perlStringUnexpanded	perlString
hi link perlSubstitutionSQ	perlString
hi link perlSubstitutionGQQ	perlString
hi link perlTranslationGQ	perlString
hi link perlMatch		perlString
hi link perlMatchStartEnd	perlStatement
hi link perlFormatName		perlIdentifier
hi link perlFormatField		perlString
hi link perlPackageDecl		perlType
hi link perlStorageClass		perlType
hi link perlPackageRef		perlType
hi link perlStatementPackage	perlStatement
hi link perlStatementStorage	perlStatement
hi link perlStatementControl	perlStatement
hi link perlStatementScalar	perlStatement
hi link perlStatementRegexp	perlStatement
hi link perlStatementNumeric	perlStatement
hi link perlStatementList	perlStatement
hi link perlStatementHash	perlStatement
hi link perlStatementIOfunc	perlStatement
hi link perlStatementFiledesc	perlStatement
hi link perlStatementVector	perlStatement
hi link perlStatementFiles	perlStatement
hi link perlStatementFlow	perlStatement
hi link perlStatementInclude	perlStatement
hi link perlStatementProc	perlStatement
hi link perlStatementSocket	perlStatement
hi link perlStatementIPC		perlStatement
hi link perlStatementNetwork	perlStatement
hi link perlStatementPword	perlStatement
hi link perlStatementTime	perlStatement
hi link perlStatementMisc	perlStatement
hi link perlStatementIndirObj	perlStatement
hi link perlFunctionName		perlIdentifier
hi link perlMethod		perlIdentifier
hi link perlPostDeref		perlIdentifier
hi link perlFunctionPRef		perlType
hi link perlShellCommand		perlString
hi link perlSpecialAscii		perlSpecial
hi link perlSpecialDollar	perlSpecial
hi link perlSpecialString	perlSpecial
hi link perlSpecialStringU	perlSpecial
hi link perlSpecialMatch		perlSpecial
hi link perlDATA			perlComment
hi link perlParensSQ		perlString
hi link perlBracketsSQ		perlString
hi link perlBracesSQ		perlString
hi link perlAnglesSQ		perlString
hi link perlParensDQ		perlString
hi link perlBracketsDQ		perlString
hi link perlBracesDQ		perlString
hi link perlAnglesDQ		perlString
hi link perlSpecialStringU2	perlString
hi link perlNotEmptyLine		Error
hi link perlElseIfError		Error
hi link perlSubPrototypeError	Error
hi link perlSubError		Error
hi link cabalVersion       Number
hi link cabalTruth         Boolean
hi link cabalComment       Comment
hi link cabalStatement     Statement
hi link cabalCategory      Type
hi link cabalFunction      Function
hi link cabalConditional   Conditional
hi link cabalOperator      Operator
hi link cabalCompiler      Constant
hi link screenEscape    Special
hi link screenComment   Comment
hi link screenTodo      Todo
hi link screenString    String
hi link screenLiteral   String
hi link screenVariable  Identifier
hi link screenBoolean   Boolean
hi link screenNumbers   Number
hi link screenSpecials  Special
hi link screenCommands  Keyword
hi link upstreamlog_Date	Underlined
hi link upstreamlog_MsgD	Type
hi link upstreamlog_MsgE	Error
hi link upstreamlog_MsgW	Constant
hi link upstreamlog_Process	Statement
hi link upstreamlog_IPaddr	Identifier
hi link upstreamlog_Profile	Identifier
hi link upstreamlog_Target	Identifier
hi link smclEString		smclString
hi link smclCCLword		Statement
hi link smclCCL		Type
hi link smclFormat		Statement
hi link smclLink		Underlined
hi link smclComment		Comment
hi link smclString		String
hi link sicadLabel PreProc
hi link sicadLabel1 sicadLabel
hi link sicadLabel2 sicadLabel
hi link sicadConditional Conditional
hi link sicadBoolean Boolean
hi link sicadNumber Number
hi link sicadFloat Float
hi link sicadOperator Operator
hi link sicadStatement Statement
hi link sicadParameter sicadStatement
hi link sicadGoto sicadStatement
hi link sicadLineCont sicadStatement
hi link sicadString String
hi link sicadComment Comment
hi link sicadSpecial Special
hi link sicadIdentifier Type
hi link sicadError Error
hi link sicadParenError sicadError
hi link sicadApostropheError sicadError
hi link sicadStringError sicadError
hi link sicadCommentError sicadError
hi link msmessagesNumber		Number
hi link msmessagesOctal		Number
hi link msmessagesFloat		Float
hi link msmessagesOctalError	msmessagesError
hi link msmessagesSetError		msmessagesError
hi link msmessagesError		Error
hi link msmessagesLangEntry		String
hi link msmessagesLangEntryEnd	Special
hi link msmessagesComment		Comment
hi link msmessagesFormat		msmessagesSpecial
hi link msmessagesSpecial		SpecialChar
hi link msmessagesType		Type
hi link msmessagesIdentifier	Identifier
hi link msmessagesLanguage		msmessagesIdentifier
hi link msmessagesName		msmessagesIdentifier
hi link msmessagesNameDef		Macro
hi link msmessagesIdentDef		Macro
hi link msmessagesValSep		Special
hi link msmessagesNameErr		Error
hi link markdownH1                    htmlH1
hi link markdownH2                    htmlH2
hi link markdownH3                    htmlH3
hi link markdownH4                    htmlH4
hi link markdownH5                    htmlH5
hi link markdownH6                    htmlH6
hi link markdownHeadingRule           markdownRule
hi link markdownHeadingDelimiter      Delimiter
hi link markdownOrderedListMarker     markdownListMarker
hi link markdownListMarker            htmlTagName
hi link markdownBlockquote            Comment
hi link markdownRule                  PreProc
hi link markdownFootnote              Typedef
hi link markdownFootnoteDefinition    Typedef
hi link markdownLinkText              htmlLink
hi link markdownIdDeclaration         Typedef
hi link markdownId                    Type
hi link markdownAutomaticLink         markdownUrl
hi link markdownUrl                   Float
hi link markdownUrlTitle              String
hi link markdownIdDelimiter           markdownLinkDelimiter
hi link markdownUrlDelimiter          htmlTag
hi link markdownUrlTitleDelimiter     Delimiter
hi link markdownItalic                htmlItalic
hi link markdownItalicDelimiter       markdownItalic
hi link markdownBold                  htmlBold
hi link markdownBoldDelimiter         markdownBold
hi link markdownBoldItalic            htmlBoldItalic
hi link markdownBoldItalicDelimiter   markdownBoldItalic
hi link markdownCodeDelimiter         Delimiter
hi link markdownEscape                Special
hi link markdownError                 Error
hi link groovyCommentString groovyString
hi link groovyComment2String groovyString
hi link groovyCommentCharacter groovyCharacter
hi link groovyELExpr Identifier
hi link groovyParenError       groovyError
hi link groovyFuncDef		Function
hi link groovyBraces		Function
hi link groovyBranch		Conditional
hi link groovyUserLabelRef	groovyUserLabel
hi link groovyLabel		Label
hi link groovyUserLabel		Label
hi link groovyConditional	Conditional
hi link groovyRepeat		Repeat
hi link groovyExceptions		Exception
hi link groovyAssert 		Statement
hi link groovyStorageClass	StorageClass
hi link groovyMethodDecl		groovyStorageClass
hi link groovyClassDecl		groovyStorageClass
hi link groovyScopeDecl		groovyStorageClass
hi link groovyBoolean		Boolean
hi link groovySpecial		Special
hi link groovySpecialError	Error
hi link groovySpecialCharError	Error
hi link groovyString		String
hi link groovyRegexChar		String
hi link groovyCharacter		Character
hi link groovySpecialChar	SpecialChar
hi link groovyNumber		Number
hi link groovyError		Error
hi link groovyStringError	Error
hi link groovyStatement		Statement
hi link groovyOperator		Operator
hi link groovyComment		Comment
hi link groovyDocComment		Comment
hi link groovyLineComment	Comment
hi link groovyConstant		Constant
hi link groovyTypedef		Typedef
hi link groovyTodo		Todo
hi link groovyCommentTitle	SpecialComment
hi link groovyDocTags		Special
hi link groovyDocParam		Function
hi link groovyCommentStar	groovyComment
hi link groovyType		Type
hi link groovyExternal		Include
hi link htmlComment		Special
hi link htmlCommentPart		Special
hi link groovySpaceError		Error
hi link groovyJDKBuiltin         Special
hi link groovyJDKOperOverl       Operator
hi link groovyJDKMethods         Function
hi link rebolTodo     Todo
hi link rebolStatement Statement
hi link rebolLabel	Label
hi link rebolConditional Conditional
hi link rebolRepeat	Repeat
hi link rebolOperator	Operator
hi link rebolLogicOperator rebolOperator
hi link rebolLogicFunction rebolLogicOperator
hi link rebolMathOperator rebolOperator
hi link rebolMathFunction rebolMathOperator
hi link rebolBinaryOperator rebolOperator
hi link rebolBinaryFunction rebolBinaryOperator
hi link rebolType     Type
hi link rebolTypeFunction rebolOperator
hi link rebolWord     Identifier
hi link rebolWordPath rebolWord
hi link rebolFunction	Function
hi link rebolCharacter Character
hi link rebolSpecialCharacter SpecialChar
hi link rebolString	String
hi link rebolNumber   Number
hi link rebolInteger  rebolNumber
hi link rebolDecimal  rebolNumber
hi link rebolTime     rebolNumber
hi link rebolDate     rebolNumber
hi link rebolMoney    rebolNumber
hi link rebolBinary   rebolNumber
hi link rebolEmail    rebolString
hi link rebolFile     rebolString
hi link rebolURL      rebolString
hi link rebolIssue    rebolNumber
hi link rebolTuple    rebolNumber
hi link rebolFloat    Float
hi link rebolBoolean  Boolean
hi link rebolConstant Constant
hi link rebolComment	Comment
hi link rebolError	Error
hi link namedComment	Comment
hi link namedInclude	Include
hi link namedKeyword	Keyword
hi link namedIntKeyword	Keyword
hi link namedIdentifier	Identifier
hi link namedIntIdent	Identifier
hi link namedString	String
hi link namedBool	Type
hi link namedNotBool	Error
hi link namedNumber	Number
hi link namedNotNumber	Error
hi link namedOption	namedKeyword
hi link namedLogOption	namedKeyword
hi link namedCNOption	namedKeyword
hi link namedQSKeywords	Type
hi link namedCNKeywords	Type
hi link namedLogCategory	Type
hi link namedIPaddr	Number
hi link namedDomain	Identifier
hi link namedZoneOpt	namedKeyword
hi link namedZoneType	Type
hi link namedParenError	Error
hi link namedEParenError	Error
hi link namedIllegalDom	Error
hi link namedIPerror	Error
hi link namedSpareDot	Error
hi link namedError	Error
hi link asnDefinition	Function
hi link asnBraces		Function
hi link asnStructure	Statement
hi link asnBoolValue	Boolean
hi link asnSpecial		Special
hi link asnString		String
hi link asnCharacter	Character
hi link asnSpecialCharacter	asnSpecial
hi link asnNumber		asnValue
hi link asnComment		Comment
hi link asnLineComment	asnComment
hi link asnType		Type
hi link asnTypeInfo		PreProc
hi link asnValue		Number
hi link asnExternal		Include
hi link asnTagModifier	Function
hi link asnFieldOption	Type
hi link dylanBlock		PreProc
hi link dylanBoolean		Boolean
hi link dylanCharacter		Character
hi link dylanClass		Structure
hi link dylanClassMods		StorageClass
hi link dylanComment		Comment
hi link dylanConditional	Conditional
hi link dylanConstant		Constant
hi link dylanException		Exception
hi link dylanHeader		Macro
hi link dylanImport		Include
hi link dylanLabel		Label
hi link dylanMiscMods		StorageClass
hi link dylanNumber		Number
hi link dylanOther		Keyword
hi link dylanOperator		Operator
hi link dylanParamDefs		Keyword
hi link dylanPrecondit		PreCondit
hi link dylanRepeat		Repeat
hi link dylanSimpleDefs	Keyword
hi link dylanStatement		Macro
hi link dylanString		String
hi link dylanVariable		Identifier
hi link cvsLine		Comment
hi link cvsDir		cvsFile
hi link cvsFile		Constant
hi link cvsFiles		cvsCom
hi link cvsTag		cvsCom
hi link cvsCom		Statement
hi link vgrindefsField	Statement
hi link vgrindefsComment	Comment
hi link spiceTodo		Todo
hi link spiceWrapLineOperator	spiceOperator
hi link spiceSinglequote	spiceExpr
hi link spiceExpr		Function
hi link spiceParenError	Error
hi link spiceStatement		Statement
hi link spiceNumber		Number
hi link spiceComment		Comment
hi link spiceOperator		Operator
hi link nasmInMacDirective	nasmDirective
hi link nasmInMacLabel		nasmLocalLabel
hi link nasmInMacLblWarn	nasmLabelWarn
hi link nasmInMacMacro		nasmMacro
hi link nasmInMacParam		nasmMacro
hi link nasmInMacParamNum	nasmDecNumber
hi link nasmInMacPreCondit	nasmPreCondit
hi link nasmInMacPreProc	nasmPreProc
hi link nasmInPreCondit	nasmPreCondit
hi link nasmInStructure	nasmStructure
hi link nasmStructureLabel	nasmStructure
hi link nasmComment		Comment
hi link nasmSpecialComment	SpecialComment
hi link nasmInCommentTodo	Todo
hi link nasmString		String
hi link nasmCString	String
hi link nasmStringError	Error
hi link nasmCStringEscape	SpecialChar
hi link nasmCStringFormat	SpecialChar
hi link nasmBinNumber		Number
hi link nasmOctNumber		Number
hi link nasmDecNumber		Number
hi link nasmHexNumber		Number
hi link nasmFltNumber		Float
hi link nasmNumberError	Error
hi link nasmLabel		Identifier
hi link nasmLocalLabel		Identifier
hi link nasmSpecialLabel	Special
hi link nasmLabelError		Error
hi link nasmLabelWarn		Todo
hi link nasmPreProc		PreProc
hi link nasmDefine		Define
hi link nasmInclude		Include
hi link nasmMacro		Macro
hi link nasmPreCondit		PreCondit
hi link nasmPreProcError	Error
hi link nasmPreProcWarn	Todo
hi link nasmType		Type
hi link nasmStorage		StorageClass
hi link nasmStructure		Structure
hi link nasmTypeError		Error
hi link nasmConstant		Constant
hi link nasmInstrModifier	Operator
hi link nasmRepeat		Repeat
hi link nasmDirective		Keyword
hi link nasmStdDirective	Operator
hi link nasmFmtDirective	Keyword
hi link nasmCtrlRegister	Special
hi link nasmDebugRegister	Debug
hi link nasmTestRegister	Special
hi link nasmRegisterError	Error
hi link nasmMemRefError	Error
hi link nasmStdInstruction	Statement
hi link nasmSysInstruction	Statement
hi link nasmDbgInstruction	Debug
hi link nasmFpuInstruction	Statement
hi link nasmMmxInstruction	Statement
hi link nasmSseInstruction	Statement
hi link nasmNowInstruction	Statement
hi link nasmAmdInstruction	Special
hi link nasmCrxInstruction	Special
hi link nasmUndInstruction	Todo
hi link nasmInstructnError	Error
hi link debchangelogHeader  Error
hi link debchangelogFooter  Identifier
hi link debchangelogEntry   Normal
hi link debchangelogCloses  Statement
hi link debchangelogLP      Statement
hi link debchangelogFirstKV Identifier
hi link debchangelogOtherKV Identifier
hi link debchangelogName    Comment
hi link debchangelogVersion Identifier
hi link debchangelogTarget  Identifier
hi link debchangelogEmail   Special
hi link IPFComment	Comment
hi link IPFTodo		Todo
hi link IPFService	Constant
hi link IPFAction	Type
hi link ipfActionBlock	String
hi link ipfActionPass	Type
hi link IPFSpecial	Statement
hi link IPFIPv4		Label
hi link IPFNetmask	String
hi link IPFAny		Statement
hi link IPFProto	Identifier
hi link terminfoComment     Comment
hi link terminfoTodo        Todo
hi link terminfoNumbers     Number
hi link terminfoSpecialChar SpecialChar
hi link terminfoDelay       Special
hi link terminfoBooleans    Type
hi link terminfoNumerics    Type
hi link terminfoStrings     Type
hi link terminfoParameters  Keyword
hi link terminfoKeywords    Keyword
hi link dtmlIsTag			PreProc
hi link dtmlAttribute		Identifier
hi link dtmlMethod			Function
hi link dtmlComment		Comment
hi link dtmlTODO			Todo
hi link dtmlSpecialChar    Special
hi link loutTodo Todo
hi link loutDefine Define
hi link loutEOmlDef Define
hi link loutFunction Function
hi link loutBraceError Error
hi link loutNULL Special
hi link loutComment Comment
hi link loutSpecial Special
hi link loutSymbols Character
hi link loutInclude Include
hi link loutKeyword Keyword
hi link loutTag Tag
hi link loutMath Number
hi link loutMBraces loutMath
hi loutItalic term=italic cterm=italic gui=italic
hi link loutIBraces loutItalic
hi loutBold term=bold cterm=bold gui=bold
hi link loutBBraces loutBold
hi loutBoldItalic term=bold,italic cterm=bold,italic gui=bold,italic
hi link loutBIBraces loutBoldItalic
hi loutHeadings term=bold cterm=bold guifg=indianred
hi link loutHeads loutHeadings
hi link informDefine		Define
hi link informType		Type
hi link informInclude		Include
hi link informPreCondit	PreCondit
hi link informPreProc		PreProc
hi link informGramPreProc	PreProc
hi link informAsm		Special
hi link informAsmObsolete		informError
hi link informKeywordObsolete	informError
hi link informAsmObsolete		Special
hi link informKeywordObsolete	Keyword
hi link informPredicate	Operator
hi link informSysFunc		Identifier
hi link informSysConst		Identifier
hi link informConditional	Conditional
hi link informRepeat		Repeat
hi link informStatement	Statement
hi link informOperator		Operator
hi link informKeyword		Keyword
hi link informGrammar		Keyword
hi link informDictString	String
hi link informNumber		Number
hi link informError		Error
hi link informString		String
hi link informComment		Comment
hi link informAccent		Special
hi link informStringUnicode	Special
hi link informStringCode	Special
hi link informTodo		Todo
hi link informLibAttrib	Identifier
hi link informLibProp	Identifier
hi link informLibObj		Identifier
hi link informLibRoutine	Identifier
hi link informLibVariable	Identifier
hi link informLibConst	Identifier
hi link informLibAction	Identifier
hi link informBadDictString	informError
hi link informBadAccent	informError
hi link informBadStrUnicode	informError
hi link btmLabel		Special
hi link btmLabelMark		Special
hi link btmCmdDivider		Special
hi link btmConditional		btmStatement
hi link btmDotBoolOp		btmStatement
hi link btmRepeat		btmStatement
hi link btmEchoCommand	btmStatement
hi link btmEchoParam		btmStatement
hi link btmStatement		Statement
hi link btmTodo		Todo
hi link btmString		String
hi link btmNumber		Number
hi link btmComment		Comment
hi link btmArgument		Identifier
hi link btmVariable		Identifier
hi link btmEcho		String
hi link btmBIFMatch		btmStatement
hi link btmBuiltInFunc		btmStatement
hi link btmBuiltInVar		btmStatement
hi link btmSpecialVar		btmStatement
hi link btmCommand		btmStatement
hi link cLabel		Label
hi link cynppMacro  Statement
hi link slpconfTodo         Todo
hi link slpconfComment      Comment
hi link slpconfTag          Identifier
hi link slpconfDelimiter    Delimiter
hi link slpconfNetTagDot    slpconfDelimiter
hi link slpconfNetTag       slpconfTag
hi link slpconfNetSlpTagDot slpconfNetTagDot
hi link slpconfNetSlpTag    slpconfTag
hi link slpconfHome         Special
hi link slpconfBooleanHome  slpconfHome
hi link slpconfEq           Operator
hi link slpconfBooleanEq    slpconfEq
hi link slpconfBoolean      Boolean
hi link slpconfIntegerHome  slpconfHome
hi link slpconfIntegerEq    slpconfEq
hi link slpconfInteger      Number
hi link slpconfAttrHome     slpconfHome
hi link slpconfAttrEq       slpconfEq
hi link slpconfAttrBegin    slpconfDelimiter
hi link slpconfAttrTag      slpconfTag
hi link slpconfAttrTagEq    slpconfEq
hi link slpconfAttrIValue   slpconfInteger
hi link slpconfAttrSValue   slpconfString
hi link slpconfAttrBValue   slpconfBoolean
hi link slpconfAttrSSValue  slpconfString
hi link slpconfSeparator    slpconfDelimiter
hi link slpconfAttrValueSep slpconfSeparator
hi link slpconfAttrEnd      slpconfAttrBegin
hi link slpconfAttrSep      slpconfSeparator
hi link slpconfStringsHome  slpconfHome
hi link slpconfStringsEq    slpconfEq
hi link slpconfStrings      slpconfString
hi link slpconfStringsSep   slpconfSeparator
hi link slpconfAddrsHome    slpconfHome
hi link slpconfAddressesEq  slpconfEq
hi link slpconfFQDNs        String
hi link slpconfHostnumbers  Number
hi link slpconfAddressesSep slpconfSeparator
hi link slpconfStringHome   slpconfHome
hi link slpconfStringEq     slpconfEq
hi link slpconfString       String
hi link slpconfIntegersHome slpconfHome
hi link slpconfIntegersEq   slpconfEq
hi link slpconfIntegers     slpconfInteger
hi link slpconfIntegersSep  slpconfSeparator
hi link slpconfHostnumsHome slpconfHome
hi link slpconfHostnumsEq   slpconfEq
hi link slpconfOHostnumbers slpconfHostnumbers
hi link slpconfHostnumsSep  slpconfSeparator
hi link slpconfLocaleHome   slpconfHome
hi link slpconfLocaleEq     slpconfEq
hi link slpconfLocale       slpconfString
hi link nqcLabel		Label
hi link nqcConditional		Conditional
hi link nqcRepeat		Repeat
hi link nqcCharacter		Character
hi link nqcNumber		Number
hi link nqcFloat		Float
hi link nqcFunction		Function
hi link nqcParenError		nqcError
hi link nqcErrInParen		nqcError
hi link nqcErrInBracket	nqcError
hi link nqcCommentL		nqcComment
hi link nqcCommentStart	nqcComment
hi link nqcCommentError	nqcError
hi link nqcCommentStartError	nqcError
hi link nqcSpaceError		nqcError
hi link nqcStorageClass	StorageClass
hi link nqcInclude		Include
hi link nqcPreProc		PreProc
hi link nqcDefine		Macro
hi link nqcIncluded		String
hi link nqcError		Error
hi link nqcStatement		Statement
hi link nqcEvents		Statement
hi link nqcPreCondit		PreCondit
hi link nqcType		Type
hi link nqcConstant		Constant
hi link nqcCommentSkip		nqcComment
hi link nqcComment		Comment
hi link nqcTodo		Todo
hi link nqcCppSkip		nqcCppOut
hi link nqcCppOut2		nqcCppOut
hi link nqcCppOut		Comment
hi link rmdYamlBlockDelim Delim
hi link rmdInlineDelim Special
hi link rmdSlidifySpecial Special
hi link gitDateHeader        gitIdentityHeader
hi link gitIdentityHeader    gitIdentityKeyword
hi link gitIdentityKeyword   Label
hi link gitNotesHeader       gitKeyword
hi link gitReflogHeader      gitKeyword
hi link gitKeyword           Keyword
hi link gitIdentity          String
hi link gitEmailDelimiter    Delimiter
hi link gitEmail             Special
hi link gitDate              Number
hi link gitMode              Number
hi link gitHashAbbrev        gitHash
hi link gitHash              Identifier
hi link gitReflogMiddle      gitReference
hi link gitReference         Function
hi link gitStage             gitType
hi link gitType              Type
hi link gitDiffAdded         diffAdded
hi link gitDiffRemoved       diffRemoved
hi link aapTodo		Todo
hi link aapString		String
hi link aapComment		Comment
hi link aapSpecial		Special
hi link aapVariable		Identifier
hi link aapPipeCmd		aapCommand
hi link aapCommand		Statement
hi link aapHeredoc		Constant
hi link wsmlHeader			TypeDef
hi link wsmlNamespace			TypeDef
hi link wsmlOntology			Statement
hi link wsmlAxiom			TypeDef
hi link wsmlService			TypeDef
hi link wsmlNFP			TypeDef
hi link wsmlTopLevel			TypeDef
hi link wsmlMediation			TypeDef 
hi link wsmlBehavioral		TypeDef
hi link wsmlChoreographyPri		TypeDef
hi link wsmlChoreographySec		Operator
hi link wsmlChoreographyTer		Special
hi link wsmlString			String
hi link wsmlIdentifier		Normal 
hi link wsmlSqName                     Normal
hi link wsmlVariable			Define
hi link wsmlKeywordsInsideLEs		Operator
hi link wsmlOperator			Operator
hi link wsmlBrace			Operator
hi link wsmlCharacter			Character
hi link wsmlNumber			Number
hi link wsmlDataTypes			Special
hi link wsmlComment			Comment
hi link wsmlDocComment		Comment
hi link wsmlLineComment		Comment
hi link wsmlTodo			Todo
hi link wsmlFixMe			Error
hi link wsmlCommentTitle		SpecialComment
hi link wsmlCommentStar		wsmlComment
hi link vbBoolean		Boolean
hi link vbLineNumber		Comment
hi link vbComment		Comment
hi link vbConditional	Conditional
hi link vbConst			Constant
hi link vbDefine			Constant
hi link vbError			Error
hi link vbFunction		Identifier
hi link vbIdentifier		Identifier
hi link vbNumber			Number
hi link vbFloat			Float
hi link vbMethods		PreProc
hi link vbOperator		Operator
hi link vbRepeat			Repeat
hi link vbString			String
hi link vbStatement		Statement
hi link vbKeyword		Statement
hi link vbEvents			Special
hi link vbTodo			Todo
hi link vbTypes			Type
hi link vbTypeSpecifier	Type
hi link ocamlBraceErr	   Error
hi link ocamlBrackErr	   Error
hi link ocamlParenErr	   Error
hi link ocamlArrErr	   Error
hi link ocamlCommentErr   Error
hi link ocamlCountErr	   Error
hi link ocamlDoErr	   Error
hi link ocamlDoneErr	   Error
hi link ocamlEndErr	   Error
hi link ocamlThenErr	   Error
hi link ocamlCharErr	   Error
hi link ocamlErr	   Error
hi link ocamlComment	   Comment
hi link ocamlModPath	   Include
hi link ocamlObject	   Include
hi link ocamlModule	   Include
hi link ocamlModParam1    Include
hi link ocamlModType	   Include
hi link ocamlMPRestr3	   Include
hi link ocamlFullMod	   Include
hi link ocamlModTypeRestr Include
hi link ocamlWith	   Include
hi link ocamlMTDef	   Include
hi link ocamlScript	   Include
hi link ocamlConstructor  Constant
hi link ocamlVal          Keyword
hi link ocamlModPreRHS    Keyword
hi link ocamlMPRestr2	   Keyword
hi link ocamlKeyword	   Keyword
hi link ocamlMethod	   Include
hi link ocamlFunDef	   Keyword
hi link ocamlRefAssign    Keyword
hi link ocamlKeyChar	   Keyword
hi link ocamlAnyVar	   Keyword
hi link ocamlTopStop	   Keyword
hi link ocamlOperator	   Keyword
hi link ocamlBoolean	   Boolean
hi link ocamlCharacter    Character
hi link ocamlNumber	   Number
hi link ocamlFloat	   Float
hi link ocamlString	   String
hi link ocamlLabel	   Identifier
hi link ocamlType	   Type
hi link ocamlTodo	   Todo
hi link ocamlEncl	   Keyword
hi link smClause	Special
hi link smClauseError	Error
hi link smComment	Comment
hi link smDefine	Statement
hi link smElse	Delimiter
hi link smHeader	Statement
hi link smHeaderSep	String
hi link smMesg	Special
hi link smPrecedence	Number
hi link smRewrite	Statement
hi link smRewriteComment	Comment
hi link smRewriteLhsToken	String
hi link smRewriteLhsUser	Statement
hi link smRewriteRhsToken	String
hi link smRuleset	Preproc
hi link smTrusted	Special
hi link smVar		String
hi link jamCommentL		jamComment
hi link jamCommentL2		jamComment
hi link jamOperator3Error	jamError
hi link jamConditional	Conditional
hi link jamRepeat		Repeat
hi link jamCharacter		Character
hi link jamSpecialCharacter	jamSpecial
hi link jamNumber		Number
hi link jamParenError	jamError
hi link jamErrInParen	jamError
hi link jamErrInBracket	jamError
hi link jamCommentError	jamError
hi link jamSpaceError	jamError
hi link jamSpecialError	jamError
hi link jamOperator1		jamOperator
hi link jamOperator2		jamOperator
hi link jamOperator3		jamOperator
hi link jamOperator4		jamOperator
hi link jamOperator5		jamOperator
hi link jamOperator6		jamOperator
hi link jamOperator7		jamOperator
hi link jamOperator8		jamOperator
hi link jamOperator9		jamOperator
hi link jamOperator10	jamOperator
hi link jamOperator11	jamOperator
hi link jamOperator12	jamOperator
hi link jamOperator13	jamOperator
hi link jamOperator14	jamOperator
hi link jamError		Error
hi link jamStatement		Statement
hi link jamPreCondit		PreCondit
hi link jamCommentError	jamError
hi link jamCommentString	jamString
hi link jamComment2String	jamString
hi link jamCommentSkip	jamComment
hi link jamString		String
hi link jamComment		Comment
hi link jamSpecial		SpecialChar
hi link jamTodo		Todo
hi link jamCppSkip		jamCppOut
hi link jamCppOut2		jamCppOut
hi link jamCppOut		Comment
hi link jamDBState1		Identifier
hi link jamDBState2		Identifier
hi link jamSQLState1		jamSQL
hi link jamSQLState2		jamSQL
hi link jamLibFunc1		jamLibFunc
hi link jamLibFunc2		jamLibFunc
hi link jamLibFunc3		jamLibFunc
hi link jamLibFunc4		jamLibFunc
hi link jamLibFunc5		jamLibFunc
hi link jamLibFunc6		jamLibFunc
hi link jamLibFunc7		jamLibFunc
hi link jamLibFunc8		jamLibFunc
hi link jamLibFunc9		jamLibFunc
hi link jamVariable1		jamVariablen
hi link jamVariable2		jamVariablen
hi link jamVariable3		jamVariablen
hi link jamVariable4		jamVariablen
hi link jamVariable5		jamVariablen
hi link jamVariable6		jamVariablen
hi link jamVariable7		jamVariablen
hi link jamVariable8		jamVariablen
hi link jamVariable9		jamVariablen
hi link jamVariable10	jamVariablen
hi link jamVariablen		Constant
hi link jamSQL		Type
hi link jamLibFunc		PreProc
hi link jamOperator		Special
hi link hamlSelfCloser             Special
hi link hamlDespacer               Special
hi link hamlClassChar              Special
hi link hamlIdChar                 Special
hi link hamlTag                    Special
hi link hamlClass                  Type
hi link hamlId                     Identifier
hi link hamlPlainChar              Special
hi link hamlInterpolatableChar     hamlRubyChar
hi link hamlRubyOutputChar         hamlRubyChar
hi link hamlRubyChar               Special
hi link hamlInterpolationDelimiter Delimiter
hi link hamlInterpolationEscape    Special
hi link hamlAttributeString        String
hi link hamlAttributeVariable      Identifier
hi link hamlDocType                PreProc
hi link hamlFilter                 PreProc
hi link hamlAttributesDelimiter    Delimiter
hi link hamlObjectDelimiter        Delimiter
hi link hamlHelper                 Function
hi link hamlHtmlComment            hamlComment
hi link hamlComment                Comment
hi link hamlIEConditional          SpecialComment
hi link hamlError                  Error
hi link lotosStatement		Statement
hi link lotosProcess		Label
hi link lotosOperator		Operator
hi link lotosSort		Function
hi link lotosType		Type
hi link lotosComment		Comment
hi link lotosDelimiter		String
hi link slrnscComment		Comment
hi link slrnscSectionCom	slrnscComment
hi link slrnscGroup		String
hi link slrnscNumber		Number
hi link slrnscDate		Special
hi link slrnscDelim		Delimiter
hi link slrnscComma		SpecialChar
hi link slrnscOper		SpecialChar
hi link slrnscEsc		String
hi link slrnscSectionStd	Type
hi link slrnscSectionNot	Delimiter
hi link slrnscItem		Statement
hi link slrnscScore		Keyword
hi link slrnscScoreIdent	Identifier
hi link slrnscInclude		Keyword
hi link asmOpcode  Statement
hi link asmRegister  Identifier
hi link tmuxFormatString      Identifier
hi link tmuxAction            Boolean
hi link tmuxBoolean           Boolean
hi link tmuxCommands          Keyword
hi link tmuxComment           Comment
hi link tmuxKey               Special
hi link tmuxNumber            Number
hi link tmuxFlags             Identifier
hi link tmuxOptions           Function
hi link tmuxString            String
hi link tmuxTodo              Todo
hi link tmuxVariable          Identifier
hi link tmuxVariableExpansion Identifier
hi DocbkBold term=bold cterm=bold gui=bold
hi link docbkKeyword	Statement
hi link docbkRegion	DocbkBold
hi link docbkTitle	Title
hi link docbkRemark	Comment
hi link docbkCite	Constant
hi link dtraceReservedKeyword Error
hi link dtracePredicate String
hi link dtraceProbe dtraceStatement
hi link dtraceStatement Statement
hi link dtraceConstant Constant
hi link dtraceIdentifier Identifier
hi link dtraceAggregatingFunction dtraceFunction
hi link dtraceFunction Function
hi link dtraceType Type
hi link dtraceOperator Operator
hi link dtraceComment Comment
hi link dtraceNumber Number
hi link dtraceOption Identifier
hi link modconfTodo         Todo
hi link modconfComment      Comment
hi link modconfConditional  Conditional
hi link modconfPreProc      PreProc
hi link modconfKeyword      Keyword
hi link modconfIdentifier   Identifier
hi link xf86confComment Comment
hi link xf86confTodo Todo
hi link xf86confSectionDelim Statement
hi link xf86confOptionName Identifier
hi link xf86confSectionError xf86confError
hi link xf86confSubSectionError xf86confError
hi link xf86confModeSubSectionError xf86confError
hi link xf86confOctalNumberError xf86confError
hi link xf86confError Error
hi link xf86confOption xf86confKeyword
hi link xf86confModeLine xf86confKeyword
hi link xf86confKeyword Type
hi link xf86confDecimalNumber xf86confNumber
hi link xf86confOctalNumber xf86confNumber
hi link xf86confHexadecimalNumber xf86confNumber
hi link xf86confFrequency xf86confNumber
hi link xf86confModeLineValue Constant
hi link xf86confNumber Constant
hi link xf86confSync xf86confConstant
hi link xf86confConstant Special
hi link xf86confSpecialChar Special
hi link xf86confString String
hi link xf86confValue Constant
hi link rncTodo         Todo
hi link rncComment      Comment
hi link rncOperator     Operator
hi link rncNamespace    Identifier
hi link rncQuoted       Special
hi link rncSpecial      SpecialChar
hi link rncAnnotation   Special
hi link rncLiteral      String
hi link rncDelimiter    Delimiter
hi link rncKeyword      Keyword
hi link rncIdentifier   Identifier
hi link rncIdName       Identifier
hi link mushAttribute  Constant
hi link mushCommand    Function
hi link mushNumber     Number
hi link mushSetting    PreProc
hi link mushFunction   Statement
hi link mushVariable   Identifier
hi link mushSpecial    Special
hi link mushTodo       Todo
hi link mushFlag       Special
hi link mushIdentifier Identifier
hi link mushDefine     Macro
hi link mushPreProc    PreProc
hi link mushPreProcGroup PreProc 
hi link mushPreCondit PreCondit
hi link mushIncluded cString
hi link mushInclude Include
hi link mushCommentStart mushComment
hi link mushComment    Comment
hi link mushCommentString mushString
hi link readlineKey           readlineKeySeq
hi link readlineComment       Comment
hi link readlineTodo          Todo
hi link readlineConditional   Conditional
hi link readlineTest          Type
hi link readlineDelimiter     Delimiter
hi link readlineTestModeEq    readlineEq
hi link readlineTestTermEq    readlineEq
hi link readlineTestTerm      readlineString
hi link readlineTestAppEq     readlineEq
hi link readlineTestApp       readlineString
hi link readlineInclude       Include
hi link readlinePath          String
hi link readlineKeyName       SpecialChar
hi link readlineKeySeparator  readlineKeySeq
hi link readlineKeyTerminator readlineDelimiter
hi link readlineKeySeq        String
hi link readlineKeyEscape     SpecialChar
hi link readlineKeyword       Keyword
hi link readlineVariable      Identifier
hi link readlineBellStyle     Constant
hi link readlineBoolean       Boolean
hi link readlineString        String
hi link readlineStringDelimiter readlineString
hi link readlineNumber        Number
hi link readlineEditingMode   Constant
hi link readlineKeymap        Constant
hi link readlineFunction      Function
hi link rhelpVerbatim    String
hi link rhelpDelimiter   Delimiter
hi link rhelpIdentifier  Identifier
hi link rhelpString      String
hi link rhelpCodeSpecial Special
hi link rhelpKeyword     Keyword
hi link rhelpDots        Keyword
hi link rhelpLink        Underlined
hi link rhelpType        Type
hi link rhelpSection     PreCondit
hi link rhelpError       Error
hi link rhelpBraceError  Error
hi link rhelpCurlyError  Error
hi link rhelpParenError  Error
hi link rhelpPreProc     PreProc
hi link rhelpDelimiter   Delimiter
hi link rhelpComment     Comment
hi link rhelpRComment    Comment
hi link rhelpSpecialChar SpecialChar
hi link rhelpMathSymb    Special
hi link rhelpMathOp      Operator
hi link dsType              Type
hi link dsEndian            StorageClass
hi link dsStorageClass      StorageClass
hi link dsAlign             Label
hi link dsLabel             Label
hi link dsOffset            Label
hi link dsSql               PreProc
hi link dsCompound          Structure
hi link dsConditional       Conditional
hi link dsBoolean           Boolean
hi link dsKeyword           Statement
hi link dsString            String
hi link dsNumber            Number
hi link dsNumberBin         Number
hi link dsBinaryB           Special
hi link dsOctal             Number
hi link dsOctalZero         Special
hi link dsOctalError        Error
hi link dsNumberHex         Number
hi link dsTodo              Todo
hi link dsOperator          Operator
hi link dsPackage           Include
hi link dsCommentError      Error
hi link dsCommentStartError Error
hi link dsCommentStart      dsComment
hi link dsCommentL          dsComment
hi link cCommentL           dsComment
hi link dsComment           Comment
hi link luaStatement		Statement
hi link luaRepeat		Repeat
hi link luaFor			Repeat
hi link luaString		String
hi link luaString2		String
hi link luaNumber		Number
hi link luaOperator		Operator
hi link luaIn			Operator
hi link luaConstant		Constant
hi link luaCond		Conditional
hi link luaElse		Conditional
hi link luaFunction		Function
hi link luaComment		Comment
hi link luaTodo		Todo
hi link luaTable		Structure
hi link luaError		Error
hi link luaParenError		Error
hi link luaBraceError		Error
hi link luaSpecial		SpecialChar
hi link luaFunc		Identifier
hi link luaLabel		Label
hi link kwtStatement	cppStatement
hi link kwtDecl	cppStatement
hi link kwtCast	cppStatement
hi link kwtSep	Delimiter
hi link kwtViews	Label
hi link kwtPhylum	Type
hi link kwtOption	PreProc
hi link fglComment	Comment
hi link fglKeyword	fglStatement
hi link fglNumber	Number
hi link fglOperator	fglStatement
hi link fglSpecial	Special
hi link fglStatement	Statement
hi link fglString	String
hi link fglType	Type
hi link tsaltParenError		tsaltError
hi link tsaltInParen		tsaltError
hi link tsaltFunction		Statement
hi link tsaltSysVar		Type
hi link tsaltConditional		Conditional
hi link tsaltRepeat		Repeat
hi link tsaltCharacter		SpecialChar
hi link tsaltSpecialCharacter	SpecialChar
hi link tsaltNumber		Number
hi link tsaltFloat		Float
hi link tsaltCommentError	tsaltError
hi link tsaltInclude		Include
hi link tsaltPreProc		PreProc
hi link tsaltDefine		Macro
hi link tsaltIncluded		tsaltString
hi link tsaltError		Error
hi link tsaltStatement		Statement
hi link tsaltPreCondit		PreCondit
hi link tsaltType		Type
hi link tsaltString		String
hi link tsaltComment		Comment
hi link tsaltSpecial		Special
hi link tsaltTodo		Todo
hi link kconfigTodo                 Todo
hi link kconfigComment              Comment
hi link kconfigKeyword              Keyword
hi link kconfigPreProc              PreProc
hi link kconfigConditional          Conditional
hi link kconfigPrompt               String
hi link kconfigKeywordPrompt        kconfigPrompt
hi link kconfigPath                 String
hi link kconfigSymbol               String
hi link kconfigConstantSymbol       Constant
hi link kconfigConfigOption         Type
hi link kconfigTypeDefinition       kconfigConfigOption
hi link kconfigTypeDefPrompt        kconfigPrompt
hi link kconfigInputPrompt          kconfigConfigOption
hi link kconfigPromptPrompt         kconfigPrompt
hi link kconfigDefaultValue         kconfigConfigOption
hi link kconfigDependencies         kconfigConfigOption
hi link kconfigReverseDependencies  kconfigConfigOption
hi link kconfigRevDepCSymbol        kconfigConstantSymbol
hi link kconfigRevDepNCSymbol       kconfigSymbol
hi link kconfigNumericalRanges      kconfigConfigOption
hi link kconfigRangeCSymbol         kconfigConstantSymbol
hi link kconfigRangeNCSymbol        kconfigSymbol
hi link kconfigRangeCSymbol2        kconfigConstantSymbol
hi link kconfigRangeNCSymbol2       kconfigSymbol
hi link kconfigHelpText             Normal
hi link kconfigDefBool              kconfigConfigOption
hi link kconfigDefBoolCSymbol       kconfigConstantSymbol
hi link kconfigDefBoolNCSymbol      kconfigSymbol
hi link kconfigOptional             kconfigConfigOption
hi link kconfigConfigOptionIf       Conditional
hi link kconfigConfOptIfExprCSym    kconfigConstantSymbol
hi link kconfigConfOptIfExprNCSym   kconfigSymbol
hi link kconfigOperator             Operator
hi link kconfigConfOptIfExprEq      kconfigOperator
hi link kconfigConfOptIfExprNEq     kconfigOperator
hi link kconfigConfOptIfExprCSym2   kconfigConstantSymbol
hi link kconfigConfOptIfExprNCSym2  kconfigSymbol
hi link kconfigConfOptIfExprNeg     kconfigOperator
hi link kconfigConfOptIfExprAnd     kconfigOperator
hi link kconfigConfOptIfExprOr      kconfigOperator
hi link kconfigDelimiter            Delimiter
hi link kconfigConfOptIfExprGroup   kconfigDelimiter
hi link kconfigConfOptIfGExpCSym    kconfigConstantSymbol
hi link kconfigConfOptIfGExpNCSym   kconfigSymbol
hi link kconfigConfOptIfGExpEq      kconfigOperator
hi link kconfigConfOptIfGExpNEq     kconfigOperator
hi link kconfigConfOptIfGExpCSym2   kconfigConstantSymbol
hi link kconfigConfOptIfGExpNCSym2  kconfigSymbol
hi link kconfigConfOptIfGExpNeg     kconfigOperator
hi link kconfigConfOptIfGExpAnd     kconfigOperator
hi link kconfigConfOptIfGExpOr      kconfigOperator
hi link kconfigConfOptIfExprGrpE    kconfigDelimiter
hi link kconfigConfOptExprCSym      kconfigConstantSymbol
hi link kconfigConfOptExprNCSym     kconfigSymbol
hi link kconfigConfOptExprEq        kconfigOperator
hi link kconfigConfOptExprNEq       kconfigOperator
hi link kconfigConfOptExprCSym2     kconfigConstantSymbol
hi link kconfigConfOptExprNCSym2    kconfigSymbol
hi link kconfigConfOptExprNeg       kconfigOperator
hi link kconfigConfOptExprAnd       kconfigOperator
hi link kconfigConfOptExprOr        kconfigOperator
hi link kconfigConfOptExprGroup     kconfigDelimiter
hi link kconfigConfOptGExpCSym      kconfigConstantSymbol
hi link kconfigConfOptGExpNCSym     kconfigSymbol
hi link kconfigConfOptGExpEq        kconfigOperator
hi link kconfigConfOptGExpNEq       kconfigOperator
hi link kconfigConfOptGExpCSym2     kconfigConstantSymbol
hi link kconfigConfOptGExpNCSym2    kconfigSymbol
hi link kconfigConfOptGExpNeg       kconfigOperator
hi link kconfigConfOptGExpAnd       kconfigOperator
hi link kconfigConfOptGExpOr        kconfigOperator
hi link kconfigConfOptExprGrpE      kconfigConfOptIfExprGroup
hi link kconfigTodo         Todo
hi link kconfigComment      Comment
hi link kconfigKeyword      Keyword
hi link kconfigConditional  Conditional
hi link kconfigPreProc      PreProc
hi link kconfigTriState     Boolean
hi link kconfigSpecialChar  SpecialChar
hi link kconfigPath         String
hi link kconfigString       String
hi link kconfigType         Type
hi link kconfigOption       Identifier
hi link kconfigHelpText     Normal
hi link kconfigmacro        Macro
hi link clipperConditional		Conditional
hi link clipperRepeat			Repeat
hi link clipperNumber			Number
hi link clipperInclude		Include
hi link clipperComment		Comment
hi link clipperOperator		Operator
hi link clipperStorageClass		StorageClass
hi link clipperStatement		Statement
hi link clipperString			String
hi link clipperFunction		Function
hi link clipperLineContinuation	Special
hi link clipperDelimiters		Delimiter
hi link clipperUserVariable		Identifier
hi link abaqusComment	Comment
hi link abaqusKeyword	Statement
hi link abaqusParameter	Identifier
hi link abaqusValue	Constant
hi link abaqusBadLine    Error
hi link cmusrcTodo            Todo
hi link cmusrcComment         Comment
hi link cmusrcKeyword         Keyword
hi link cmusrcSwitches        Special
hi link cmusrcAddSwitches     cmusrcSwitches
hi link cmusrcURI             Normal
hi link cmusrcBindSwitches    cmusrcSwitches
hi link cmusrcContext         Type
hi link cmusrcBindContext     cmusrcContext
hi link cmusrcKey             String
hi link cmusrcBindKey         cmusrcKey
hi link cmusrcDirectory       Normal
hi link cmusrcClearSwitches   cmusrcSwitches
hi link cmusrcFSetName        PreProc
hi link cmusrcEq              Normal
hi link cmusrcFSetEq          cmusrcEq
hi link cmusrcFilterExpr      Normal
hi link cmusrcLoadSwitches    cmusrcSwitches
hi link cmusrcSaveSwitches    cmusrcSwitches
hi link cmusrcFile            Normal
hi link cmusrcSeekOffset      Number
hi link cmusrcOption          PreProc
hi link cmusrcSetTest         Normal
hi link cmusrcOptBoolean      Boolean
hi link cmusrcOptEqAAA        cmusrcEq
hi link cmusrcOptAAA          Identifier
hi link cmusrcOptEqNumber     cmusrcEq
hi link cmusrcOptNumber       Number
hi link cmusrcOptEqFormat     cmusrcEq
hi link cmusrcOptFormat       String
hi link cmusrcFormatSpecial   SpecialChar
hi link cmusrcOptEqColor      cmusrcEq
hi link cmusrcOptColor        Normal
hi link cmusrcOptColorName    cmusrcOptColor
hi link cmusrcOptColorValue   cmusrcOptColor
hi link cmusrcOptEqString     cmusrcEq
hi link cmusrcOptString       Normal
hi link cmusrcOptEqSortKeys   cmusrcEq
hi link cmusrcOptSortKeys     Identifier
hi link cmusrcSBindContext    cmusrcContext
hi link cmusrcSBindKey        cmusrcKey
hi link cmusrcTogglableOpt    cmusrcOption
hi link cmusrcUnbindSwitches  cmusrcSwitches
hi link cmusrcView            Normal
hi link cmusrcVolume1         Number
hi link cmusrcVolume2         Number
hi link iconOctalError		iconError
hi link iconParenError		iconError
hi link iconInParen		iconError
hi link iconCommentError	iconError
hi link iconSpaceError		iconError
hi link iconCommentError	iconError
hi link iconIncluded		iconString
hi link iconCommentString	iconString
hi link iconComment2String	iconString
hi link iconCommentSkip	iconComment
hi link iconUserLabel		Label
hi link iconCharacter		Character
hi link iconNumber			Number
hi link iconRadix			Number
hi link iconFloat			Float
hi link iconInclude		Include
hi link iconPreProc		PreProc
hi link iconDefine			Macro
hi link iconError			Error
hi link iconStatement		Statement
hi link iconPreCondit		PreCondit
hi link iconString			String
hi link iconCset			String
hi link iconComment		Comment
hi link iconSpecial		SpecialChar
hi link iconTodo			Todo
hi link iconStorageClass	StorageClass
hi link iconFunction		Statement
hi link iconReserved		Label
hi link iconKeyword		Operator
hi link remindCommands		Function
hi link remindExpiry		Repeat
hi link remindTag		Label
hi link remindTimed		Statement
hi link remindMove		Statement
hi link remindSpecial		Include
hi link remindRun		Function
hi link remindConditional	Conditional
hi link remindComment		Comment
hi link remindTimes		String
hi link remindString		String
hi link remindDebug		Debug
hi link remindVar		Identifier
hi link remindSubst		Constant
hi link remindAdvanceNumber	Number
hi link remindDateSeparators	Comment
hi link remindDates		String
hi link remindWarning		Error
hi link masmOperator	ia64operator
hi link masmDirective	ia64Directive
hi link masmOpcode	ia64Opcode
hi link masmIdentifier	ia64Identifier
hi link masmFloat	ia64Float
hi link ia64Label	Define
hi link ia64Comment	Comment
hi link ia64Directive	Type
hi link ia64opcode	Statement
hi link ia64registers	Operator
hi link ia64string	String
hi link ia64Hex		Number
hi link ia64Binary	Number
hi link ia64Octal	Number
hi link ia64Float	Float
hi link ia64Decimal	Number
hi link ia64Identifier	Identifier
hi link ia64data		Type
hi link ia64delimiter	Delimiter
hi link ia64operator	Operator
hi link ia64Todo		Todo
hi link pcapBad WarningMsg
hi link pcapBadword WarningMsg
hi link pcapComment Comment
hi link fortranKeyword 	Keyword
hi link fortranConstructName	Identifier
hi link fortranConditional	Conditional
hi link fortranRepeat	Repeat
hi link fortranTodo		Todo
hi link fortranContinueMark	Special
hi link fortranString	String
hi link fortranNumber	Number
hi link fortranOperator	Operator
hi link fortranBoolean	Boolean
hi link fortranLabelError	Error
hi link fortranObsolete	Todo
hi link fortranType		Type
hi link fortranStructure	Type
hi link fortranStorageClass	StorageClass
hi link fortranCall		Function
hi link fortranUnitHeader	fortranPreCondit
hi link fortranReadWrite	Keyword
hi link fortranIO		Keyword
hi link fortranIntrinsic	Function
hi link fortranConstant	Constant
hi link fortranUnitHeaderOb    fortranObsolete
hi link fortranKeywordOb       fortranObsolete
hi link fortranConditionalOb   fortranObsolete
hi link fortranTypeOb          fortranObsolete
hi link fortranKeywordDel      fortranObsolete
hi link fortranIntrinsicCUDA        fortranIntrinsic
hi link fortranTypeCUDA             fortranType
hi link fortranStringCUDA           fortranString
hi link fortranFormatSpec	Identifier
hi link fortranFloat	Float
hi link fortranPreCondit	PreCondit
hi link cIncluded		fortranString
hi link cInclude		Include
hi link cPreProc		PreProc
hi link cPreCondit		PreCondit
hi link fortranOpenMP       PreProc
hi link fortranParenError	Error
hi link fortranComment	Comment
hi link fortranSerialNumber	Todo
hi link fortranTab		Error
hi link djangoTagBlock PreProc
hi link djangoVarBlock PreProc
hi link djangoStatement Statement
hi link djangoFilter Identifier
hi link djangoArgument Constant
hi link djangoTagError Error
hi link djangoVarError Error
hi link djangoError Error
hi link djangoComment Comment
hi link djangoComBlock Comment
hi link djangoTodo Todo
hi link mmixAt		Type
hi link mmixPseudo	Type
hi link mmixRegister	Special
hi link mmixSegments	Type
hi link mmixLabel	Special
hi link mmixComment	Comment
hi link mmixOpcode	Keyword
hi link hexNumber	Number
hi link decNumber	Number
hi link octNumber	Number
hi link mmixString	String
hi link mmixChar	String
hi link mmixType	Type
hi link mmixIdentifier	Normal
hi link mmixSpecialComment Comment
hi link gnuplotComment		Comment
hi link gnuplotString		String
hi link gnuplotNumber		Number
hi link gnuplotFloat		Float
hi link gnuplotIdentifier	Identifier
hi link gnuplotConditional	Conditional
hi link gnuplotRepeat		Repeat
hi link gnuplotKeyword		Keyword
hi link gnuplotOperator	Operator
hi link gnuplotMacro		Macro
hi link gnuplotStatement	Type
hi link gnuplotFunc		Identifier
hi link gnuplotSpecial		Special
hi link gnuplotUnit		Special
hi link gnuplotExternal	Special
hi link gnuplotError		Error
hi link gnuplotOctalError	Error
hi link gnuplotTodo		Todo
hi link configdelimiter Delimiter
hi link configoperator  Operator
hi link configcomment   Comment
hi link configDnl  	 Comment
hi link configfunction  Function
hi link confignumber    Number
hi link configkeyword   Keyword
hi link configspecial   Special
hi link configstring    String
hi link voscmConditional	Conditional
hi link voscmStatement	Statement
hi link voscmSetvar         Statement
hi link voscmNumber         Number
hi link voscmDecimalNumber	Float
hi link voscmString         String
hi link voscmIdentifier	Identifier
hi link voscmVariable	Identifier
hi link voscmComment	Comment
hi link voscmJump	        Statement
hi link voscmContinuation	Macro
hi link voscmLabelId	String
hi link voscmParamList	NONE
hi link voscmParamId	Identifier
hi link voscmParamName	String
hi link voscmParam	        Statement
hi link voscmParamKeyword	Statement
hi link voscmFunction	Function
hi link voscmCommand	Structure
hi link voscmTodo           Todo
hi link voscmTab          	Error
hi link voscmError         	Error
hi link trasysOptions		Special
hi link trasysSurface		Special
hi link trasysSurfaceType	Constant
hi link trasysSurfaceArgs	Constant
hi link trasysArgs		Constant
hi link trasysOperations	Statement
hi link trasysSubRoutine	Statement
hi link trassyPrcsrSegm	PreProc
hi link trasysIdentifier	Identifier
hi link trasysComment		Comment
hi link trasysHeader		Typedef
hi link trasysMacro		Macro
hi link trasysInteger		Number
hi link trasysFloat		Float
hi link trasysScientific	Float
hi link trasysBlank		SpecialChar
hi link trasysEndData		Macro
hi link trasysTodo		Todo
hi link antlrSep Statement
hi link antlrPackages Statement
hi link javaError2 javaError
hi link javaCommentString javaString
hi link javaComment2String javaString
hi link javaCommentCharacter javaCharacter
hi link javaParenError	javaError
hi link javaLambdaDef		Function
hi link javaFuncDef		Function
hi link javaVarArg			Function
hi link javaBraces			Function
hi link javaBranch			Conditional
hi link javaUserLabelRef		javaUserLabel
hi link javaLabel			Label
hi link javaUserLabel		Label
hi link javaConditional		Conditional
hi link javaRepeat			Repeat
hi link javaExceptions		Exception
hi link javaAssert			Statement
hi link javaStorageClass		StorageClass
hi link javaMethodDecl		javaStorageClass
hi link javaClassDecl		javaStorageClass
hi link javaScopeDecl		javaStorageClass
hi link javaBoolean		Boolean
hi link javaSpecial		Special
hi link javaSpecialError		Error
hi link javaSpecialCharError	Error
hi link javaString			String
hi link javaCharacter		Character
hi link javaSpecialChar		SpecialChar
hi link javaNumber			Number
hi link javaError			Error
hi link javaStringError		Error
hi link javaStatement		Statement
hi link javaOperator		Operator
hi link javaComment		Comment
hi link javaDocComment		Comment
hi link javaLineComment		Comment
hi link javaConstant		Constant
hi link javaTypedef		Typedef
hi link javaTodo			Todo
hi link javaAnnotation		PreProc
hi link javaCommentTitle		SpecialComment
hi link javaDocTags		Special
hi link javaDocParam		Function
hi link javaDocSeeTagParam		Function
hi link javaCommentStar		javaComment
hi link javaType			Type
hi link javaExternal		Include
hi link htmlComment		Special
hi link htmlCommentPart		Special
hi link javaSpaceError		Error
hi link ibasicLabel			Label
hi link ibasicConditional		Conditional
hi link ibasicRepeat		Repeat
hi link ibasicHex			Number
hi link ibasicInteger		Number
hi link ibasicFloat			Number
hi link ibasicError			Error
hi link ibasicHexError		Error
hi link ibasicStatement		Statement
hi link ibasicString		String
hi link ibasicComment		Comment
hi link ibasicLineNumber		Comment
hi link ibasicSpecial		Special
hi link ibasicTodo			Todo
hi link ibasicGenericFunction	Function
hi link ibasicBuiltInFunction	Function
hi link ibasicTypeSpecifier		Type
hi link ibasicDefine		Type
hi link ibasicInclude		Include
hi link ibasicIdentifier		Identifier
hi link ibasicFilenumber		ibasicTypeSpecifier
hi link ibasicMathOperator		Operator
hi link ppdComment		Comment
hi link ppdDefine		Statement
hi link ppdUI			Function
hi link ppdUIGroup		Function
hi link ppdDef			String
hi link ppdGUIText		Type
hi link ppdContraints		Special
hi link liquidDelimiter             PreProc
hi link liquidComment               Comment
hi link liquidTypeHighlight         Type
hi link liquidConditional           Conditional
hi link liquidRepeat                Repeat
hi link liquidKeyword               Keyword
hi link liquidOperator              Operator
hi link liquidString                String
hi link liquidQuote                 Delimiter
hi link liquidNumber                Number
hi link liquidFloat                 Float
hi link liquidEmpty                 liquidNull
hi link liquidNull                  liquidBoolean
hi link liquidBoolean               Boolean
hi link liquidFilter                Function
hi link liquidForloop               Identifier
hi link liquidForloopAttribute      Identifier
hi link loginaccessTodo           Todo
hi link loginaccessComment        Comment
hi link loginaccessPermission     Type
hi link loginaccessPermError      Error
hi link loginaccessUserSep        Delimiter
hi link loginaccessUsers          Identifier
hi link loginaccessAllUsers       Macro
hi link loginaccessLocalUsers     Macro
hi link loginaccessExceptUsers    Operator
hi link loginaccessUserIntSep     loginaccessUserSep
hi link loginaccessOriginSep      loginaccessUserSep
hi link loginaccessOrigins        Identifier
hi link loginaccessAllOrigins     Macro
hi link loginaccessLocalOrigins   Macro
hi link loginaccessExceptOrigins  loginaccessExceptUsers
hi link loginaccessOriginIntSep   loginaccessUserSep
hi link tcltkSwitch		Special
hi link tclExpand		Special
hi link tclLabel		Label
hi link tclConditional		Conditional
hi link tclRepeat		Repeat
hi link tclNumber		Number
hi link tclError		Error
hi link tclCommand		Statement
hi link tclProcCommand		Type
hi link tclString		String
hi link tclComment		Comment
hi link tclSpecial		Special
hi link tclTodo		Todo
hi link tcltkCommandColor	Statement
hi link tcltkWidgetColor	Structure
hi link tclLineContinue	WarningMsg
hi link tclNotLineContinue	ErrorMsg
hi link tcltkStringSwitch	Special
hi link tcltkArraySwitch	Special
hi link tcltkLsortSwitch	Special
hi link tcltkPackSwitch	Special
hi link tcltkPackConfSwitch	Special
hi link tcltkMaths		Special
hi link tcltkNamespaceSwitch	Special
hi link tcltkWidgetSwitch	Special
hi link tcltkPackConfColor	Identifier
hi link tclVarRef		Identifier
hi link IstInpSpec	Type
hi link IstOutSpec	Identifier
hi link IstString	String
hi link IstNumber	Number
hi link IstComment	Comment
hi link IstTodo	Todo
hi link IstSpecial	Special
hi link IstDoubleQuote	Label
hi link IstCharacter	Label
hi link setserialTodo       Todo
hi link setserialComment    Comment
hi link setserialDevice     Normal
hi link setserialParameter  Identifier
hi link setserialNumber     Number
hi link setserialUARTType   Type
hi link setserialNegation   Operator
hi link setserialMultiport  Type
hi link setserialPort       setserialNumber
hi link setserialMask       Type
hi link setserialBitMask    setserialNumber
hi link setserialMatch      Type
hi link setserialMatchBits  setserialNumber
hi link makeOverride makeStatement
hi link makeExport makeStatement
hi link makeNextLine		makeSpecial
hi link makeCmdNextLine	makeSpecial
hi link makeSpecTarget		Statement
hi link makeCommands		Number
hi link makeImplicit		Function
hi link makeTarget		Function
hi link makeInclude		Include
hi link makePreCondit		PreCondit
hi link makeStatement		Statement
hi link makeIdent		Identifier
hi link makeSpecial		Special
hi link makeComment		Comment
hi link makeDString		String
hi link makeSString		String
hi link makeBString		Function
hi link makeError		Error
hi link makeTodo		Todo
hi link makeDefine		Define
hi link makeCommandError	Error
hi link makeConfig		PreCondit
hi link aflexSlashQuote	aflexPat
hi link aflexBrace		aflexPat
hi link aflexAbbrvComment	aflexPatComment
hi link aflexAbbrv		SpecialChar
hi link aflexAbbrvRegExp	Macro
hi link aflexCFunctions	Function
hi link aflexMorePat	SpecialChar
hi link aflexPat		Function
hi link aflexPatComment	Comment
hi link aflexPatString	Function
hi link aflexPatTag		Special
hi link aflexSep		Delimiter
hi link blankInstruction      Statement
hi link blankNumber	       Number
hi link blankString	       String
hi link freebasicArrays		StorageClass
hi link freebasicBitManipulation	Operator
hi link freebasicCompilerSwitches	PreCondit
hi link freebasicConsole		Special
hi link freebasicDataTypes		Type
hi link freebasicDateTime		Type
hi link freebasicDebug		Special
hi link freebasicErrorHandling	Special
hi link freebasicFiles		Special
hi link freebasicFunctions		Function
hi link freebasicGraphics		Function
hi link freebasicHardware		Special
hi link freebasicLogical		Conditional
hi link freebasicMath		Function
hi link freebasicMemory		Function
hi link freebasicMisc		Special
hi link freebasicModularizing	Special
hi link freebasicMultithreading	Special
hi link freebasicShell		Special
hi link freebasicEnviron		Special
hi link freebasicPointer		Special
hi link freebasicPredefined		PreProc
hi link freebasicPreProcessor	PreProc
hi link freebasicProgramFlow	Statement
hi link freebasicString		String
hi link freebasicTypeCasting	Type
hi link freebasicUserInput		Statement
hi link freebasicComment		Comment
hi link freebasicConditional	Conditional
hi link freebasicError		Error
hi link freebasicIdentifier		Identifier
hi link freebasicInclude		Include
hi link freebasicGenericFunction	Function
hi link freebasicLabel		Label
hi link freebasicLineNumber		Label
hi link freebasicMathOperator	Operator
hi link freebasicNumber		Number
hi link freebasicSpecial		Special
hi link freebasicTodo		Todo
hi link lprologComment     Comment
hi link lprologTodo	    Todo
hi link lprologKeyword     Keyword
hi link lprologSpecial     Special
hi link lprologOperator    Operator
hi link lprologIdentifier  Normal
hi link lprologInteger     Number
hi link lprologReal	    Number
hi link lprologString	    String
hi link lprologCommentErr  Error
hi link lprologBrackErr    Error
hi link lprologParenErr    Error
hi link lprologModuleName  Special
hi link lprologTypeName    Identifier
hi link lprologVariable    Keyword
hi link lprologAtom	    Normal
hi link lprologClause	    Type
hi link messagesDate        Constant
hi link messagesHour        Type
hi link messagesDateRFC3339 Constant
hi link messagesHourRFC3339 Type
hi link messagesRFC3339T    Normal
hi link messagesHost        Identifier
hi link messagesLabel       Operator
hi link messagesPID         Constant
hi link messagesKernel      Special
hi link messagesError       ErrorMsg
hi link messagesIP          Constant
hi link messagesURL         Underlined
hi link messagesText        Normal
hi link messagesNumber      Number
hi link ppwizSpecial  Special
hi link ppwizEqual    ppwizSpecial
hi link ppwizOperator ppwizSpecial
hi link ppwizComment  Comment
hi link ppwizDef      PreProc
hi link ppwizMacro    Statement
hi link ppwizArg      Identifier
hi link ppwizStdVar   Identifier
hi link ppwizRexxVar  Identifier
hi link ppwizString   Constant
hi link ppwizInteger  Constant
hi link ppwizCont     ppwizSpecial
hi link ppwizError    Error
hi link ppwizHTML     Type
hi link baanConditional	Conditional
hi link baan3gl		Statement
hi link baan3glpre		PreProc
hi link baan4gl		Statement
hi link baan4glh		Statement
hi link baansql		Statement
hi link baansqlh		Statement
hi link baanDalHook		Statement
hi link baanNumber		Number
hi link baanString		String
hi link baanOpenStringError	Error
hi link baanConstant		Constant
hi link baanComment		Comment
hi link baanCommenth		Comment
hi link baanUncommented	Comment
hi link baanDLLUsage		Comment
hi link baanFunUsage		Comment
hi link baanIdentifier		Normal
hi link baanBshell		Function
hi link baanType		Type
hi link baanStorageClass	StorageClass
hi link edifInString		SpecialChar
hi link edifKeyword		Keyword
hi link edifNumber		Number
hi link edifInStringError	edifError
hi link edifError		Error
hi link edifString		String
hi link nroffEscChar nroffSpecialChar
hi link nroffEscCharAr nroffSpecialChar
hi link nroffSpecialChar SpecialChar
hi link nroffSpace Delimiter
hi link nroffEscRegArg2 nroffEscRegArg
hi link nroffEscRegArg nroffIdent
hi link nroffEscArg2 nroffEscArg
hi link nroffEscPar nroffEscape
hi link nroffEscRegPar nroffEscape
hi link nroffEscArg nroffEscape
hi link nroffSize nroffEscape
hi link nroffEscape Preproc
hi link nroffIgnore Comment
hi link nroffComment Comment
hi link nroffTodo Todo
hi link nroffReqLeader nroffRequest
hi link nroffReqName nroffRequest
hi link nroffRequest Statement
hi link nroffCond PreCondit
hi link nroffDefIdent nroffIdent
hi link nroffIdent Identifier
hi link nroffEquation PreProc
hi link nroffTable PreProc
hi link nroffPicture PreProc
hi link nroffRefer PreProc
hi link nroffGrap PreProc
hi link nroffGremlin PreProc
hi link nroffNumber Number
hi link nroffBadChar nroffError
hi link nroffSpaceError nroffError
hi link nroffError Error
hi link nroffPreserve String
hi link nroffString String
hi link nroffDefinition String
hi link nroffDefSpecial Special
hi link rAssign      Statement
hi link rBoolean     Boolean
hi link rBraceError  Error
hi link rComment     Comment
hi link rCommentTodo Todo
hi link rComplex     Number
hi link rConditional Conditional
hi link rConstant    Constant
hi link rCurlyError  Error
hi link rDelimiter   Delimiter
hi link rDollar      SpecialChar
hi link rError       Error
hi link rFloat       Float
hi link rFunction    Function
hi link rHelpIdent   Identifier
hi link rhPreProc    PreProc
hi link rhSection    PreCondit
hi link rInteger     Number
hi link rLstElmt     Normal
hi link rNameWSpace  Normal
hi link rNumber      Number
hi link rOperator    Operator
hi link rOpError     Error
hi link rParenError  Error
hi link rPreProc     PreProc
hi link rRepeat      Repeat
hi link rSpecial     SpecialChar
hi link rStatement   Statement
hi link rString      String
hi link rStrError    Error
hi link rType        Type
hi link pfmainConf	Statement
hi link pfmainRef	PreProc
hi link pfmainWord	identifier
hi link pfmainDict	Type
hi link pfmainQueueDir	Constant
hi link pfmainTransport	Constant
hi link pfmainLock	Constant
hi link pfmainAnswer	Constant
hi link pfmainComment	Comment
hi link pfmainNumber	Number
hi link pfmainTime	Number
hi link pfmainIP		Number
hi link pfmainVariable	Error
hi link pfmainSpecial	Special
hi link dosbatchTodo		Todo
hi link dosbatchStatement	Statement
hi link dosbatchCommands	dosbatchStatement
hi link dosbatchLabel		Label
hi link dosbatchConditional	Conditional
hi link dosbatchRepeat		Repeat
hi link dosbatchOperator       Operator
hi link dosbatchEchoOperator   dosbatchOperator
hi link dosbatchIfOperator     dosbatchOperator
hi link dosbatchArgument	Identifier
hi link dosbatchIdentifier     Identifier
hi link dosbatchVariable	dosbatchIdentifier
hi link dosbatchSpecialChar	SpecialChar
hi link dosbatchString		String
hi link dosbatchNumber		Number
hi link dosbatchInteger	dosbatchNumber
hi link dosbatchHex		dosbatchNumber
hi link dosbatchBinary		dosbatchNumber
hi link dosbatchOctal		dosbatchNumber
hi link dosbatchComment	Comment
hi link dosbatchImplicit	Function
hi link dosbatchSwitch		Special
hi link dosbatchCmd		PreProc
hi link gitsendemailComment Comment
hi link kixDoubleString		String
hi link kixSingleString		String
hi link kixStatement		Statement
hi link kixRepeat		Repeat
hi link kixComment		Comment
hi link kixBuiltin		Function
hi link kixLocalVar		Special
hi link kixMacro			Special
hi link kixEnvVar		Special
hi link kixLabel			Type
hi link kixFunction		Function
hi link kixInteger		Number
hi link kixHex			Number
hi link kixFloat			Number
hi link kixOperator		Operator
hi link kixExpression		Operator
hi link kixParenCloseError	Error
hi link kixBrackCloseError	Error
hi link kixStringError		Error
hi link kixWhileError		Error
hi link kixWhileOK		Conditional
hi link kixDoError		Error
hi link kixDoOK			Conditional
hi link kixIfError		Error
hi link kixIfOK			Conditional
hi link kixSelectError		Error
hi link kixSelectOK		Conditional
hi link kixForNextError		Error
hi link kixForNextOK		Conditional
hi link kixForEachError		Error
hi link kixForEachOK		Conditional
hi link maximaBraceError	maximaError
hi link maximaCmd	maximaStatement
hi link maximaCurlyError	maximaError
hi link maximaFuncCmd	maximaStatement
hi link maximaParenError	maximaError
hi link maximaCharacter	Character
hi link maximaComma	Function
hi link maximaCommentBlock	Comment
hi link maximaConditional	Conditional
hi link maximaError	Error
hi link maximaFunc	Delimiter
hi link maximaOp                 Delimiter
hi link maximaLabel	PreProc
hi link maximaNumber	Number
hi link maximaFloat	Float
hi link maximaRepeat	Repeat
hi link maximaSpecial	Type
hi link maximaSpecialChar	SpecialChar
hi link maximaStatement	Statement
hi link maximaString	String
hi link maximaTodo	Todo
hi link omnimarkCommands		Statement
hi link omnimarkKeywords		Identifier
hi link omnimarkString		String
hi link omnimarkPatterns		Macro
hi link omnimarkComment		Comment
hi link omnimarkEscape		Special
hi link ShaDaComment Comment
hi link ShaDaEntryNumber Number
hi link ShaDaEntryTimestamp Operator
hi link ShaDaEntryName Keyword
hi link ShaDaEntryMapHeader PreProc
hi link ShaDaEntryMapEntryStart Label
hi link ShaDaEntryMapLongEntryStart ShaDaEntryMapEntryStart
hi link ShaDaEntryMapShortEntryStart ShaDaEntryMapEntryStart
hi link ShaDaEntryMapBinArrayStart ShaDaEntryMapEntryStart
hi link ShaDaEntryArrayEntryStart ShaDaEntryMapEntryStart
hi link ShaDaEntryMapKey String
hi link ShaDaEntryMapLongKey ShaDaEntryMapKey
hi link ShaDaEntryMapShortKey ShaDaEntryMapKey
hi link ShaDaEntryMapDescription Comment
hi link ShaDaEntryMapLongDescription ShaDaEntryMapDescription
hi link ShaDaEntryMapShortDescription ShaDaEntryMapDescription
hi link ShaDaEntryArrayHeader PreProc
hi link ShaDaEntryArrayDescription ShaDaEntryMapDescription
hi link ShaDaMsgpackKeyword Keyword
hi link ShaDaMsgpackShaDaKeyword ShaDaMsgpackKeyword
hi link ShaDaMsgpackCharacter Character
hi link ShaDaMsgpackInteger Number
hi link ShaDaMsgpackFloat Float
hi link ShaDaMsgpackBinaryString String
hi link ShaDaMsgpackBinaryStringEscape SpecialChar
hi link ShaDaMsgpackExtType Typedef
hi link ShaDaMsgpackStringQuotes Operator
hi link ShaDaMsgpackString ShaDaMsgpackStringQuotes
hi link ShaDaMsgpackExt ShaDaMsgpackStringQuotes
hi link ShaDaMsgpackMapBraces Operator
hi link ShaDaMsgpackArrayBraces ShaDaMsgpackMapBraces
hi link ShaDaMsgpackComma Operator
hi link ShaDaMsgpackColon ShaDaMsgpackComma
hi link ShaDaMsgpackMultilineArray Operator
hi link idlangConditional	Conditional
hi link idlangRoutine	Type
hi link idlangStatement	Statement
hi link idlangContinueLine	Todo
hi link idlangRealNumber	Float
hi link idlangNumber	Number
hi link idlangString	String
hi link idlangOperator	Operator
hi link idlangComment	Comment
hi link idlangTodo	Todo
hi link idlangPreCondit	Identifier
hi link idlangDblCommaError	Error
hi link idlangStop	Error
hi link idlangStrucvar	PreProc
hi link idlangSystem	Identifier
hi link idlangKeyword	Special
hi link mgpLineSkip	Special
hi link mgpHash	mgpComment
hi link mgpPercent	mgpComment
hi link mgpComment	Comment
hi link mgpCommand	Identifier
hi link mgpLine	Type
hi link mgpFile	String
hi link mgpSize	Number
hi link mgpValue	Number
hi link mgpPage	mgpDefine
hi link mgpNoDefault	mgpDefine
hi link mgpDefine	Define
hi link	initngComment			Comment
hi link initngTodo				Todo
hi link	initngString			String
hi link initngServiceKeywords	Define
hi link	initngServiceHeader		Keyword
hi link	initngActionHeader		Type
hi link initngDelim				Delimiter
hi link	initngVariable			PreProc
hi link	initngSubstMacro		Comment
hi link	initngDefine			Macro
hi sindaHeaderDelim  ctermfg=Black ctermbg=Green	       guifg=Black guibg=Green
hi link sindaoutPos		     Statement
hi link sindaoutNeg		     PreProc
hi link sindaoutTitle		     Type
hi link sindaoutFile		     sindaIncludeFile
hi link sindaoutInteger	     sindaInteger
hi link sindaoutSectionDelim	      Delimiter
hi link sindaoutSectionTitle	     Exception
hi link sindaoutHeaderDelim	     SpecialComment
hi link sindaoutLabel		     Identifier
hi link sindaoutError		     Error
hi link dockerfileString String
hi link dockerfileKeyword Keyword
hi link dockerfileComment Comment
hi link     wmlVerbatimTag  htmlTag
hi link     wmlVerbatimTagN htmlStatement
hi link wmlNextLine	Special
hi link wmlUse		Include
hi link wmlUsed	String
hi link wmlBody	Special
hi link wmlDiverted	Label
hi link wmlDivert	Delimiter
hi link wmlDivertEnd	Delimiter
hi link wmlLocationId	Label
hi link wmlLocation	Delimiter
hi link wmlDefineName	String
hi link wmlComment	Comment
hi link wmlInclude	Include
hi link wmlSharpBang	PreProc
hi link webRestrictedTeX String
hi link ratpoisonBooleanArg	Boolean
hi link ratpoisonCommandArg	Keyword
hi link ratpoisonComment	Comment
hi link ratpoisonDefCommand	Identifier
hi link ratpoisonGravityArg	Constant
hi link ratpoisonKeySeqArg	Special
hi link ratpoisonNumberArg	Number
hi link ratpoisonSetArg	Keyword
hi link ratpoisonStringCommand	Identifier
hi link ratpoisonTodo		Todo
hi link ratpoisonVoidCommand	Identifier
hi link ratpoisonWinFmtArg	Special
hi link ratpoisonWinNameArg	Constant
hi link ratpoisonWinListArg	Constant
hi link mixRegister		Special
hi link mixLabel		Define
hi link mixComment		Comment
hi link mixEndComment	Comment
hi link mixDirective	Keyword
hi link mixOpcode		Keyword
hi link mixSpecial		Special
hi link mixNumber		Number
hi link mixString		String
hi link mixAlfParam		String
hi link mixIdentifier	Identifier
hi link autoitFunction Statement  " yellow/yellow
hi link autoitKeyword Statement
hi link autoitOperator Operator
hi link autoitVarSelector Operator
hi link autoitComment	Comment  " cyan/blue
hi link autoitParen Comment
hi link autoitComma Comment
hi link autoitBracket Comment
hi link autoitNumber Constant " magenta/red
hi link autoitString Constant
hi link autoitQuote Constant
hi link autoitIncluded Constant
hi link autoitCont Special  " red/orange
hi link autoitDoubledSingles Special
hi link autoitDoubledDoubles Special
hi link autoitCommDelimiter PreProc  " blue/magenta
hi link autoitInclude PreProc
hi link autoitVariable Identifier  " cyan/cyan
hi link autoitBuiltin Type  " green/green
hi link autoitOption Type
hi link autoitStyle Type
hi link autoitConst Type
hi link autoitSend Type
hi link slpspiTodo          Todo
hi link slpspiComment       Comment
hi link slpspiKeyType       Type
hi link slpspiString        Identifier
hi link slpspiKeyFile       String
hi link dotParErr	 Error
hi link dotBraceErr	 Error
hi link dotBrackErr	 Error
hi link dotComment	 Comment
hi link dotTodo	 Todo
hi link dotParEncl	 Keyword
hi link dotBrackEncl	 Keyword
hi link dotBraceEncl	 Keyword
hi link dotKeyword	 Keyword
hi link dotType	 Type
hi link dotKeyChar	 Keyword
hi link dotString	 String
hi link dotIdentifier	 Identifier
hi link amplEntityKeyword	Keyword
hi link amplType		Type
hi link amplStatement		Statement
hi link amplOperators		Operator
hi link amplBasicOperators	Operator
hi link amplConditional	Conditional
hi link amplRepeat		Repeat
hi link amplStrings		String
hi link amplNumerics		Number
hi link amplSetFunction	Function
hi link amplBuiltInFunction	Function
hi link amplRandomGenerator	Function
hi link amplComment		Comment
hi link amplDotSuffix		Special
hi link amplPiecewise		Special
hi link mupadComment		Comment
hi link mupadString		String
hi link mupadOperator		Operator
hi link mupadSpecial		Special
hi link mupadStatement		Statement
hi link mupadUnderlined	Underlined
hi link mupadConditional	Conditional
hi link mupadRepeat		Repeat
hi link mupadFunction		Function
hi link mupadType		Type
hi link mupadDefine		Define
hi link mupadIdentifier	Identifier
hi link xpmType		Type
hi link xpmStorageClass	StorageClass
hi link xpmTodo		Todo
hi link xpmComment		Comment
hi link xpmPixelString	String
hi link elinksTodo              Todo
hi link elinksComment           Comment
hi link elinksNumber            Number
hi link elinksString            String
hi link elinksKeyword           Keyword
hi link elinksPrefix            Identifier
hi link elinksOptions           Identifier
hi      elinksColorBlack        ctermfg=Black       guifg=Black
hi      elinksColorDarkRed      ctermfg=DarkRed     guifg=DarkRed
hi      elinksColorDarkGreen    ctermfg=DarkGreen   guifg=DarkGreen
hi      elinksColorDarkYellow   ctermfg=DarkYellow  guifg=DarkYellow
hi      elinksColorDarkBlue     ctermfg=DarkBlue    guifg=DarkBlue
hi      elinksColorDarkMagenta  ctermfg=DarkMagenta guifg=DarkMagenta
hi      elinksColorDarkCyan     ctermfg=DarkCyan    guifg=DarkCyan
hi      elinksColorGray         ctermfg=Gray        guifg=Gray
hi      elinksColorDarkGray     ctermfg=DarkGray    guifg=DarkGray
hi      elinksColorRed          ctermfg=Red         guifg=Red
hi      elinksColorGreen        ctermfg=Green       guifg=Green
hi      elinksColorYellow       ctermfg=Yellow      guifg=Yellow
hi      elinksColorBlue         ctermfg=Blue        guifg=Blue
hi      elinksColorMagenta      ctermfg=Magenta     guifg=Magenta
hi      elinksColorCyan         ctermfg=Cyan        guifg=Cyan
hi      elinksColorWhite        ctermfg=White       guifg=White
hi link satherBranch		satherStatement
hi link satherLabel		satherStatement
hi link satherConditional	satherStatement
hi link satherSynchronize	satherStatement
hi link satherRepeat		satherStatement
hi link satherExceptions	satherStatement
hi link satherStorageClass	satherDeclarative
hi link satherMethodDecl	satherDeclarative
hi link satherClassDecl	satherDeclarative
hi link satherScopeDecl	satherDeclarative
hi link satherBoolValue	satherValue
hi link satherSpecial		satherValue
hi link satherString		satherValue
hi link satherCharacter	satherValue
hi link satherSpecialCharacter satherValue
hi link satherNumber		satherValue
hi link satherStatement	Statement
hi link satherOperator		Statement
hi link satherComment		Comment
hi link satherType		Type
hi link satherValue		String
hi link satherString		String
hi link satherSpecial		String
hi link satherCharacter	String
hi link satherDeclarative	Type
hi link satherExternal		PreCondit
hi link stParenError stError
hi link stSetError stError
hi link stBlockError stError
hi link stKeyword		Statement
hi link stMethod		Statement
hi link stComment		Comment
hi link stCharacter		Constant
hi link stString		Constant
hi link stSymbol		Special
hi link stNumber		Type
hi link stFloat		Type
hi link stError		Error
hi link stLocalVariables	Identifier
hi link stBlockVariable	Identifier
hi link asciidocAdmonition Special
hi link asciidocAnchorMacro Macro
hi link asciidocAttributeEntry Special
hi link asciidocAttributeList Special
hi link asciidocAttributeMacro Macro
hi link asciidocAttributeRef Special
hi link asciidocBackslash Special
hi link asciidocBlockTitle Title
hi link asciidocCallout Label
hi link asciidocCommentBlock Comment
hi link asciidocCommentLine Comment
hi link asciidocDoubleDollarPassthrough Special
hi link asciidocEmail Macro
hi link asciidocEntityRef Special
hi link asciidocExampleBlockDelimiter Type
hi link asciidocFilterBlock Type
hi link asciidocHLabel Label
hi link asciidocIdMarker Special
hi link asciidocIndexTerm Macro
hi link asciidocLineBreak Special
hi link asciidocOpenBlockDelimiter Label
hi link asciidocListBullet Label
hi link asciidocListContinuation Label
hi link asciidocListingBlock Identifier
hi link asciidocListLabel Label
hi link asciidocListNumber Label
hi link asciidocLiteralBlock Identifier
hi link asciidocLiteralParagraph Identifier
hi link asciidocMacroAttributes Label
hi link asciidocMacro Macro
hi link asciidocOneLineTitle Title
hi link asciidocPagebreak Type
hi link asciidocPassthroughBlock Identifier
hi link asciidocQuoteBlockDelimiter Type
hi link asciidocQuotedAttributeList Special
hi link asciidocQuotedBold Special
hi link asciidocQuotedDoubleQuoted Label
hi link asciidocQuotedEmphasized2 Type
hi asciidocQuotedEmphasizedItalic term=italic cterm=italic gui=italic
hi link asciidocQuotedEmphasized asciidocQuotedEmphasizedItalic
hi link asciidocQuotedMonospaced2 Identifier
hi link asciidocQuotedMonospaced Identifier
hi link asciidocQuotedSingleQuoted Label
hi link asciidocQuotedSubscript Type
hi link asciidocQuotedSuperscript Type
hi link asciidocQuotedUnconstrainedBold Special
hi link asciidocQuotedUnconstrainedEmphasized Type
hi link asciidocQuotedUnconstrainedMonospaced Identifier
hi link asciidocRefMacro Macro
hi link asciidocRuler Type
hi link asciidocSidebarDelimiter Type
hi link asciidocTableBlock2 NONE
hi link asciidocTableBlock NONE
hi link asciidocTableDelimiter2 Label
hi link asciidocTableDelimiter Label
hi link asciidocTable_OLD Type
hi link asciidocTablePrefix2 Label
hi link asciidocTablePrefix Label
hi link asciidocToDo Todo
hi link asciidocTriplePlusPassthrough Special
hi link asciidocTwoLineTitle Title
hi link asciidocURL Macro
hi link procmailComment Comment
hi link procmailTodo    Todo
hi link procmailRecipe   Statement
hi link procmailActionFolder	procmailAction
hi link procmailActionVariable procmailAction
hi link procmailActionForward	procmailAction
hi link procmailActionPipe	procmailAction
hi link procmailAction		Function
hi link procmailVar		Identifier
hi link procmailVarDecl	Identifier
hi link procmailString String
hi link automakePrimary     Statement
hi link automakeSecondary   Type
hi link automakeExtra       Special
hi link automakeOptions     Special
hi link automakeClean       Special
hi link automakeSubdirs     Statement
hi link automakeConditional PreProc
hi link automakeSubst       PreProc
hi link automakeComment1    makeComment
hi link automakeComment2    makeComment
hi link automakeMakeError   makeError
hi link automakeBadSubst    makeError
hi link automakeMakeDString makeDString
hi link automakeMakeSString makeSString
hi link automakeMakeBString makeBString
hi link cobolBAD      Error
hi link cobolBadID    Error
hi link cobolBadLine  Error
hi link cobolCALLs    Function
hi link cobolComment  Comment
hi link cobolKeys     Comment
hi link cobolAreaB    Special
hi link cobolCompiler PreProc
hi link cobolCondFlow Special
hi link cobolCopy     PreProc
hi link cobolDeclA    cobolDecl
hi link cobolDecl     Type
hi link cobolExtras   Special
hi link cobolGoTo     Special
hi link cobolConstant Constant
hi link cobolNumber   Constant
hi link cobolPic      Constant
hi link cobolReserved Statement
hi link cobolDivision Label
hi link cobolSection  Label
hi link cobolParagraph Label
hi link cobolDivisionName  Keyword
hi link cobolSectionName   Keyword
hi link cobolParagraphName Keyword
hi link cobolString   Constant
hi link cobolTodo     Todo
hi link cobolWatch    Special
hi link cobolIndicator Special
hi link sqlComment	Comment
hi link sqlNumber	Number
hi link sqlBoolean	Boolean
hi link sqlString	String
hi link sqlStatement	Statement
hi link sqlConditional	Conditional
hi link sqlRepeat		Repeat
hi link sqlKeyword		Keyword
hi link sqlOperator	Operator
hi link sqlException	Exception
hi link sqlFunction	Function
hi link sqlType	Type
hi link sqlTodo	Todo
hi link ldapconfTodo          Todo
hi link ldapconfComment       Comment
hi link ldapconfOption        Keyword
hi link ldapconfDeprOption    Error
hi link ldapconfString        String
hi link ldapconfURI           ldapconfString
hi link ldapconfDNAttrType    Identifier
hi link ldapconfOperator      Operator
hi link ldapconfEq            ldapconfOperator
hi link ldapconfDNAttrTypeEq  ldapconfEq
hi link ldapconfValue         ldapconfString
hi link ldapconfDNAttrValue   ldapconfValue
hi link ldapconfSeparator     ldapconfOperator
hi link ldapconfDNSeparator   ldapconfSeparator
hi link ldapconfHost          ldapconfURI
hi link ldapconfNumber        Number
hi link ldapconfPort          ldapconfNumber
hi link ldapconfBoolean       Boolean
hi link ldapconfInteger       ldapconfNumber
hi link ldapconfType          Type
hi link ldapconfDerefWhen     ldapconfType
hi link ldapconfDefine        Define
hi link ldapconfSASLMechanism ldapconfDefine
hi link ldapconfSASLRealm     ldapconfURI
hi link ldapconfSASLAuthID    ldapconfValue
hi link ldapconfSASLSecProps  ldapconfType
hi link ldapconfSASLSecPEq    ldapconfEq
hi link ldapconfSASLSecFactor ldapconfNumber
hi link ldapconfSASLSecPSep   ldapconfSeparator
hi link ldapconfFilename      ldapconfString
hi link ldapconfPath          ldapconfFilename
hi link ldapconfTLSCipherOp   ldapconfOperator
hi link ldapconfTLSCipherName ldapconfDefine
hi link ldapconfSpecial       Special
hi link ldapconfTLSCipherSort ldapconfSpecial
hi link ldapconfTLSCipherSep  ldapconfSeparator
hi link ldapconfTLSCertCheck  ldapconfType
hi link ldapconfTLSCRLCheck   ldapconfType
hi link xinetdTodo          Todo
hi link xinetdComment       Comment
hi link xinetdService       Keyword
hi link xinetdServiceName   String
hi link xinetdDefaults      Keyword
hi link xinetdServiceGroupD Delimiter
hi link xinetdReqAttribute  Keyword
hi link xinetdAttribute     Type
hi link xinetdEq            Operator
hi link xinetdStringEq      xinetdEq
hi link xinetdString        String
hi link xinetdTypeEq        xinetdEq
hi link xinetdType          Identifier
hi link xinetdFlagsEq       xinetdEq
hi link xinetdFlags         xinetdType
hi link xinetdDeprFlags     WarningMsg
hi link xinetdDisable       Special
hi link xinetdBooleanEq     xinetdEq
hi link xinetdBoolean       Boolean
hi link xinetdSocketTypeEq  xinetdEq
hi link xinetdSocketType    xinetdType
hi link xinetdUNumberEq     xinetdEq
hi link xinetdUnlimited     Define
hi link xinetdNumber        Number
hi link xinetdSignedNumEq   xinetdEq
hi link xinetdSignedNumber  xinetdNumber
hi link xinetdStringsEq     xinetdEq
hi link xinetdStrings       xinetdString
hi link xinetdStringsAdvEq  xinetdEq
hi link xinetdTimeRangesEq  xinetdEq
hi link xinetdTimeRanges    Number
hi link xinetdLogTypeEq     xinetdEq
hi link xinetdLogType       Keyword
hi link xinetdSyslogType    xinetdType
hi link xinetdSyslogLevel   Number
hi link xinetdLogFile       xinetdPath
hi link xinetdLogSoftLimit  xinetdNumber
hi link xinetdLogHardLimit  xinetdNumber
hi link xinetdLogSuccessEq  xinetdEq
hi link xinetdLogSuccess    xinetdType
hi link xinetdLogFailureEq  xinetdEq
hi link xinetdLogFailure    xinetdType
hi link xinetdRPCVersionEq  xinetdEq
hi link xinetdRPCVersion    xinetdNumber
hi link xinetdNumberEq      xinetdEq
hi link xinetdEnvEq         xinetdEq
hi link xinetdEnvName       Identifier
hi link xinetdEnvNameEq     xinetdEq
hi link xinetdEnvValue      String
hi link xinetdPPAttribute   PreProc
hi link xinetdPathEq        xinetdEq
hi link xinetdPath          String
hi link xinetdRedirectEq    xinetdEq
hi link xinetdRedirectIP    String
hi link xinetdCPSEq         xinetdEq
hi link xinetdCPS           xinetdNumber
hi link xinetdFloatEq       xinetdEq
hi link xinetdFloat         xinetdNumber
hi link xinetdOctalEq       xinetdEq
hi link xinetdOctal         xinetdNumber
hi link xinetdOctalZero     PreProc
hi link xinetdOctalError    Error
hi link xinetdASEq          xinetdEq
hi link xinetdAS            xinetdNumber
hi link xinetdASMult        PreProc
hi link xinetdDenyTimeEq    xinetdEq
hi link xinetdDenyTime      PreProc
hi link svnSummary     Keyword
hi link svnBlank       Error
hi link svnRegion      Comment
hi link svnDelimiter   NonText
hi link svnRemoved     Constant
hi link svnAdded       Identifier
hi link svnModified    Special
hi link svnProperty    Special
hi link svnRenamed     Special
hi link GnashOn	    Identifier
hi link GnashOff	    Preproc
hi link GnashComment    Comment
hi link GnashTodo	    Todo
hi link GnashNumber	    Type
hi link GnashSet	    String
hi link GnashKeyword    Keyword
hi link udevconfTodo        Todo
hi link udevconfComment     Comment
hi link udevconfVariable    Identifier
hi link udevconfVariableEq  Operator
hi link udevconfString      String
hi link kivyPreproc   PreProc
hi link kivyComment   Comment
hi link kivyRule      Function
hi link kivyIdent     Statement
hi link kivyAttribute Label
hi link ucCommentString ucString
hi link ucComment2String ucString
hi link ucCommentCharacter ucCharacter
hi link     ucParenError       ucError
hi link ucFuncDef			Conditional
hi link ucEventDef			Conditional
hi link ucBraces			Function
hi link ucBranch			Conditional
hi link ucLabel			Label
hi link ucUserLabel			Label
hi link ucConditional			Conditional
hi link ucRepeat			Repeat
hi link ucStorageClass			StorageClass
hi link ucMethodDecl			ucStorageClass
hi link ucClassDecl			ucStorageClass
hi link ucScopeDecl			ucStorageClass
hi link ucBoolean			Boolean
hi link ucSpecial			Special
hi link ucSpecialError			Error
hi link ucSpecialCharError		Error
hi link ucString			String
hi link ucCharacter			Character
hi link ucSpecialChar			SpecialChar
hi link ucNumber			Number
hi link ucError			Error
hi link ucStringError			Error
hi link ucStatement			Statement
hi link ucOperator			Operator
hi link ucOverLoaded			Operator
hi link ucComment			Comment
hi link ucDocComment			Comment
hi link ucLineComment			Comment
hi link ucConstant			ucBoolean
hi link ucTypedef			Typedef
hi link ucTodo				Todo
hi link ucCommentTitle			SpecialComment
hi link ucDocTags			Special
hi link ucDocParam			Function
hi link ucCommentStar			ucComment
hi link ucType				Type
hi link ucExternal			Include
hi link ucClassKeys			Conditional
hi link ucClassLabel			Conditional
hi link htmlComment			Special
hi link htmlCommentPart		Special
hi link chaiscriptExceptions	Exception
hi link chaiscriptKeyword		Keyword
hi link chaiscriptStatement		Statement
hi link chaiscriptRepeat		Repeat
hi link chaiscriptString		String
hi link chaiscriptNumber		Number
hi link chaiscriptFloat		Float
hi link chaiscriptOperator		Operator
hi link chaiscriptConstant		Constant
hi link chaiscriptCond		Conditional
hi link chaiscriptFunction		Function
hi link chaiscriptComment		Comment
hi link chaiscriptTodo		Todo
hi link chaiscriptError		Error
hi link chaiscriptSpecial		SpecialChar
hi link chaiscriptFunc		Identifier
hi link chaiscriptType		Type
hi link chaiscriptEval	        Special
hi link denyhostsTodo               Todo
hi link denyhostsComment            Comment
hi link denyhostsSetting            Keyword
hi link denyhostsStringSetting      denyhostsSetting
hi link denyhostsBooleanSetting     denyhostsSetting
hi link denyhostsPathSetting        denyhostsSetting
hi link denyhostsNumericSetting     denyhostsSetting
hi link denyhostsTimespecSetting    denyhostsSetting
hi link denyhostsFormatSetting      denyhostsSetting
hi link denyhostsRegexSetting       denyhostsSetting
hi link denyhostURLSetting          denyhostsSetting
hi link denyhostsDelimiter          Normal
hi link denyhostsStringDelimiter    denyhostsDelimiter
hi link denyhostsBooleanDelimiter   denyhostsDelimiter
hi link denyhostsPathDelimiter      denyhostsDelimiter
hi link denyhostsNumericDelimiter   denyhostsDelimiter
hi link denyhostsTimespecDelimiter  denyhostsDelimiter
hi link denyhostsFormatDelimiter    denyhostsDelimiter
hi link denyhostsRegexDelimiter     denyhostsDelimiter
hi link denyhostsURLDelimiter       denyhostsDelimiter
hi link denyhostsString             String
hi link denyhostsPath               String
hi link denyhostsNumber             Number
hi link denyhostsTimespec           Number
hi link denyhostsFormat             String
hi link denyhostsFormattingExpandos Special
hi link denyhostsRegex              String
hi link denyhostsURL                String
hi link gtkrcComment Comment
hi link gtkrcFixme Todo
hi link gtkrcInclude Preproc
hi link gtkrcACString gtkrcString
hi link gtkrcBString gtkrcString
hi link gtkrcString String
hi link gtkrcNumber Number
hi link gtkrcStateName gtkrcConstant
hi link gtkrcPriorityName gtkrcConstant
hi link gtkrcTextDirName gtkrcConstant
hi link gtkrcSettingsName Function
hi link gtkrcStockName Function
hi link gtkrcConstant Constant
hi link gtkrcPathSpecial gtkrcSpecial
hi link gtkrcWPathSpecial gtkrcSpecial
hi link gtkrcRGBColor gtkrcSpecial
hi link gtkrcKeyMod gtkrcSpecial
hi link gtkrcSpecial Special
hi link gtkrcTop gtkrcKeyword
hi link gtkrcPathSet gtkrcKeyword
hi link gtkrcStyleKeyword gtkrcKeyword
hi link gtkrcFunction gtkrcKeyword
hi link gtkrcBind gtkrcKeyword
hi link gtkrcKeyword Keyword
hi link gtkrcClassNameGnome gtkrcGtkClass
hi link gtkrcClassName gtkrcGtkClass
hi link gtkrcFunctionName gtkrcGtkClass
hi link gtkrcGtkClass Type
hi link gtkrcImage gtkrcOtherword
hi link gtkrcOtherword Function
hi link gtkrcParenError gtkrcError
hi link gtkrcBraceError gtkrcError
hi link gtkrcBracketError gtkrcError
hi link gtkrcError Error
hi link vsejclComment		Comment
hi link vsejclField		Type
hi link vsejclKeyword		Statement
hi link vsejclObject		Constant
hi link vsejclString		Constant
hi link vsejclMisc			Special
hi link vsejclParms		Constant
hi link tt2_tag         Type
hi link tt2_tag_region  Type
hi link tt2_commentblock_region Comment
hi link tt2_directive   Statement
hi link tt2_variable    Identifier
hi link tt2_ivariable   Identifier
hi link tt2_operator    Statement
hi link tt2_string_qq   String
hi link tt2_string_q    String
hi link tt2_blockname   String
hi link tt2_comment     Comment
hi link tt2_func        Function
hi link tt2_number      Number
hi link robotsComment		Comment
hi link robotsAgent		Type
hi link robotsDisallow		Statement
hi link robotsLine		Special
hi link robotsStar		Operator
hi link robotsDelimiter	Delimiter
hi link robotsUrl		String
hi link robotsMail		String
hi link robotsString		String
hi link gprofFlatProfileTitle      Title
hi link gprofFlatProfileHeader     Comment
hi link gprofFlatProfileFunction   Number
hi link gprofFlatProfileTrailer    Comment
hi link gprofCallGraphTitle        Title
hi link gprofCallGraphHeader       Comment
hi link gprofFlatProfileFunction   Number
hi link gprofCallGraphFunction     Special
hi link gprofCallGraphTrailer      Comment
hi link gprofCallGraphSeparator    Label
hi link gprofFunctionIndex         Label
hi link gprofSpecial               SpecialKey
hi link gprofNumbers               Number
hi link gprofIndexFunctionTitle Title
hi link xslElement Statement
hi link jalAcces		jalStatement
hi link jalBoolean		Boolean
hi link jalBit			Boolean
hi link jalComment		Comment
hi link jalConditional		Conditional
hi link jalConstant		Constant
hi link jalDelimiter		Identifier
hi link jalDirective		PreProc
hi link jalException		Exception
hi link jalFloat		Float
hi link jalFunction		Function
hi link jalPsudoVarsKey	Function
hi link jalLabel		Label
hi link jalMatrixDelimiter	Identifier
hi link jalModifier		Type
hi link jalNumber		Number
hi link jalBinNumber		Number
hi link jalHexNumber		Number
hi link jalOperator		Operator
hi link jalPredefined		Constant
hi link jalPreProc		PreProc
hi link jalRepeat		Repeat
hi link jalStatement		Statement
hi link jalString		String
hi link jalStringEscape	Special
hi link jalStringEscapeGPC	Special
hi link jalStringError		Error
hi link jalStruct		jalStatement
hi link jalSymbolOperator	jalOperator
hi link jalTodo		Todo
hi link jalType		Type
hi link jalUnclassified	Statement
hi link jalAsm			Assembler
hi link jalError		Error
hi link jalAsmKey		Statement
hi link jalPIC			Statement
hi link jalShowTab		Error
hi link picTodo		Todo
hi link picComment		Comment
hi link picDirective		Statement
hi link picLabel		Label
hi link picString		String
hi link picOpcode		Keyword
hi link picRegister		Structure
hi link picRegisterPart	Special
hi link picPinDir		SPecial
hi link picPortDir		SPecial
hi link picASCII		String
hi link picBinary		Number
hi link picDecimal		Number
hi link picHexadecimal		Number
hi link picOctal		Number
hi link picIdentifier		Identifier
hi link euphoria4Comment	Comment
hi link euphoria4String	String
hi link euphoria4Char	Character
hi link euphoria4Number	Number	
hi link euphoria4Boolean	Boolean	
hi link euphoria4Builtin	Identifier	
hi link euphoria4Library 	Function	
hi link euphoria4Type 	Type	
hi link euphoria4Keyword	Statement	
hi link euphoria4Operator	Statement		
hi link euphoria4Debug	Debug	
hi link euphoria4Delimit	Delimiter	
hi link euphoria4PreProc	PreProc	
hi link privoxyAction		Identifier
hi link privoxyFilterAction		Identifier
hi link privoxyActionLineDelimiter	Delimiter
hi link privoxyDisabledPrefix	SpecialChar
hi link privoxyEnabledPrefix	SpecialChar
hi link privoxyHeader		PreProc
hi link privoxySetting		Identifier
hi link privoxyFilterArg		Constant
hi link privoxyComment		Comment
hi link privoxyTodo			Todo
hi link cssComment Comment
hi link cssVendor Comment
hi link cssHacks Comment
hi link cssTagName Statement
hi link cssDeprecated Error
hi link cssSelectorOp Special
hi link cssSelectorOp2 Special
hi link cssAttrComma Special
hi link cssAnimationProp cssProp
hi link cssBackgroundProp cssProp
hi link cssBorderProp cssProp
hi link cssBoxProp cssProp
hi link cssColorProp cssProp
hi link cssContentForPagedMediaProp cssProp
hi link cssDimensionProp cssProp
hi link cssFlexibleBoxProp cssProp
hi link cssFontProp cssProp
hi link cssGeneratedContentProp cssProp
hi link cssGridProp cssProp
hi link cssHyerlinkProp cssProp
hi link cssLineboxProp cssProp
hi link cssListProp cssProp
hi link cssMarqueeProp cssProp
hi link cssMultiColumnProp cssProp
hi link cssPagedMediaProp cssProp
hi link cssPositioningProp cssProp
hi link cssPrintProp cssProp
hi link cssRubyProp cssProp
hi link cssSpeechProp cssProp
hi link cssTableProp cssProp
hi link cssTextProp cssProp
hi link cssTransformProp cssProp
hi link cssTransitionProp cssProp
hi link cssUIProp cssProp
hi link cssIEUIProp cssProp
hi link cssAuralProp cssProp
hi link cssRenderProp cssProp
hi link cssMobileTextProp cssProp
hi link cssAnimationAttr cssAttr
hi link cssBackgroundAttr cssAttr
hi link cssBorderAttr cssAttr
hi link cssBoxAttr cssAttr
hi link cssContentForPagedMediaAttr cssAttr
hi link cssDimensionAttr cssAttr
hi link cssFlexibleBoxAttr cssAttr
hi link cssFontAttr cssAttr
hi link cssGeneratedContentAttr cssAttr
hi link cssGridAttr cssAttr
hi link cssHyerlinkAttr cssAttr
hi link cssLineboxAttr cssAttr
hi link cssListAttr cssAttr
hi link cssMarginAttr cssAttr
hi link cssMarqueeAttr cssAttr
hi link cssMultiColumnAttr cssAttr
hi link cssPaddingAttr cssAttr
hi link cssPagedMediaAttr cssAttr
hi link cssPositioningAttr cssAttr
hi link cssGradientAttr cssAttr
hi link cssPrintAttr cssAttr
hi link cssRubyAttr cssAttr
hi link cssSpeechAttr cssAttr
hi link cssTableAttr cssAttr
hi link cssTextAttr cssAttr
hi link cssTransformAttr cssAttr
hi link cssTransitionAttr cssAttr
hi link cssUIAttr cssAttr
hi link cssIEUIAttr cssAttr
hi link cssAuralAttr cssAttr
hi link cssRenderAttr cssAttr
hi link cssCommonAttr cssAttr
hi link cssPseudoClassId PreProc
hi link cssPseudoClassLang Constant
hi link cssValueLength Number
hi link cssValueInteger Number
hi link cssValueNumber Number
hi link cssValueAngle Number
hi link cssValueTime Number
hi link cssValueFrequency Number
hi link cssFunction Constant
hi link cssURL String
hi link cssFunctionName Function
hi link cssFunctionComma Function
hi link cssColor Constant
hi link cssIdentifier Function
hi link cssInclude Include
hi link cssIncludeKeyword atKeyword
hi link cssImportant Special
hi link cssBraces Function
hi link cssBraceError Error
hi link cssError Error
hi link cssUnicodeEscape Special
hi link cssStringQQ String
hi link cssStringQ String
hi link cssAttributeSelector String
hi link cssMedia atKeyword
hi link cssMediaType Special
hi link cssMediaComma Normal
hi link cssMediaKeyword Statement
hi link cssMediaProp cssProp
hi link cssMediaAttr cssAttr
hi link cssPage atKeyword
hi link cssPagePseudo PreProc
hi link cssPageMargin atKeyword
hi link cssPageProp cssProp
hi link cssKeyFrame atKeyword
hi link cssKeyFrameSelector Constant
hi link cssFontDescriptor Special
hi link cssFontDescriptorFunction Constant
hi link cssFontDescriptorProp cssProp
hi link cssFontDescriptorAttr cssAttr
hi link cssUnicodeRange Constant
hi link cssClassName Function
hi link cssClassNameDot Function
hi link cssProp StorageClass
hi link cssAttr Constant
hi link cssUnitDecorators Number
hi link cssNoise Noise
hi link atKeyword PreProc
hi link aptconfTodo				Todo
hi link aptconfError			Error
hi link aptconfComment			Comment
hi link aptconfOperator			Operator
hi link aptconfAction			PreProc
hi link aptconfOption			Type
hi link aptconfValue			String
hi link aptconfRegexpOpt			Normal
hi link aptconfAsError			Special
hi link aptconfSemiColon			aptconfOperator
hi link aptconfDoubleColon			aptconfOperator
hi link aptconfCurlyBraces			aptconfOperator
hi link aptconfGroupIncomplete		Special
hi link aptconfGroup			aptconfOption
hi link aptconfAcquire			aptconfOption
hi link aptconfAcquireCDROM			aptconfOption
hi link aptconfAcquireCompressionTypes	aptconfOption
hi link aptconfAcquireFTP			aptconfOption
hi link aptconfAcquireHTTP			aptconfOption
hi link aptconfAcquireHTTPS			aptconfOption
hi link aptconfAcquireMaxValidTime		aptconfOption
hi link aptconfAcquirePDiffs		aptconfOption
hi link aptconfAdequate			aptconfOption
hi link aptconfApt				aptconfOption
hi link aptconfAptAuthentication		aptconfOption
hi link aptconfAptAutoRemove		aptconfOption
hi link aptconfAptCache			aptconfOption
hi link aptconfAptCDROM			aptconfOption
hi link aptconfAptChangelogs		aptconfOption
hi link aptconfAptCompressor		aptconfOption
hi link aptconfAptCompressorAll		aptconfOption
hi link aptconfAptGet			aptconfOption
hi link aptconfAptPeriodic			aptconfOption
hi link aptconfAptUpdate			aptconfOption
hi link aptconfAptitude			aptconfOption
hi link aptconfAptitudeCmdline		aptconfOption
hi link aptconfAptitudeCmdlineProgress	aptconfOption
hi link aptconfAptitudeCmdlineSafeUpgrade	aptconfOption
hi link aptconfAptitudeLogging		aptconfOption
hi link aptconfAptitudeProblemResolver	aptconfOption
hi link aptconfAptitudeSafeResolver		aptconfOption
hi link aptconfAptitudeScreenshot		aptconfOption
hi link aptconfAptitudeSections		aptconfOption
hi link aptconfAptitudeUI			aptconfOption
hi link aptconfAptitudeUIKeyBindings	aptconfOption
hi link aptconfAptitudeUIStyles		aptconfOption
hi link aptconfAptitudeUIStylesElements	aptconfOption
hi link aptconfAptListbugs			aptconfOption
hi link aptconfDebTags			aptconfOption
hi link aptconfDebug			aptconfOption
hi link aptconfDebugAcquire			aptconfOption
hi link aptconfDebugPkgAcquire		aptconfOption
hi link aptconfDebugPkgDepCache		aptconfOption
hi link aptconfDebugPkgProblemResolver	aptconfOption
hi link aptconfDir				aptconfOption
hi link aptconfDirAptitude			aptconfOption
hi link aptconfDirBin			aptconfOption
hi link aptconfDirCache			aptconfOption
hi link aptconfDirEtc			aptconfOption
hi link aptconfDirLog			aptconfOption
hi link aptconfDirMedia			aptconfOption
hi link aptconfDirState			aptconfOption
hi link aptconfDPkg				aptconfOption
hi link aptconfDPkgTools			aptconfOption
hi link aptconfDSelect			aptconfOption
hi link aptconfOrderList			aptconfOption
hi link aptconfOrderListScore		aptconfOption
hi link aptconfPackageManager		aptconfOption
hi link aptconfPkgCacheGen			aptconfOption
hi link aptconfQuiet			aptconfOption
hi link aptconfRpm				aptconfOption
hi link aptconfSynaptic			aptconfOption
hi link aptconfSynapticUpdate		aptconfOption
hi link aptconfUnattendedUpgrade		aptconfOption
hi link aptconfWhatmaps			aptconfOption
hi link herculesStatement  Statement
hi link herculesType       Type
hi link herculesComment    Comment
hi link herculesPreProc    PreProc
hi link herculesTodo       Todo
hi link herculesOutput     Include
hi link herculesCmdCmnt    Identifier
hi link herculesNumber     Number
hi link herculesBraceError herculesError
hi link herculesCurlyError herculesError
hi link herculesParenError herculesError
hi link herculesError      Error
hi link verilogCharacter       Character
hi link verilogConditional     Conditional
hi link verilogRepeat          Repeat
hi link verilogString          String
hi link verilogTodo            Todo
hi link verilogComment         Comment
hi link verilogConstant        Constant
hi link verilogLabel           Label
hi link verilogNumber          Number
hi link verilogOperator        Special
hi link verilogStatement       Statement
hi link verilogGlobal          Define
hi link verilogDirective       SpecialComment
hi link verilogEscape		 Special
hi link liloEqPath             liloEquals
hi link liloEqWord             liloEquals
hi link liloEqVga              liloEquals
hi link liloEqDecNumber        liloEquals
hi link liloEqHexNumber        liloEquals
hi link liloEqNumber           liloEquals
hi link liloEqString           liloEquals
hi link liloEqAnything         liloEquals
hi link liloEquals             Special
hi link liloError              Error
hi link liloEqPathComment      liloComment
hi link liloEqVgaComment       liloComment
hi link liloEqDecNumberComment liloComment
hi link liloEqHexNumberComment liloComment
hi link liloEqStringComment    liloComment
hi link liloEqAnythingComment  liloComment
hi link liloPathComment        liloComment
hi link liloVgaComment         liloComment
hi link liloDecNumberComment   liloComment
hi link liloHexNumberComment   liloComment
hi link liloNumberComment      liloComment
hi link liloStringComment      liloComment
hi link liloAnythingComment    liloComment
hi link liloComment            Comment
hi link liloDiskOpt            liloOption
hi link liloKernelOpt          liloOption
hi link liloImageOpt           liloOption
hi link liloOption             Keyword
hi link liloDecNumber          liloNumber
hi link liloHexNumber          liloNumber
hi link liloDecNumberP         liloNumber
hi link liloNumber             Number
hi link liloString             String
hi link liloPath               Constant
hi link liloSpecial            Special
hi link liloLabel              Title
hi link liloDecNumberList      Special
hi link liloDecNumberPList     Special
hi link liloAnything           Normal
hi link liloEnviron            Identifier
hi link liloVgaKeyword         Identifier
hi link liloImage              Type
hi link liloChRules            Preproc
hi link liloDisk               Preproc
hi link z8aSection		Special
hi link z8aLabel		Label
hi link z8aSpecialLabel	Label
hi link z8aComment		Comment
hi link z8aInstruction	Statement
hi link z8aSpecInst		Statement
hi link z8aInclude		Include
hi link z8aPreCondit		PreCondit
hi link z8aPreProc		PreProc
hi link z8aNumber		Number
hi link z8aString		String
hi link sqlDashComment	Comment
hi link sqlSlashComment	Comment
hi link sqlMultiComment	Comment
hi link sqlNumber	        Number
hi link sqlOperator	        Operator
hi link sqlSpecial	        Special
hi link sqlKeyword	        Keyword
hi link sqlStatement	Statement
hi link sqlString	        String
hi link sqlType	        Type
hi link sqlFunction	        Function
hi link sqlOption	        PreProc
hi link wgetAssignmentOperator Special
hi link wgetBoolean		   Boolean
hi link wgetCommand		   Identifier
hi link wgetComment		   Comment
hi link wgetNumber		   Number
hi link wgetQuota		   Number
hi link wgetString		   String
hi link wgetTodo		   Todo
hi link limitsTodo    Todo
hi link limitsComment Comment
hi link limitsUser    Keyword
hi link limitsDefault Macro
hi link limitsLimit   Identifier
hi link limitsDeLimit Special
hi link limitsNumber  Number
hi link gComment      Comment
hi link gCommentStart Comment
hi link gBlockComment Comment
hi link gString       String
hi link gNumber       Number
hi link gBoolean      Boolean
hi link gFloat        Float
hi link gCommands     Repeat	
hi link gGenrFunc     Type
hi link gDelimiter    Delimiter
hi link gError        Error
hi link gBraceError   Error
hi link gCurlyError   Error
hi link gParenError   Error
hi link gIdentifier   Normal
hi link gVariable     Identifier
hi link gArrow	       Repeat
hi link nastranDmapexecmod	     Statement
hi link nastranDmapType	     Type
hi link nastranDmapPreCondit	     Error
hi link nastranDmapUtilmod	     PreProc
hi link nastranDmapMatmod	     nastranDmapUtilmod
hi link nastranDmapString	     String
hi link nastranDmapNumber	     Constant
hi link nastranDmapFloat	     nastranDmapNumber
hi link nastranDmapInitTab	     nastranDmapNumber
hi link nastranDmapTab		     nastranDmapNumber
hi link nastranDmapLogical	     nastranDmapExecmod
hi link nastranDmapImplicit	     Identifier
hi link nastranDmapComment	     Comment
hi link nastranDmapRepeat	     nastranDmapexecmod
hi link nastranNastranCard	     nastranDmapPreCondit
hi link nastranECSCard		     nastranDmapUtilmod
hi link nastranFMSCard		     nastranNastranCard
hi link nastranCC		     nastranDmapexecmod
hi link nastranDelimiter	     Special
hi link nastranBulkData	     nastranDmapType
hi link nastranUtilCard	     nastranDmapexecmod
hi link prescribeSpecial		PreProc
hi link prescribeStatement		Statement
hi link prescribeNumber		Number
hi link prescribeCSETArg		String
hi link prescribeFRPOArg		String
hi link prescribeComment		Comment
hi link rcCharacter	Character
hi link rcSpecialCharacter rcSpecial
hi link rcNumber	Number
hi link rcFloat	Float
hi link rcOctalError	rcError
hi link rcParenError	rcError
hi link rcInParen	rcError
hi link rcCommentError	rcError
hi link rcInclude	Include
hi link rcPreProc	PreProc
hi link rcDefine	Macro
hi link rcIncluded	rcString
hi link rcError	Error
hi link rcPreCondit	PreCondit
hi link rcCommentString rcString
hi link rcComment2String rcString
hi link rcCommentSkip	rcComment
hi link rcString	String
hi link rcComment	Comment
hi link rcSpecial	SpecialChar
hi link rcTodo	Todo
hi link rcAttribute	rcCommonAttribute
hi link rcStdId	rcStatement
hi link rcStatement	Statement
hi rcLanguage	term=reverse ctermbg=Red ctermfg=Yellow guibg=Red guifg=Yellow
hi rcMainObject	term=underline ctermfg=Blue guifg=Blue
hi rcSubObject	ctermfg=Green guifg=Green
hi rcCaptionParam	term=underline ctermfg=DarkGreen guifg=Green
hi rcParam	ctermfg=DarkGreen guifg=DarkGreen
hi rcStatement	ctermfg=DarkGreen guifg=DarkGreen
hi rcCommonAttribute	ctermfg=Brown guifg=Brown
hi link dylanlidInfo		Type
hi link dylanlidEntry		String
hi link naturalFormat		Constant
hi link naturalAttribute	Constant
hi link naturalNumber		Number
hi link naturalString		String
hi link naturalBoolean		Boolean
hi link naturalConditional	Conditional
hi link naturalRepeat		Repeat
hi link naturalLoop		Repeat
hi link naturalFlow		Keyword
hi link naturalError		Keyword
hi link naturalKeyword		Keyword
hi link naturalOperator	Operator
hi link naturalParGui		Operator
hi link naturalLabel		Label
hi link naturalRefLabel	Label
hi link naturalPComment	Comment
hi link naturalComment		Comment
hi link naturalTodo		Todo
hi link naturalCommentMark	PreProc
hi link naturalInclude		Include
hi link naturalSysVar		Identifier
hi link naturalLineNo		LineNr
hi link naturalLineRef		Error
hi link naturalSpecial		Special
hi link naturalComKey		Todo
hi link naturalRMKeyword	Error
hi link naturalLegalIdent	Error
hi link naturalType		Type
hi link naturalFunction	Function
hi link naturalObjName		PreProc
hi link xdefaultsLabel		Type
hi link xdefaultsValue		Constant
hi link xdefaultsComment	Comment
hi link xdefaultsCommentH	xdefaultsComment
hi link xdefaultsPreProc	PreProc
hi link xdefaultsInclude	xdefaultsPreProc
hi link xdefaultsCppSkip	xdefaultsCppOut
hi link xdefaultsCppOut2	xdefaultsCppOut
hi link xdefaultsCppOut	Comment
hi link xdefaultsIncluded	String
hi link xdefaultsDefine	Macro
hi link xdefaultsSymbol	Statement
hi link xdefaultsSpecial	Statement
hi link xdefaultsErrorLine	Error
hi link xdefaultsCommentError	Error
hi link xdefaultsPunct		Normal
hi link xdefaultsLineEnd	Special
hi link xdefaultsTodo		Todo
hi link ldifAttribute		Type
hi link ldifOption		Identifier
hi link ldifPunctuation	Normal
hi link ldifStringValue	String
hi link ldifBase64Value	Special
hi link ldifFileValue		Special
hi link ldifComment		Comment
hi link avraBinaryNumber    avraNumber
hi link avraHexNumber       avraNumber
hi link avraDecNumber       avraNumber
hi link avraNumericOperator avraOperator
hi link avraUnaryOperator   avraOperator
hi link avraBinaryOperator  avraOperator
hi link avraBitwiseOperator avraOperator
hi link avraOperator  operator
hi link avraComment   comment
hi link avraDirective preproc
hi link avraRegister  type
hi link avraNumber    constant
hi link avraString    String
hi link avraInstr     keyword
hi link avraLabel     label
hi link upstreamdat_Parameter Type
hi link upstreamdat_Comment Comment
hi link jessAtomNmbr	jessNumber
hi link jessAtomMark	jessMark
hi link jessAtom		Identifier
hi link jessAtomBarSymbol	Special
hi link jessBarSymbol	Special
hi link jessComment	Comment
hi link jessConcat	Statement
hi link jessDeclaration	Statement
hi link jessFunc		Statement
hi link jessKey		Type
hi link jessMark		Delimiter
hi link jessNumber	Number
hi link jessParenError	Error
hi link jessSpecial	Type
hi link jessString	String
hi link jessVar		Identifier
hi link tasmString String
hi link tasmDec Number
hi link tasmHex Number
hi link tasmOct Number
hi link tasmBin Number
hi link tasmInstruction Keyword
hi link tasmCoprocInstr Keyword
hi link tasmMMXInst	Keyword
hi link tasmDirective PreProc
hi link tasmRegister Identifier
hi link tasmProctype PreProc
hi link tasmComment Comment
hi link tasmLabel Label
hi link hgcommitComment Comment
hi link hgcommitUser    String
hi link hgcommitBranch  String
hi link hgcommitAdded   Identifier
hi link hgcommitChanged Special
hi link hgcommitRemoved Constant
hi link modula3Keyword	Statement
hi link modula3Block		PreProc
hi link modula3Comment	Comment
hi link modula3String		String
hi link pcctsDelim		Special
hi link pcctsTokenName		Identifier
hi link pcctsRuleName		Statement
hi link pcctsLabelHack		Label
hi link pcctsDirective		PreProc
hi link pcctsString		String
hi link pcctsComment		Comment
hi link pcctsClass		Statement
hi link pcctsClassName		Identifier
hi link pcctsException		Statement
hi link pcctsExceptionHandler	Keyword
hi link pcctsExceptionRuleRef	pcctsDelim
hi link pcctsExceptionID	Identifier
hi link pcctsRuleRef		Identifier
hi link pcctsSpecialChar	SpecialChar
hi link gradsStatement		Statement
hi link gradsString		String
hi link gradsNumber		Number
hi link gradsFixVariables	Special
hi link gradsVariables		Identifier
hi link gradsglobalVariables	Special
hi link gradsConst		Special
hi link gradsClassMethods	Function
hi link gradsOperator		Operator
hi link gradsComment		Comment
hi link gradsTypos		Error
hi link lifelinesConditional	Conditional
hi link lifelinesArithm	Operator
hi link lifelinesLogical	Conditional
hi link lifelinesInclude	Include
hi link lifelinesComment	Comment
hi link lifelinesStatement	Statement
hi link lifelinesUser		Statement
hi link lifelinesFunct		Statement
hi link lifelinesTable		Statement
hi link lifelinesGedcom	Statement
hi link lifelinesList		Statement
hi link lifelinesRepeat	Repeat
hi link lifelinesFam		Statement
hi link lifelinesIndi		Statement
hi link lifelinesProc		Statement
hi link lifelinesDef		Statement
hi link lifelinesString	String
hi link lifelinesSpecial	Special
hi link lifelinesNumber	Number
hi link lifelinesParenError	Error
hi link lifelinesErrInParen	Error
hi link lifelinesError		Error
hi link lifelinesTodo		Todo
hi link lifelinesDecl		PreProc
hi link sshdconfigComment              Comment
hi link sshdconfigTodo                 Todo
hi link sshdconfigHostPort             sshdconfigConstant
hi link sshdconfigTime                 sshdconfigConstant
hi link sshdconfigNumber               sshdconfigConstant
hi link sshdconfigConstant             Constant
hi link sshdconfigYesNo                sshdconfigEnum
hi link sshdconfigAddressFamily        sshdconfigEnum
hi link sshdconfigPrivilegeSeparation  sshdconfigEnum
hi link sshdconfigTcpForwarding        sshdconfigEnum
hi link sshdconfigRootLogin            sshdconfigEnum
hi link sshdconfigCiphers              sshdconfigEnum
hi link sshdconfigMAC                  sshdconfigEnum
hi link sshdconfigHostKeyAlgo          sshdconfigEnum
hi link sshdconfigRootLogin            sshdconfigEnum
hi link sshdconfigLogLevel             sshdconfigEnum
hi link sshdconfigSysLogFacility       sshdconfigEnum
hi link sshdconfigVar                  sshdconfigEnum
hi link sshdconfigCompression          sshdconfigEnum
hi link sshdconfigIPQoS                sshdconfigEnum
hi link sshdconfigKexAlgo              sshdconfigEnum
hi link sshdconfigTunnel               sshdconfigEnum
hi link sshdconfigSubsystem            sshdconfigEnum
hi link sshdconfigEnum                 Function
hi link sshdconfigSpecial              Special
hi link sshdconfigKeyword              Keyword
hi link sshdconfigMatch                Type
hi link lynxBoolean		Boolean
hi link lynxComment		Comment
hi link lynxDelimiter	Special
hi link lynxFormatDir	Special
hi link lynxNone		Constant
hi link lynxNumber		Number
hi link lynxOption		Identifier
hi link lynxRCOption	lynxOption
hi link lynxTodo		Todo
hi link godocTitle Title
hi link snnsnetType		Type
hi link snnsnetComment		Comment
hi link snnsnetNumbers		Number
hi link snnsnetSection		Statement
hi link snnsnetTitle		Label
hi link snnsnetTodo		Todo
hi link jovialBitConstant Number
hi link jovialBoolean Boolean
hi link jovialComment Comment
hi link jovialConstant Constant
hi link jovialFloat Float
hi link jovialFunction Function
hi link jovialNumber Number
hi link jovialOperator Operator
hi link jovialPreProc PreProc
hi link jovialStatement Statement
hi link jovialStorageClass StorageClass
hi link jovialString String
hi link jovialStructure Structure
hi link jovialTodo Todo
hi link jovialType Type
hi link jovialTypedef Typedef
hi link webmacroComment CommentTitle
hi link webmacroVariable PreProc
hi link webmacroIf webmacroStatement
hi link webmacroForeach webmacroStatement
hi link webmacroSet webmacroStatement
hi link webmacroInclude webmacroStatement
hi link webmacroParse webmacroStatement
hi link webmacroStatement Function
hi link webmacroNumber Number
hi link webmacroBoolean Boolean
hi link webmacroSpecial Special
hi link webmacroString String
hi link webmacroBracesError Error
hi link winbatchLabel		PreProc
hi link winbatchCtl		Operator
hi link winbatchStatement	Statement
hi link winbatchTodo		Todo
hi link winbatchString		String
hi link winbatchVar		Type
hi link winbatchComment	Comment
hi link winbatchImplicit	Special
hi link winbatchNumber		Number
hi link winbatchConstant	StorageClass
hi link mysqlKeyword            Statement
hi link mysqlSpecial            Special
hi link mysqlString             String
hi link mysqlNumber             Number
hi link mysqlVariable           Identifier
hi link mysqlComment            Comment
hi link mysqlType               Type
hi link mysqlOperator           Statement
hi link mysqlFlow               Statement
hi link mysqlFunction           Function
hi link conaryMacro			Special
hi link conaryrecipeFunction	Function
hi link conaryError			Error
hi link conaryBFunction		conaryrecipeFunction
hi link conaryGFunction        	conaryrecipeFunction
hi link conarySFunction		Operator
hi link conaryPFunction		Typedef
hi link conaryFlags			PreCondit
hi link conaryArches		Special
hi link conarySubArches		Special
hi link conaryBad			conaryError
hi link conaryBadMacro		conaryError
hi link conaryKeywords		Special
hi link conaryUseFlag		Typedef
hi link abcComment		Comment
hi link abcHeadField		Type
hi link abcBodyField		Special
hi link abcBar			Statement
hi link abcTuple			Statement
hi link abcBroken			Statement
hi link abcTie			Statement
hi link abcGuitarChord	Identifier
hi link abcNote			Constant
hi lscriptNotesType	term=underline ctermfg=DarkGreen guifg=SeaGreen gui=bold
hi link lscriptNotesConst	lscriptNotesType
hi link lscriptLineNumber	Comment
hi link lscriptDatatype	Type
hi link lscriptNumber		Number
hi link lscriptError		Error
hi link lscriptStatement	Statement
hi link lscriptString		String
hi link lscriptComment		Comment
hi link lscriptTodo		Todo
hi link lscriptFunction	Identifier
hi link lscriptMethods		PreProc
hi link lscriptEvents		Special
hi link lscriptTypeSpecifier	Type
hi link alsoconfTodo        Todo
hi link alsaconfComment     Comment
hi link alsaconfSpecialChar SpecialChar
hi link alsaconfString      String
hi link alsaconfSpecial     Special
hi link alsaconfPreProc     PreProc
hi link alsaconfMode        Special
hi link alsaconfKeyword     Keyword
hi link alsaconfVariables   Identifier
hi link erlangComment Comment
hi link erlangCommentAnnotation Special
hi link erlangTodo Todo
hi link erlangShebang Comment
hi link erlangNumberInteger Number
hi link erlangNumberFloat Float
hi link erlangString String
hi link erlangQuotedAtom Type
hi link erlangQuotedAtom String
hi link erlangStringModifier Special
hi link erlangQuotedAtomModifier Special
hi link erlangModifier Special
hi link erlangOperator Operator
hi link erlangRightArrow Operator
hi link erlangBracket Normal
hi link erlangPipe Normal
hi link erlangBracket Delimiter
hi link erlangPipe Delimiter
hi link erlangAtom Normal
hi link erlangLocalFuncCall Normal
hi link erlangLocalFuncRef Normal
hi link erlangGlobalFuncCall Function
hi link erlangGlobalFuncRef Function
hi link erlangVariable Normal
hi link erlangMacro Normal
hi link erlangRecord Normal
hi link erlangQuotedRecord Normal
hi link erlangMap Normal
hi link erlangAtom String
hi link erlangLocalFuncCall Normal
hi link erlangLocalFuncRef Normal
hi link erlangGlobalFuncCall Normal
hi link erlangGlobalFuncRef Normal
hi link erlangVariable Identifier
hi link erlangMacro Macro
hi link erlangRecord Structure
hi link erlangQuotedRecord Structure
hi link erlangMap Structure
hi link erlangBitType Type
hi link erlangAttribute Type
hi link erlangMacroDef Type
hi link erlangUnknownAttribute Normal
hi link erlangInclude Type
hi link erlangRecordDef Type
hi link erlangDefine Type
hi link erlangPreCondit Type
hi link erlangType Type
hi link erlangAttribute Keyword
hi link erlangMacroDef Macro
hi link erlangUnknownAttribute Normal
hi link erlangInclude Include
hi link erlangRecordDef Keyword
hi link erlangDefine Define
hi link erlangPreCondit PreCondit
hi link erlangType Type
hi link erlangKeyword Keyword
hi link erlangBIF Function
hi link erlangBoolean Statement
hi link erlangExtra Statement
hi link erlangSignal Statement
hi link erlangBoolean Boolean
hi link erlangExtra Statement
hi link erlangSignal Statement
hi link plmTodo			Todo
hi link plmNumber			Number
hi link plmOperator			Operator
hi link plmDelimiter			Operator
hi link plmIdentifier			Identifier
hi link plmBuiltIn			Statement
hi link plm286BuiltIn			Statement
hi link plm386BuiltIn			Statement
hi link plm386w16BuiltIn		Statement
hi link plmReserved			Statement
hi link plm386Reserved			Statement
hi link plmPreProc			PreProc
hi link plmCommentError		plmError
hi link plmCommentString		plmString
hi link plmComment2String		plmString
hi link plmCommentSkip			plmComment
hi link plmString			String
hi link plmComment			Comment
hi link psfObject       Statement
hi link psfAttrib       Type
hi link psfQuotString   String
hi link psfObjTag       Identifier
hi link psfAttAbbrev    PreProc
hi link psfObjTags      Identifier
hi link psfComment      Comment
hi link sgmllnxTag2	    Function
hi link sgmllnxTagN2	    Function
hi link sgmllnxTag	    Special
hi link sgmllnxEndTag	    Special
hi link sgmllnxParen	    Special
hi link sgmllnxEntity	    Type
hi link sgmllnxDocEnt	    Type
hi link sgmllnxTagName	    Statement
hi link sgmllnxComment	    Comment
hi link sgmllnxSpecial	    Special
hi link sgmllnxDocType	    PreProc
hi link sgmllnxTagError    Error
hi link takMacro		Macro
hi link takOptions		Special
hi link takRoutine		Type
hi link takControl		Special
hi link takSolids		Special
hi link takSolidsArg		Statement
hi link takIdentifier		Identifier
hi link takFortran		PreProc
hi link takMotran		PreProc
hi link takComment		Comment
hi link takHeader		Typedef
hi link takIncludeFile		Type
hi link takInteger		Number
hi link takFloat		Float
hi link takScientific		Float
hi link takEndData		Macro
hi link takTodo		Todo
hi link rrstChunkDelim Special
hi link rrstInlineDelim Special
hi link modsim3Keyword	Statement
hi link modsim3Block		Statement
hi link modsim3Comment1	Comment
hi link modsim3Comment2	Comment
hi link modsim3String		String
hi link modsim3Literal	Character
hi link modsim3Include	Statement
hi link modsim3Type		Type
hi link modsim3ParenError	Error
hi link modsim3Builtin	Function
hi link modsim3BuiltinNoParen	Function
hi link grubComment       Comment
hi link grubTodo          Todo
hi link grubNumbers       Number
hi link grubDevice        Identifier
hi link grubBlock         Identifier
hi link grubCommand       Keyword
hi link grubTitleCommand  grubCommand
hi link grubTitle         String
hi link grubSpecial       Special
hi      grubBlink         cterm=inverse
hi      grubBlack         ctermfg=Black ctermbg=White guifg=Black guibg=White
hi      grubBlue          ctermfg=DarkBlue guifg=DarkBlue
hi      grubGreen         ctermfg=DarkGreen guifg=DarkGreen
hi      grubRed           ctermfg=DarkRed guifg=DarkRed
hi      grubMagenta       ctermfg=DarkMagenta guifg=DarkMagenta
hi      grubBrown         ctermfg=Brown guifg=Brown
hi      grubWhite         ctermfg=White ctermbg=Black guifg=White guibg=Black
hi      grubLightGray     ctermfg=LightGray guifg=LightGray
hi      grubLightBlue     ctermfg=LightBlue guifg=LightBlue
hi      grubLightGreen    ctermfg=LightGreen guifg=LightGreen
hi      grubLightCyan     ctermfg=LightCyan guifg=LightCyan
hi      grubLightRed      ctermfg=LightRed guifg=LightRed
hi      grubLightMagenta  ctermfg=LightMagenta guifg=LightMagenta
hi      grubDarkGray      ctermfg=DarkGray guifg=DarkGray
hi link picTodo		Todo
hi link picComment		Comment
hi link picDirective		Statement
hi link picLabel		Label
hi link picString		String
hi link picASCII		String
hi link picBinary		Number
hi link picDecimal		Number
hi link picHexadecimal		Number
hi link picOctal		Number
hi link picIdentifier		Identifier
hi link pinfoTodo             Todo
hi link pinfoComment          Comment
hi link pinfoOptions          Keyword
hi link pinfoColors           Keyword
hi link pinfoColorDefault     Normal
hi link pinfoSpecialKeys      SpecialChar
hi link pinfoSimpleKey        String
hi link pinfoSimpleKeyEscape  SpecialChar
hi link pinfoKeycode          Number
hi link pinfoConstants        Constant
hi link pinfoKeys             Keyword
hi      pinfoColorBold        cterm=bold
hi      pinfoColorNoBold      cterm=none
hi      pinfoColorBlink       cterm=inverse
hi      pinfoColorNoBlink     cterm=none
hi      pinfoColorBlack       ctermfg=Black       guifg=Black
hi      pinfoColorRed         ctermfg=DarkRed     guifg=DarkRed
hi      pinfoColorGreen       ctermfg=DarkGreen   guifg=DarkGreen
hi      pinfoColorYellow      ctermfg=DarkYellow  guifg=DarkYellow
hi      pinfoColorBlue        ctermfg=DarkBlue    guifg=DarkBlue
hi      pinfoColorMagenta     ctermfg=DarkMagenta guifg=DarkMagenta
hi      pinfoColorCyan        ctermfg=DarkCyan    guifg=DarkCyan
hi      pinfoColorWhite       ctermfg=LightGray   guifg=LightGray
hi link bibType	Identifier
hi link bibEntryKw	Statement
hi link bibNSEntryKw	PreProc
hi link bibKey		Special
hi link bibVariable	Constant
hi link bibUnescapedSpecial	Error
hi link bibComment	Comment
hi link bibComment2	Comment
hi link bibComment3	Comment
hi link cFormat		cSpecial
hi link cCppString		cString
hi link cCommentL		cComment
hi link cCommentStart	cComment
hi link cLabel		Label
hi link cUserLabel		Label
hi link cConditional	Conditional
hi link cRepeat		Repeat
hi link cCharacter		Character
hi link cSpecialCharacter	cSpecial
hi link cNumber		Number
hi link cOctal		Number
hi link cOctalZero		PreProc	 " link this to Error if you want
hi link cFloat		Float
hi link cOctalError		cError
hi link cParenError		cError
hi link cErrInParen		cError
hi link cErrInBracket	cError
hi link cCommentError	cError
hi link cCommentStartError	cError
hi link cSpaceError		cError
hi link cSpecialError	cError
hi link cCurlyError		cError
hi link cOperator		Operator
hi link cStructure		Structure
hi link cStorageClass	StorageClass
hi link cInclude		Include
hi link cPreProc		PreProc
hi link cDefine		Macro
hi link cIncluded		cString
hi link cError		Error
hi link cStatement		Statement
hi link cCppInWrapper	cCppOutWrapper
hi link cCppOutWrapper	cPreCondit
hi link cPreConditMatch	cPreCondit
hi link cPreCondit		PreCondit
hi link cType		Type
hi link cConstant		Constant
hi link cCommentString	cString
hi link cComment2String	cString
hi link cCommentSkip	cComment
hi link cString		String
hi link cComment		Comment
hi link cSpecial		SpecialChar
hi link cTodo		Todo
hi link cBadContinuation	Error
hi link cCppOutSkip		cCppOutIf2
hi link cCppInElse2		cCppOutIf2
hi link cCppOutIf2		cCppOut
hi link cCppOut		Comment
hi link splintShortAnn		splintAnnotation
hi link splintAnnotation	Comment
hi link splintAnnError		splintError
hi link splintAnnError2	splintError
hi link splintFlag		SpecialComment
hi link splintGlobalFlag	splintError
hi link splintSpecialAnnot	splintAnnKey
hi link splintStateAnnot	splintAnnKey
hi link splintSpecTag		splintAnnKey
hi link splintModifies		splintAnnKey
hi link splintRequires		splintAnnKey
hi link splintGlobals		splintAnnKey
hi link splintGlobitem		Constant
hi link splintGlobannot	splintAnnKey
hi link splintWarning		splintAnnKey
hi link splintModitem		Constant
hi link splintIter		splintAnnKey
hi link splintConst		splintAnnKey
hi link splintAlt		splintAnnKey
hi link splintType		splintAnnKey
hi link splintGlobalType	splintAnnKey
hi link splintMemMgm		splintAnnKey
hi link splintAlias		splintAnnKey
hi link splintExposure		splintAnnKey
hi link splintDefState		splintAnnKey
hi link splintGlobState	splintAnnKey
hi link splintNullState	splintAnnKey
hi link splintNullPred		splintAnnKey
hi link splintExit		splintAnnKey
hi link splintExec		splintAnnKey
hi link splintSef		splintAnnKey
hi link splintDecl		splintAnnKey
hi link splintCase		splintAnnKey
hi link splintBreak		splintAnnKey
hi link splintUnreach		splintAnnKey
hi link splintSpecFunc		splintAnnKey
hi link splintErrSupp		splintAnnKey
hi link splintTypeAcc		splintAnnKey
hi link splintMacro		splintAnnKey
hi link splintSpecType		splintAnnKey
hi link splintAnnKey		Type
hi link splintError		Error
hi link mibImplicit	     Statement
hi link mibOperator      Statement
hi link mibComment       Comment
hi link mibConstants     String
hi link mibNumber        Number
hi link mibDescription   Identifier
hi link mibEpilogue	     SpecialChar
hi link mibValue         Structure
hi link tssclCommand		Statement
hi link tssclKeyword		Special
hi link tssclEnd		Macro
hi link tssclUnits		Special
hi link tssclComment		Comment
hi link tssclDirective		Statement
hi link tssclConditional	Conditional
hi link tssclContChar		Macro
hi link tssclQualifier		Typedef
hi link tssclSymbol		Identifier
hi link tssclSymbol2		Symbol
hi link tssclString		String
hi link tssclOper		Operator
hi link tssclInteger		Number
hi link tssclFloat		Number
hi link tssclScientific	Number
hi link libaoTodo     Todo
hi link libaoComment  Comment
hi link libaoKeyword  Keyword
hi link mooUncommentedError Error
hi link mooCStyleCommentError Error
hi link mooCStyleComment Comment
hi link mooStatement Statement
hi link mooOperatorIn Operator
hi link mooAny Constant " link this to Keyword if you want
hi link mooErrorConstant Constant
hi link mooType Type
hi link mooVariable Type
hi link mooStringError Error
hi link mooStringSpecialChar SpecialChar
hi link mooRegexpOr SpecialChar
hi link mooPronounSub SpecialChar
hi link mooString String
hi link mooNumber Number
hi link mooObject Number
hi link mooBuiltinProperty Type
hi link mooBuiltinFunction Function
hi link mooUnknownBuiltinFunction Error
hi link mooKnownBuiltinFunction Function
hi link mooCorePropOrVerb Identifier
hi link mooUnenclosedError Error
hi link mooParenthesesError Error
hi link mooBracketsError Error
hi link mooBracesError Error
hi link mooQuestionError Error
hi link mooCatchError Error
hi link mooExclamation Exception
hi link mooComment Comment
hi link mooNonCode PreProc
hi link cvsrcString   String
hi link cvsrcNumber   Number
hi link cvsrcCommand  Keyword
hi link cvsrcOption   Identifier
hi link scalaKeyword Keyword
hi link scalaAkkaSpecialWord PreProc
hi link scalatestSpecialWord PreProc
hi link scalatestShouldDSLA PreProc
hi link scalatestShouldDSLB PreProc
hi link scalaSymbol Number
hi link scalaChar Character
hi link scalaEscapedChar Function
hi link scalaUnicodeChar Special
hi link scalaOperator Special
hi link scalaNameDefinition Function
hi link scalaInstanceDeclaration Special
hi link scalaInstanceHash Type
hi link scalaUnimplemented ERROR
hi link scalaCapitalWord Special
hi link scalaTypeTypeDeclaration Type
hi link scalaTypeTypeExtension Keyword
hi link scalaTypeTypePostDeclaration Special
hi link scalaTypeTypePostExtension Keyword
hi link scalaTypeDeclaration Type
hi link scalaTypeExtension Keyword
hi link scalaTypePostExtension Keyword
hi link scalaTypeAnnotation Normal
hi link scalaCaseFollowing Special
hi link scalaKeywordModifier Function
hi link scalaSpecial PreProc
hi link scalaExternal Include
hi link scalaString String
hi link scalaStringEmbeddedQuote String
hi link scalaIString String
hi link scalaTripleIString String
hi link scalaInterpolation Function
hi link scalaInterpolationB Normal
hi link scalaFString String
hi link scalaFInterpolation Function
hi link scalaFInterpolationB Normal
hi link scalaTripleString String
hi link scalaTripleFString String
hi link scalaInterpolationBrackets Special
hi link scalaInterpolationBoundary Function
hi link scalaNumber Number
hi link scalaSquareBracketsBrackets Type
hi link scalaTypeOperator Keyword
hi link scalaTypeAnnotationParameter Function
hi link scalaShebang Comment
hi link scalaMultilineComment Comment
hi link scalaDocLinks Function
hi link scalaParameterAnnotation Function
hi link scalaParamAnnotationValue Keyword
hi link scalaCommentAnnotation Function
hi link scalaCommentCodeBlockBrackets String
hi link scalaCommentCodeBlock String
hi link scalaTodo Todo
hi link scalaAnnotation PreProc
hi link scalaTrailingComment Comment
hi link scalaAkkaFSM PreProc
hi link scalaAkkaFSMGotoUsing PreProc
hi link pyrexStatement		Statement
hi link pyrexType		Type
hi link pyrexStructure		Structure
hi link pyrexInclude		PreCondit
hi link pyrexAccess		pyrexStatement
hi link pyrexBuiltin	Function
hi link pyrexForFrom		Statement
hi link lhsBirdTrack Comment
hi link beginCodeBegin	      texCmdName
hi link beginCodeCode	      texSection
hi link registryComment	Comment
hi link registryHead		Constant
hi link registryHKEY		Constant
hi link registryPath		Special
hi link registryRemove	PreProc
hi link registryGUID		Identifier
hi link registrySpecial	Special
hi link registrySubKey	Type
hi link registryString	String
hi link registryHex		Number
hi link registryDword		Number
hi link lessEndOfLineComment        lessComment
hi link lessCssComment              lessComment
hi link lessComment                 Comment
hi link lessDefault                 cssImportant
hi link lessVariable                Identifier
hi link lessFunction                PreProc
hi link lessTodo                    Todo
hi link lessInclude                 Include
hi link lessIdChar                  Special
hi link lessClassChar               Special
hi link lessAmpersand               Character
hi link lessId                      Identifier
hi link lessClass                   Type
hi link lessCssAttribute            PreProc
hi link lessClassCall               Type
hi link lessClassIdCall             Type
hi link lessTagName                 cssTagName
hi link lessDeprecated              cssDeprecated
hi link lessMedia                   cssMedia
hi link dictdconfTodo       Todo
hi link dictdconfComment    Comment
hi link dictdconfSpecialC   Special
hi link dictdconfKeyword    Keyword
hi link dictdconfIdentifier Identifier
hi link dictdconfAccess     dictdconfIdentifier
hi link dictdconfDatabase   dictdconfString
hi link dictdconfSpec       dictdconfIdentifier
hi link dictdconfVDatabase  dictdconfDatabase
hi link dictdconfVSpec      dictdconfSpec
hi link dictdconfPDatabase  dictdconfDatabase
hi link dictdconfPSpec      dictdconfSpec
hi link dictdconfUsername   dictdconfString
hi link dictdconfSecret     Special
hi link dictdconfString     String
hi link dictdconfDelimiter  Delimiter
hi link lftpComment         Comment
hi link lftpTodo            Todo
hi link lftpString          String
hi link lftpNumber          Number
hi link lftpBoolean         Boolean
hi link lftpInterval        Number
hi link lftpKeywords        Keyword
hi link lftpSettingsPrefix  PreProc
hi link lftpSettings        Type
hi link monkSyntax		Statement
hi link monkFunc		Function
hi link monkString		String
hi link monkChar		Character
hi link monkNumber		Number
hi link monkBoolean		Boolean
hi link monkDelimiter	Delimiter
hi link monkConstant	Constant
hi link monkComment		Comment
hi link monkError		Error
hi link archTodo    Todo
hi link archComment Comment
hi link archKeyword Keyword
hi link archTMethod Type
hi link archRegex   String
hi link promelaStatement    Statement
hi link promelaType	        Type
hi link promelaComment      Comment
hi link promelaOperator	    Type
hi link promelaSpecial      Special
hi link promelaFunctions    Special
hi link promelaString		String
hi link promelaTodo	        Todo
hi link sdlException	Label
hi link sdlConditional	sdlStatement
hi link sdlVirtual		sdlStatement
hi link sdlExported		sdlFlag
hi link sdlCommentError	sdlError
hi link sdlOperator		Operator
hi link sdlStructure	sdlType
hi link sdlType		Type
hi link sdlString		String
hi link sdlComment		Comment
hi link sdlSpecial		Special
hi link sdlError		Error
hi link ctermStatement		Statement
hi link ctermFunction		Statement
hi link ctermStrFunction	Statement
hi link ctermIntFunction	Statement
hi link ctermLabel		Statement
hi link ctermConditional	Statement
hi link ctermRepeat		Statement
hi link ctermLibFunc		UserDefFunc
hi link ctermType		Type
hi link ctermFuncArg		PreCondit
hi link ctermPreVarRO		PreCondit
hi link ctermPreVarRW		PreConditBold
hi link ctermVar		Type
hi link ctermComment		Comment
hi link ctermCharacter		SpecialChar
hi link ctermSpecial		Special
hi link ctermSpecialCharacter	SpecialChar
hi link ctermSymbols		Special
hi link ctermString		String
hi link ctermTodo		Todo
hi link ctermOperator		Statement
hi link ctermNumber		Number
hi link upstreaminstalllog_Date	Underlined
hi link upstreaminstalllog_MsgD	Type
hi link upstreaminstalllog_MsgE	Error
hi link upstreaminstalllog_MsgW	Constant
hi link upstreaminstalllog_IPaddr	Identifier
hi link sqlDashComment	Comment
hi link sqlSlashComment	Comment
hi link sqlMultiComment	Comment
hi link sqlNumber	        Number
hi link sqlOperator	        Operator
hi link sqlSpecial	        Special
hi link sqlKeyword	        Keyword
hi link sqlStatement	Statement
hi link sqlString	        String
hi link sqlType	        Type
hi link sqlFunction	        Function
hi link sqlOption	        PreProc
hi link asm68kComment		Comment
hi link asm68kTodo		Todo
hi link hexNumber		Number		" Constant
hi link octNumber		Number		" Constant
hi link binNumber		Number		" Constant
hi link decNumber		Number		" Constant
hi link floatNumber		Number		" Constant
hi link floatExponent		Number		" Constant
hi link floatE			SpecialChar	" Statement
hi link asm68kImmediate	SpecialChar	" Statement
hi link asm68kString		String		" Constant
hi link asm68kCharError	Error
hi link asm68kStringError	Error
hi link asm68kReg		Identifier
hi link asm68kOperator		Identifier
hi link asm68kInclude		Include		" PreProc
hi link asm68kMacro		Macro		" PreProc
hi link asm68kMacroParam	Keyword		" Statement
hi link asm68kDirective	Special
hi link asm68kPreCond		Special
hi link asm68kOpcode		Statement
hi link asm68kCond		Conditional	" Statement
hi link asm68kRepeat		Repeat		" Statement
hi link asm68kLabel		Type
hi link cfTagName		Statement
hi link cfCustomTagName	Statement
hi link cfArg			Type
hi link cfFunctionName		Function
hi link cfHashRegion		PreProc
hi link cfComment		Comment
hi link cfCommentTodo		Todo
hi link cfOperator		Operator
hi link cfOperatorMatch	Operator
hi link cfScope		Title
hi link cfBool			Constant
hi link cfscriptBlock		Special
hi link cfscriptTag		htmlTag
hi link cfSetRegion		PreProc
hi link cfSetLHSRegion		htmlTag
hi link cfSetTagEnd		htmlTag
hi link cfScriptLineComment	Comment
hi link cfScriptComment	Comment
hi link cfScriptStringS	String
hi link cfScriptStringD	String
hi link cfScriptNumber		cfScriptValue
hi link cfScriptConditional	Conditional
hi link cfScriptRepeat		Repeat
hi link cfScriptBranch		Conditional
hi link cfScriptSpecial	Type
hi link cfScriptStatement	Statement
hi link cfScriptBraces		Function
hi link cfScriptKeyword	Function
hi link cfScriptError		Error
hi link cfDeprecatedTag	Error
hi link cfDeprecatedFunction	Error
hi link cfScrParenError	cfScriptError
hi link cfqueryTag		htmlTag
hi link sendprComment   Comment
hi link sendprType      Type
hi link sendprString    String
hi link sendprLabel     Label
hi link poCommentSources    PreProc
hi link poComment	     Comment
hi link poCommentAutomatic  Comment
hi link poCommentTranslator Comment
hi link poCommentFlags      Special
hi link poCommentDiff       Comment
hi link poCopyrightUnset    Todo
hi link poFlagFuzzy         Todo
hi link poDiffOld           Todo
hi link poDiffNew          Special
hi link poObsolete         Comment
hi link poStatementMsgid   Statement
hi link poStatementMsgstr  Statement
hi link poStatementMsgidplural  Statement
hi link poStatementMsgCTxt Statement
hi link poPluralCaseN      Constant
hi link poStringCTxt	    Comment
hi link poStringID	    String
hi link poStringSTR	    String
hi link poCommentKDE       Comment
hi link poCommentKDEError  Error
hi link poPluralKDE        Comment
hi link poPluralKDEError   Error
hi link poHeaderItem       Identifier
hi link poHeaderUndefined  Todo
hi link poKDEdesktopFile   Identifier
hi link poHtml              Identifier
hi link poHtmlNot           String
hi link poHtmlTranslatables String
hi link poLineBreak         String
hi link poFormat	    poSpecial
hi link poSpecial	    Special
hi link poAcceleratorId    Special
hi link poAcceleratorStr   Special
hi link poVariable         Special
hi link poMsguniqError        Special
hi link poMsguniqErrorMarkers Comment
hi link aveStatement		Statement
hi link aveString		String
hi link aveNumber		Number
hi link aveFixVariables	Special
hi link aveVariables		Identifier
hi link globalVariables	Special
hi link aveConst		Special
hi link aveClassMethods	Function
hi link aveOperator		Operator
hi link aveComment		Comment
hi link aveTypos		Error
hi link tliNumber	Number
hi link tliString	String
hi link tliComment	Comment
hi link tliSpecial	SpecialChar
hi link tliIdentifier Identifier
hi link tliObject     Statement
hi link tliField      Type
hi link tliStyle      PreProc
hi link arduinoType Type
hi link arduinoConstant Constant
hi link arduinoStdFunc Function
hi link arduinoFunc Function
hi link arduinoMethod Function
hi link arduinoModule Identifier
hi link dslTodo		Todo
hi link dslString		String
hi link dslComment		Comment
hi link dslCondDelim	Type
hi link apacheAllowOverride apacheDeclaration
hi link apacheAllowOverrideValue apacheOption
hi link apacheAuthType apacheDeclaration
hi link apacheAuthTypeValue apacheOption
hi link apacheOptionOption apacheOption
hi link apacheDeclaration Function
hi link apacheAnything apacheOption
hi link apacheOption Number
hi link apacheComment Comment
hi link apacheFixme Todo
hi link apacheLimitSectionKeyword apacheLimitSection
hi link apacheLimitSection apacheSection
hi link apacheSection Label
hi link apacheMethodOption Type
hi link apacheAllowDeny Include
hi link apacheAllowDenyValue Identifier
hi link apacheOrder Special
hi link apacheOrderValue String
hi link apacheString String
hi link apacheError Error
hi link apacheUserID Number
hi link tppAbstractOptionKey		Special
hi link tppPageLocalOptionKey		Keyword
hi link tppPageLocalSwitchKey		Keyword
hi link tppColorOptionKey		Keyword
hi link tppTimeOptionKey		Comment
hi link tppNewPageOptionKey		PreProc
hi link tppString			String
hi link tppColor			String
hi link tppTime			Number
hi link tppComment			Comment
hi link tppAbstractOption		Error
hi link tppPageLocalOption		Error
hi link tppPageLocalSwitch		Error
hi link tppColorOption			Error
hi link tppNewPageOption		Error
hi link tppTimeOption			Error
hi link indentError   Error
hi link indentComment Comment
hi link indentTodo    Todo
hi link indentOptions Keyword
hi link indentNumber  Number
hi link indentIdent   Identifier
hi link pdfOperator     Operator
hi link pdfNumber       Number
hi link pdfFloat        Float
hi link pdfBoolean      Boolean
hi link pdfConstant     Constant
hi link pdfName         Identifier
hi link pdfNameError    pdfStringError
hi link pdfHexString    pdfString
hi link pdfHexError     pdfStringError
hi link pdfString       String
hi link pdfStringError  Error
hi link pdfSpecialChar  SpecialChar
hi link pdfDelimiter    Delimiter
hi link pdfType         Type
hi link pdfReference    Tag
hi link pdfStream       NonText
hi link pdfPreProc      PreProc
hi link pdfComment      Comment
hi link texmfComment Comment
hi link texmfTodo Todo
hi link texmfPassedParameter texmfVariable
hi link texmfVariable Identifier
hi link texmfNumber Number
hi link texmfString String
hi link texmfLHSStart texmfLHS
hi link texmfLHSVariable texmfLHS
hi link texmfLHSDot texmfLHS
hi link texmfLHS Type
hi link texmfEquals Normal
hi link texmfBraceBrace texmfDelimiter
hi link texmfComma texmfDelimiter
hi link texmfColons texmfDelimiter
hi link texmfDelimiter Preproc
hi link texmfDoubleExclam Statement
hi link texmfSpecial Special
hi link texmfBraceError texmfError
hi link texmfError Error
hi link masterKeyword Keyword
hi link masterComment Comment
hi link masterString  String
hi link mfBoolExp      Statement
hi link mfNumExp       Statement
hi link mfPairExp      Statement
hi link mfPathExp      Statement
hi link mfPenExp       Statement
hi link mfPicExp       Statement
hi link mfStringExp    Statement
hi link mfInternal     Identifier
hi link mfCommand      Statement
hi link mfType         Type
hi link mfStatement    Statement
hi link mfDefinition   Statement
hi link mfCondition    Conditional
hi link mfPrimitive    Statement
hi link mfDef          Function
hi link mfVardef       mfDef
hi link mfPrimaryDef   mfDef
hi link mfSecondaryDef mfDef
hi link mfTertiaryDef  mfDef
hi link mfCoord        Identifier
hi link mfPoint        Identifier
hi link mfNumeric      Number
hi link mfLength       Number
hi link mfComment      Comment
hi link mfString       String
hi link mfOpenString   Todo
hi link mfSuffixParam  Label
hi link mfNewInternal  mfInternal
hi link mfVariable     Identifier
hi link mfConstant     Constant
hi link mfTodoComment  Todo
hi link veraClass		Identifier
hi link veraObject		Identifier
hi link veraUserMethod		Function
hi link veraTask		Keyword
hi link veraModifier		Tag
hi link veraDeprecated		veraError
hi link veraMethods		Statement
hi link veraInterface		Function
hi link veraFormat		veraSpecial
hi link veraCppString		veraString
hi link veraCommentL		veraComment
hi link veraCommentStart		veraComment
hi link veraLabel			Label
hi link veraUserLabel		Label
hi link veraConditional		Conditional
hi link veraRepeat		Repeat
hi link veraCharacter		Character
hi link veraSpecialCharacter	veraSpecial
hi link veraNumber		Number
hi link veraOctal			Number
hi link veraOctalZero		PreProc	 " link this to Error if you want
hi link veraFloat			Float
hi link veraOctalError		veraError
hi link veraParenError		veraError
hi link veraErrInParen		veraError
hi link veraErrInBracket		veraError
hi link veraCommentError		veraError
hi link veraCommentStartError	veraError
hi link veraSpaceError         SpaceError
hi link veraSpecialError		veraError
hi link veraOperator		Operator
hi link veraStructure		Structure
hi link veraInclude		Include
hi link veraPreProc		PreProc
hi link veraDefine		Macro
hi link veraIncluded		veraString
hi link veraError			Error
hi link veraStatement		Statement
hi link veraPreCondit		PreCondit
hi link veraType			Type
hi link veraConstant		Keyword
hi link veraUserConstant		Constant
hi link veraCommentString		veraString
hi link veraComment2String	veraString
hi link veraCommentSkip		veraComment
hi link veraString		String
hi link veraComment		Comment
hi link veraSpecial		SpecialChar
hi link veraTodo			Todo
hi link veraCppSkip		veraCppOut
hi link veraCppOut2		veraCppOut
hi link veraCppOut		Comment
hi link pineConfig	Type
hi link pineComment	Comment
hi link pineOption	Macro
hi link ldTodo          Todo
hi link ldComment       Comment
hi link ldFileName      String
hi link ldPreProc       PreProc
hi link ldFunction      Identifier
hi link ldKeyword       Keyword
hi link ldType          Type
hi link ldDataType      ldType
hi link ldOutputType    ldType
hi link ldPTType        ldType
hi link ldSpecial       Special
hi link ldIdentifier    Identifier
hi link ldSections      Constant
hi link ldSpecSections  Special
hi link ldNumber        Number
hi link ldNumberMult    PreProc
hi link ldOctal         ldNumber
hi link ldOctalZero     PreProc
hi link ldOctalError    Error
hi link basicLabel		Label
hi link basicConditional	Conditional
hi link basicRepeat		Repeat
hi link basicLineNumber	Comment
hi link basicNumber		Number
hi link basicError		Error
hi link basicStatement	Statement
hi link basicString		String
hi link basicComment		Comment
hi link basicSpecial		Special
hi link basicTodo		Todo
hi link basicFunction		Identifier
hi link basicTypeSpecifier Type
hi link basicFilenumber basicTypeSpecifier
hi link vhdlSpecial	Special
hi link vhdlStatement   Statement
hi link vhdlCharacter   Character
hi link vhdlString	String
hi link vhdlVector	Number
hi link vhdlBoolean	Number
hi link vhdlTodo	Todo
hi link vhdlFixme	Fixme
hi link vhdlComment	Comment
hi link vhdlNumber	Number
hi link vhdlTime	Number
hi link vhdlType	Type
hi link vhdlOperator    Operator
hi link vhdlError	Error
hi link vhdlAttribute   Special
hi link vhdlPreProc	PreProc
hi link fsOperator Operator
hi link fsComment Comment
hi link fsCommentLine Comment
hi link fsTypeKeyword Type
hi link fsDeviceKeyword Identifier
hi link fsDeviceLabel String
hi link fsDeviceUUID String
hi link fsDeviceSshfs String
hi link fsFreqPassNumber Number
hi link fsTypeUnknown Error
hi link fsDeviceError Error
hi link fsMountPointError Error
hi link fsMountPointKeyword Keyword
hi link fsFreqPassError Error
hi link fsOptionsGeneral Type
hi link fsOptionsKeywords Keyword
hi link fsOptionsNumber Number
hi link fsOptionsNumberOctal Number
hi link fsOptionsString String
hi link fsOptionsSize Number
hi link fsOptionsExt2Check String
hi link fsOptionsExt2Errors String
hi link fsOptionsExt3Journal String
hi link fsOptionsExt3Data String
hi link fsOptionsExt4Journal String
hi link fsOptionsExt4Data String
hi link fsOptionsExt4Barrier Number
hi link fsOptionsFatCheck String
hi link fsOptionsConv String
hi link fsOptionsFatType Number
hi link fsOptionsYesNo String
hi link fsOptionsHpfsCase String
hi link fsOptionsIsoMap String
hi link fsOptionsReiserHash String
hi link fsOptionsSshYesNoAsk String
hi link fsOptionsUfsType String
hi link fsOptionsUfsError String
hi link fsOptionsVfatShortname String
hi link gitoliteGroup           Identifier
hi link gitoliteComment         Comment
hi link gitoliteTodo            ToDo
hi link gitoliteRepoError       Error
hi link gitoliteGroupLine       PreProc
hi link gitoliteRepo            Keyword
hi link gitoliteSpecialRepo     PreProc
hi link gitoliteRule            Keyword
hi link gitoliteCreateRule      PreProc
hi link gitoliteDenyRule        WarningMsg
hi link gitoliteRefex           Constant
hi link gitoliteSpecialRefex    PreProc
hi link gitoliteConfigKW        Keyword
hi link gitoliteConfigKey       Identifier
hi link gitoliteConfigVal       String
hi link gitoliteTplRepo         Keyword
hi link gitoliteTplTemplates    Constant
hi link gitoliteTplRole         Constant
hi link gitoliteTplError        Error
hi link framescriptTodo                 Todo
hi link framescriptComment              Comment
hi link framescriptCommentStart         framescriptComment
hi link framescriptInclude              Include
hi link framescriptIncluded             String
hi link framescriptBoolean              Boolean
hi link framescriptNumber               Number
hi link framescriptInteger              framescriptNumber
hi link framescriptReal                 framescriptNumber
hi link framescriptMetric               framescriptNumber
hi link framescriptCharacter            framescriptNumber
hi link framescriptString               String
hi link framescriptStringSpecialChar    SpecialChar
hi link framescriptConstant             Constant
hi link framescriptOperator             None
hi link framescriptSessionVariables     PreProc
hi link framescriptStructure            Structure
hi link framescriptStatement            Statement
hi link framescriptSubStatement         Type
hi link framescriptApplySubStatement    framescriptSubStatement
hi link framescriptClearSubStatement    framescriptSubStatement
hi link framescriptCloseSubStatement    framescriptSubStatement
hi link framescriptExecSubStatement     framescriptSubStatement
hi link framescriptExecuteSubStatement  framescriptSubStatement
hi link framescriptGenerateSubStatement framescriptSubStatement
hi link framescriptGetSubStatement      framescriptSubStatement
hi link framescriptImportSubStatement   framescriptSubStatement
hi link framescriptInstallSubStatement  framescriptSubStatement
hi link framescriptNewSubStatement      framescriptSubStatement
hi link framescriptOpenSubStatement     framescriptSubStatement
hi link framescriptPrintSubStatement    framescriptSubStatement
hi link framescriptQuitSubStatement     framescriptSubStatement
hi link framescriptRemoveSubStatement   framescriptSubStatement
hi link framescriptSaveSubStatement     framescriptSubStatement
hi link framescriptSelectSubStatement   framescriptSubStatement
hi link framescriptStraddleSubStatement framescriptSubStatement
hi link framescriptUpdateSubStatement   framescriptSubStatement
hi link framescriptRepeat               Repeat
hi link framescriptConditional          Conditional
hi link framescriptType                 Type
hi link debcontrolKey           Keyword
hi link debcontrolField         Normal
hi link debcontrolStrictField   Error
hi link debcontrolDeprecatedKey Error
hi link debcontrolMultiField    Normal
hi link debcontrolArchitecture  Normal
hi link debcontrolMultiArch     Normal
hi link debcontrolName          Normal
hi link debcontrolPriority      Normal
hi link debcontrolSection       Normal
hi link debcontrolPackageType   Normal
hi link debcontrolVariable      Identifier
hi link debcontrolEmail         Identifier
hi link debcontrolVcsSvn        Identifier
hi link debcontrolVcsCvs        Identifier
hi link debcontrolVcsGit        Identifier
hi link debcontrolHTTPUrl       Identifier
hi link debcontrolDmUpload      Identifier
hi link debcontrolComment       Comment
hi link debcontrolElse          Special
hi link nsisInstruction		Function
hi link nsisComment			Comment
hi link nsisLocalLabel			Label
hi link nsisGlobalLabel		Label
hi link nsisStatement			Statement
hi link nsisString			String
hi link nsisBoolean			Boolean
hi link nsisAttribOptions		Constant
hi link nsisExecShell			Constant
hi link nsisFileAttrib			Constant
hi link nsisMessageBox			Constant
hi link nsisRegistry			Identifier
hi link nsisNumber			Number
hi link nsisError			Error
hi link nsisUserVar			Identifier
hi link nsisSysVar			Identifier
hi link nsisAttribute			Type
hi link nsisCompiler			Type
hi link nsisTodo			Todo
hi link nsisCallback			Operator
hi link nsisPreprocSubst		PreProc
hi link nsisDefine			Define
hi link nsisMacro			Macro
hi link nsisPreCondit			PreCondit
hi link nsisInclude			Include
hi link nsisSystem			PreProc
hi link pascalAcces		pascalStatement
hi link pascalBoolean		Boolean
hi link pascalComment		Comment
hi link pascalConditional	Conditional
hi link pascalConstant		Constant
hi link pascalDelimiter	Identifier
hi link pascalDirective	pascalStatement
hi link pascalException	Exception
hi link pascalFloat		Float
hi link pascalFunction		Function
hi link pascalLabel		Label
hi link pascalMatrixDelimiter	Identifier
hi link pascalModifier		Type
hi link pascalNumber		Number
hi link pascalOperator		Operator
hi link pascalPredefined	pascalStatement
hi link pascalPreProc		PreProc
hi link pascalRepeat		Repeat
hi link pascalSpaceError	Error
hi link pascalStatement	Statement
hi link pascalString		String
hi link pascalStringEscape	Special
hi link pascalStringEscapeGPC	Special
hi link pascalStringError	Error
hi link pascalStruct		pascalStatement
hi link pascalSymbolOperator	pascalOperator
hi link pascalTodo		Todo
hi link pascalType		Type
hi link pascalUnclassified	pascalStatement
hi link pascalError		Error
hi link pascalAsmKey		pascalStatement
hi link pascalShowTab		Error
hi link pilrcKeyword		Statement
hi link pilrcType		Type
hi link pilrcError		Error
hi link pilrcCountry		SpecialChar
hi link pilrcLanguage		SpecialChar
hi link pilrcString		SpecialChar
hi link pilrcNumber		Number
hi link pilrcComment		Comment
hi link pilrcConstant		Constant
hi link pilrcFunction		Function
hi link pilrcInclude		SpecialChar
hi link pilrcIdentifier		Number
hi link slpregTodo          Todo
hi link slpregComment       Comment
hi link slpregServiceURL    Type
hi link slpregServiceType   slpregServiceURL
hi link slpregServiceSAPCol slpregServiceURL
hi link slpregSAP           slpregServiceURL
hi link slpregDelimiter     Delimiter
hi link slpregLangSep       slpregDelimiter
hi link slpregLang          String
hi link slpregLTimeSep      slpregDelimiter
hi link slpregLTime         Number
hi link slpregType          Type
hi link slpregScopes        Identifier
hi link slpregScopesEq      Operator
hi link slpregScopeName     String
hi link slpregScopeNameSep  slpregDelimiter
hi link slpregAttribute     Identifier
hi link slpregAttributeEq   Operator
hi link slpregAttrSValue    String
hi link slpregAttrSSValue   slpregAttrSValue
hi link slpregAttrIValue    Number
hi link slpregAttrBValue    Boolean
hi link slpregAttrValueSep  slpregDelimiter
hi link bcKeyword		Statement
hi link bcType		Type
hi link bcConstant		Constant
hi link bcNumber		Number
hi link bcComment		Comment
hi link bcString		String
hi link bcSpecialChar		SpecialChar
hi link bcParenError		Error
hi link gedcom_record Statement
hi link gedcom_id Comment
hi link gedcom_ii PreProc
hi link gedcom_in Type
hi link gedcom_name PreProc
hi link gedcom_cname Type
hi link gedcom_surname Identifier
hi link gedcom_date Constant
hi link tidyAutoBooleanOption	Identifier
hi link tidyBooleanOption		Identifier
hi link tidyCSSSelectorOption	Identifier
hi link tidyDoctypeOption		Identifier
hi link tidyEncodingOption		Identifier
hi link tidyIntegerOption		Identifier
hi link tidyNameOption		Identifier
hi link tidyNewlineOption		Identifier
hi link tidyTagsOption		Identifier
hi link tidyRepeatOption		Identifier
hi link tidySorterOption		Identifier
hi link tidyStringOption		Identifier
hi link tidyAutoBooleanDelimiter	Special
hi link tidyBooleanDelimiter	Special
hi link tidyCSSSelectorDelimiter	Special
hi link tidyDoctypeDelimiter	Special
hi link tidyEncodingDelimiter	Special
hi link tidyIntegerDelimiter	Special
hi link tidyNameDelimiter		Special
hi link tidyNewlineDelimiter	Special
hi link tidyTagsDelimiter		Special
hi link tidyRepeatDelimiter		Special
hi link tidySorterDelimiter		Special
hi link tidyStringDelimiter		Special
hi link tidyAutoBoolean		Boolean
hi link tidyBoolean			Boolean
hi link tidyDoctype			Constant
hi link tidyEncoding		Constant
hi link tidyNewline			Constant
hi link tidyTags			Constant
hi link tidyNumber			Number
hi link tidyRepeat			Constant
hi link tidySorter			Constant
hi link tidyString			String
hi link tidyComment			Comment
hi link tidyTodo			Todo
hi link xmlRegion Comment
hi link csType			Type
hi link csStorage			StorageClass
hi link csRepeat			Repeat
hi link csConditional		Conditional
hi link csLabel			Label
hi link csModifier			StorageClass
hi link csConstant			Constant
hi link csException			Exception
hi link csUnspecifiedStatement	Statement
hi link csUnsupportedStatement	Statement
hi link csUnspecifiedKeyword	Keyword
hi link csContextualStatement	Statement
hi link csOperatorError		Error
hi link csTodo			Todo
hi link csComment			Comment
hi link csSpecialError		Error
hi link csSpecialCharError		Error
hi link csString			String
hi link csVerbatimString		String
hi link csVerbatimSpec		SpecialChar
hi link csPreCondit			PreCondit
hi link csCharacter			Character
hi link csSpecialChar		SpecialChar
hi link csNumber			Number
hi link csUnicodeNumber		SpecialChar
hi link csUnicodeSpecifier		SpecialChar
hi link csXmlCommentLeader		Comment
hi link csXmlComment		Comment
hi link csXmlTag			Statement
hi link snobol4Constant        Constant
hi link snobol4Label           Label
hi link snobol4Goto            Repeat
hi link snobol4Conditional     Conditional
hi link snobol4Repeat          Repeat
hi link snobol4Number          Number
hi link snobol4Error           Error
hi link snobol4Statement       PreProc
hi link snobol4BogusStatement  snobol4Error
hi link snobol4String          String
hi link snobol4Comment         Comment
hi link snobol4Special         Special
hi link snobol4Todo            Todo
hi link snobol4Keyword         Keyword
hi link snobol4Function        Function
hi link snobol4MathsOperator   Operator
hi link snobol4ParenError      snobol4Error
hi link snobol4ErrInParen      snobol4Error
hi link snobol4ErrInBracket    snobol4Error
hi link snobol4SysVar          Keyword
hi link snobol4BogusSysVar     snobol4Error
hi link snobol4ExtSysVar       WarningMsg
hi link snobol4ExtKeyword      WarningMsg
hi link snobol4ExtSysVar       snobol4SysVar
hi link snobol4ExtKeyword      snobol4Keyword
hi link gdmoCategory	      Structure
hi link gdmoRelationship     Macro
hi link gdmoDefinition       Statement
hi link gdmoReference	      Type
hi link gdmoExtension	      Operator
hi link gdmoBraces	      Function
hi link gdmoSpecial	      Special
hi link gdmoString	      String
hi link gdmoCharacter	      Character
hi link gdmoSpecialCharacter gdmoSpecial
hi link gdmoComment	      Comment
hi link gdmoLineComment      gdmoComment
hi link gdmoType	      Type
hi link sindacmpTitle		     Type
hi link sindacmpUnit		     PreProc
hi link sindacmpLabel		     Statement
hi link sindacmpHeader		     sindaHeader
hi link sindacmpInteger	     Number
hi link sindacmpFloat		     Special
hi link sliceComment	Comment
hi link sliceConstruct	Keyword
hi link sliceType	Type
hi link sliceString	String
hi link sliceIncluded	String
hi link sliceQualifier	Keyword
hi link sliceInclude	Include
hi link sliceGuard	PreProc
hi link sliceBoolean	Boolean
hi link sliceFloat	Number
hi link sliceNumber	Number
hi link sliceOctal	Number
hi link sliceOctalZero	Special
hi link sliceNumberError Special
hi link masmLabel		PreProc
hi link masmComment		Comment
hi link masmDirective	Statement
hi link masmType		Type
hi link masmOperator	Type
hi link masmOption		Special
hi link masmRegister	Special
hi link masmString		String
hi link masmText		String
hi link masmTitle		Title
hi link masmOpcode		Statement
hi link masmOpFloat		Statement
hi link masmHexadecimal	Number
hi link masmDecimal		Number
hi link masmOctal		Number
hi link masmBinary		Number
hi link masmFloatRaw	Number
hi link masmFloat		Number
hi link masmIdentifier	Identifier
hi link systemverilogStatement       Statement
hi link systemverilogTypeDef         TypeDef
hi link systemverilogConditional     Conditional
hi link systemverilogRepeat          Repeat
hi link systemverilogLabel           Label
hi link systemverilogGlobal          Define
hi link systemverilogNumber          Number
hi link lpcModifier		lpcStorageClass
hi link lpcQuotedFmt		lpcFormat
hi link lpcFormat		lpcSpecial
hi link lpcCppString		lpcString	" Cpp means
hi link lpcCommentL		lpcComment
hi link lpcCommentStart	lpcComment
hi link lpcUserLabel		lpcLabel
hi link lpcSpecialCharacter	lpcSpecial
hi link lpcOctal		lpcPreProc
hi link lpcOctalZero		lpcSpecial  " LPC will treat octal numbers
hi link lpcEfunError		lpcError
hi link lpcKeywdError		lpcError
hi link lpcOctalError		lpcError
hi link lpcParenError		lpcError
hi link lpcErrInParen		lpcError
hi link lpcErrInBracket	lpcError
hi link lpcCommentError	lpcError
hi link lpcCommentStartError	lpcError
hi link lpcSpaceError		lpcError
hi link lpcSpecialError	lpcError
hi link lpcErrFunc		lpcError
hi link lpc_efuns		lpcFunction
hi link lpcReserved		lpcPreProc
hi link lpcTextString		lpcString   " This should be preprocessors, but
hi link lpcArrayString		lpcPreProc  " let's make some difference
hi link lpcIncluded		lpcString
hi link lpcCommentString	lpcString
hi link lpcComment2String	lpcString
hi link lpcCommentSkip		lpcComment
hi link lpcCommentFunc		lpcComment
hi link lpcCppSkip		lpcCppOut
hi link lpcCppOut2		lpcCppOut
hi link lpcCppOut		lpcComment
hi link lpcApplies		Special
hi link lpcCharacter		Character
hi link lpcComment		Comment
hi link lpcConditional		Conditional
hi link lpcConstant		Constant
hi link lpcDefine		Macro
hi link lpcError		Error
hi link lpcFloat		Float
hi link lpcFunction		Function
hi link lpcIdentifier		Identifier
hi link lpcInclude		Include
hi link lpcLabel		Label
hi link lpcNumber		Number
hi link lpcOperator		Operator
hi link lpcPreCondit		PreCondit
hi link lpcPreProc		PreProc
hi link lpcRepeat		Repeat
hi link lpcStatement		Statement
hi link lpcStorageClass	StorageClass
hi link lpcString		String
hi link lpcStructure		Structure
hi link lpcSpecial		LineNr
hi link lpcTodo		Todo
hi link lpcType		Type
hi link mallardComment  Comment
hi link mallardTagName  Statement
hi link mallardTitle    Title
hi mallardEmphasis term=italic cterm=italic gui=italic
hi link antElement Statement
hi link zimbuBasicType	Type
hi link zimbuCompType	Type
hi link zimbuType		Type
hi link zimbuStatement	Statement
hi link zimbuOperator	Statement
hi link zimbuMethod		PreProc
hi link zimbuModule		PreProc
hi link zimbuImport		PreProc
hi link zimbuUses		PreProc
hi link zimbuBlockgc	PreProc
hi link zimbuAttribute	PreProc
hi link zimbuString		Constant
hi link zimbuLongString	Special
hi link zimbuChar		Constant
hi link zimbuFixed		Constant
hi link zimbuComment	Comment
hi link zimbuCommentStart	zimbuComment
hi link zimbuBlockComment	Comment
hi link zimbuCblock		Comment
hi link zimbuTodo		Todo
hi link zimbuParam		Constant
hi link zimbuCode		Statement
hi link zimbuNoBar		Ignore
hi link zimbuNoBacktick	Ignore
hi link zimbuSpaceError	Error
hi link zimbuError		Error
hi link sdcCollections      Repeat
hi link sdcObjectsInfo      Operator
hi link sdcCreateOperations	Operator
hi link sdcObjectsQuery	Operator
hi link sdcConstraints	Operator
hi link sdcNonIdealities	Operator
hi link sdcFlags		Special
hi link sensorsTodo         Todo
hi link sensorsComment      Comment
hi link sensorsKeyword      Keyword
hi link sensorsName         String
hi link sensorsNameSpecial  SpecialChar
hi link sensorsLineContinue Special
hi link sensorsNumber       Number
hi link sensorsRealWorld    Identifier
hi link sensorsOperator     Normal
hi link sensorsDelimiter    Normal
hi link snnsresGen		Statement
hi link snnsresHeader		Statement
hi link snnsresNoHeader	Define
hi link snnsresNumbers		Number
hi link snnsresComment		Comment
hi link snnsresTodo		Todo
hi link msqlComment		Comment
hi link msqlString		String
hi link msqlNumber		Number
hi link msqlFloat		Float
hi link msqlIdentifier	Identifier
hi link msqlGlobalIdentifier	Identifier
hi link msqlIntVar		Identifier
hi link msqlEnvVar		Identifier
hi link msqlFunctions		Function
hi link msqlRepeat		Repeat
hi link msqlConditional	Conditional
hi link msqlStatement		Statement
hi link msqlType		Type
hi link msqlInclude		Include
hi link msqlDefine		Define
hi link msqlSpecialChar	SpecialChar
hi link msqlParentError	Error
hi link msqlTodo		Todo
hi link msqlOperator		Operator
hi link msqlRelation		Operator
hi link passwdColon         Normal
hi link passwdAccount       Identifier
hi link passwdPasswordColon passwdColon
hi link passwdPassword      Number
hi link passwdShadow        Special
hi link passwdUIDColon      passwdColon
hi link passwdUID           Number
hi link passwdGIDColon      passwdColon
hi link passwdGID           Number
hi link passwdGecosColon    passwdColon
hi link passwdGecos         Comment
hi link passwdDirColon      passwdColon
hi link passwdDir           Type
hi link passwdShellColon    passwdColon
hi link passwdShell         Operator
hi link yamlTodo                     Todo
hi link yamlComment                  Comment
hi link yamlDocumentStart            PreProc
hi link yamlDocumentEnd              PreProc
hi link yamlDirectiveName            Keyword
hi link yamlTAGDirective             yamlDirectiveName
hi link yamlTagHandle                String
hi link yamlTagPrefix                String
hi link yamlYAMLDirective            yamlDirectiveName
hi link yamlReservedDirective        Error
hi link yamlYAMLVersion              Number
hi link yamlString                   String
hi link yamlFlowString               yamlString
hi link yamlFlowStringDelimiter      yamlString
hi link yamlEscape                   SpecialChar
hi link yamlSingleEscape             SpecialChar
hi link yamlBlockCollectionItemStart Label
hi link yamlBlockMappingKey          Identifier
hi link yamlBlockMappingMerge        Special
hi link yamlFlowMappingKey           Identifier
hi link yamlFlowMappingMerge         Special
hi link yamlMappingKeyStart          Special
hi link yamlFlowIndicator            Special
hi link yamlKeyValueDelimiter        Special
hi link yamlConstant                 Constant
hi link yamlNull                     yamlConstant
hi link yamlBool                     yamlConstant
hi link yamlAnchor                   Type
hi link yamlAlias                    Type
hi link yamlNodeTag                  Type
hi link yamlInteger                  Number
hi link yamlFloat                    Float
hi link yamlTimestamp                Number
hi link poviniSection Special
hi link poviniComment Comment
hi link poviniDeclare poviniKeyword
hi link poviniShellOut poviniKeyword
hi link poviniIncludeLabel poviniKeyword
hi link poviniKeyword Type
hi link poviniShellOutSpecial Special
hi link poviniIncludedFile poviniInclude
hi link poviniInclude Include
hi link poviniOption Keyword
hi link poviniBool Constant
hi link poviniNumber Number
hi link udevrulesTodo       Todo
hi link udevrulesComment    Comment
hi link udevrulesRuleKey    Keyword
hi link udevrulesDelimiter  Delimiter
hi link udevrulesAssignKey  Identifier
hi link udevrulesPath       Identifier
hi link udevrulesVariable   Identifier
hi link udevrulesAttrKey    Identifier
hi link udevrulesEq         Normal
hi link udevrulesRuleEq     udevrulesEq
hi link udevrulesEStringEq  udevrulesEq
hi link udevrulesOptionsEq  udevrulesEq
hi link udevrulesEString    udevrulesString
hi link udevrulesStrEscapes SpecialChar
hi link udevrulesStrNumber  Number
hi link udevrulesStrVars    Identifier
hi link udevrulesString     String
hi link udevrulesPattern    SpecialChar
hi link udevrulesPatRange   SpecialChar
hi link udevrulesOptions    udevrulesString
hi link udevrulesOption     Type
hi link udevrulesOptionSep  Delimiter
hi link udevrulesImportType Type
hi link servicesTodo      Todo
hi link servicesComment   Comment
hi link servicesName      Identifier
hi link servicesPort      Number
hi link servicesPPDiv     Delimiter
hi link servicesPPDivDepr Error
hi link servicesProtocol  Type
hi link servicesAliases   Macro
hi link simulaAssigned		Identifier
hi link simulaBoolean		Boolean
hi link simulaCharacter		Character
hi link simulaCharError		Error
hi link simulaComment		Comment
hi link simulaCompound		Statement
hi link simulaConditional		Conditional
hi link simulaConstant		Constant
hi link simulaFunction		Function
hi link simulaNumber			Number
hi link simulaOperator		Operator
hi link simulaReal			Float
hi link simulaReferenceType		Type
hi link simulaRepeat			Repeat
hi link simulaReserved		Error
hi link simulaSemicolon		Statement
hi link simulaSpecial		Special
hi link simulaSpecialChar		SpecialChar
hi link simulaSpecialCharErr		Error
hi link simulaStatement		Statement
hi link simulaStorageClass		StorageClass
hi link simulaString			String
hi link simulaStructure		Structure
hi link simulaTodo			Todo
hi link simulaType			Type
hi link jgraphComment	Comment
hi link jgraphCmd	Identifier
hi link jgraphType	Type
hi link jgraphNumber	Number
hi link apComment	Comment
hi link apOption	Keyword
hi link apTag		Special
hi link apTagOption	Identifier
hi link apTagError	Error
hi link m4Delimiter Delimiter
hi link m4Comment   Comment
hi link m4Function  Function
hi link m4Keyword   Keyword
hi link m4Special   Special
hi link m4String    String
hi link m4Statement Statement
hi link m4Preproc   PreProc
hi link m4Type      Type
hi link m4Special   Special
hi link m4Variable  Special
hi link m4Constants Constant
hi link m4Builtin   Statement
hi link povComment Comment
hi link povTodo Todo
hi link povNumber Number
hi link povString String
hi link povFileOpen Constant
hi link povConsts Constant
hi link povDotItem povSpecial
hi link povBMPType povSpecial
hi link povCharset povSpecial
hi link povDensityType povSpecial
hi link povFontType povSpecial
hi link povOpenType povSpecial
hi link povSpecialChar povSpecial
hi link povSpecial Special
hi link povConditionalDir PreProc
hi link povLabelDir PreProc
hi link povDeclareDir Define
hi link povDeclareOption Define
hi link povIncludeDir Include
hi link povFileDir PreProc
hi link povFileDataType Special
hi link povMessageDir Debug
hi link povAppearance povDescriptors
hi link povObjects povDescriptors
hi link povGlobalSettings povDescriptors
hi link povDescriptors Type
hi link povJuliaFunctions PovFunctions
hi link povModifiers povFunctions
hi link povFunctions Function
hi link povCommands Operator
hi link povTransform Operator
hi link povCSG Operator
hi link povParenError povError
hi link povBraceError povError
hi link povCommentError povError
hi link povError Error
hi link changeFromMaterial String
hi link changeToMaterial Statement
hi link purifyLogFIU purifyLogInformational
hi link purifyLogMAF purifyLogInformational
hi link purifyLogMIU purifyLogInformational
hi link purifyLogSIG purifyLogInformational
hi link purifyLogWPF purifyLogInformational
hi link purifyLogWPM purifyLogInformational
hi link purifyLogWPN purifyLogInformational
hi link purifyLogWPR purifyLogInformational
hi link purifyLogWPW purifyLogInformational
hi link purifyLogWPX purifyLogInformational
hi link purifyLogABR purifyLogWarning
hi link purifyLogBSR purifyLogWarning
hi link purifyLogBSW purifyLogWarning
hi link purifyLogFMR purifyLogWarning
hi link purifyLogMLK purifyLogWarning
hi link purifyLogMSE purifyLogWarning
hi link purifyLogPAR purifyLogWarning
hi link purifyLogPLK purifyLogWarning
hi link purifyLogSBR purifyLogWarning
hi link purifyLogSOF purifyLogWarning
hi link purifyLogUMC purifyLogWarning
hi link purifyLogUMR purifyLogWarning
hi link purifyLogABW purifyLogCorrupting
hi link purifyLogBRK purifyLogCorrupting
hi link purifyLogFMW purifyLogCorrupting
hi link purifyLogFNH purifyLogCorrupting
hi link purifyLogFUM purifyLogCorrupting
hi link purifyLogMRE purifyLogCorrupting
hi link purifyLogSBW purifyLogCorrupting
hi link purifyLogCOR purifyLogFatal
hi link purifyLogNPR purifyLogFatal
hi link purifyLogNPW purifyLogFatal
hi link purifyLogZPR purifyLogFatal
hi link purifyLogZPW purifyLogFatal
hi link purifyLogHeader		Comment
hi link purifyLogInformational	PreProc
hi link purifyLogWarning		Type
hi link purifyLogCorrupting	Error
hi link purifyLogFatal		Error
hi link objcPreProcMacro                cConstant
hi link objcPrincipalType               cType
hi link objcUsefulTerm                  cConstant
hi link objcImport                      cInclude
hi link objcImported                    cString
hi link objcObjDef                      cOperator
hi link objcProtocol                    cOperator
hi link objcProperty                    cOperator
hi link objcIvarScope                   cOperator
hi link objcInternalRep                 cOperator
hi link objcException                   cOperator
hi link objcThread                      cOperator
hi link objcPool                        cOperator
hi link objcModuleImport                cOperator
hi link objcSpecial                     cSpecial
hi link objcString                      cString
hi link objcHiddenArgument              cStatement
hi link objcBlocksQualifier             cStorageClass
hi link objcObjectLifetimeQualifier     cStorageClass
hi link objcTollFreeBridgeQualifier     cStorageClass
hi link objcRemoteMessagingQualifier    cStorageClass
hi link objcStorageClass                cStorageClass
hi link objcFastEnumKeyword             cStatement
hi link objcLiteralSyntaxNumber         cNumber
hi link objcLiteralSyntaxChar           cCharacter
hi link objcLiteralSyntaxSpecialChar    cCharacter
hi link objcLiteralSyntaxOp             cOperator
hi link objcDeclPropAccessorName        cConstant
hi link objcDeclPropAccessorType        cConstant
hi link objcDeclPropAssignSemantics     cConstant
hi link objcDeclPropAtomicity           cConstant
hi link objcDeclPropARC                 cConstant
hi link objcDeclPropNullable            cConstant
hi link objcDeclPropNonnull             cConstant
hi link objcDeclPropNullUnspecified     cConstant
hi link objcDeclProcNullResettable      cConstant
hi link objcInstanceMethod              Function
hi link objcClassMethod                 Function
hi link objcType                        cType
hi link objcClass                       cType
hi link objcTypeSpecifier               cType
hi link objcMacro                       cConstant
hi link objcEnum                        cType
hi link objcEnumValue                   cConstant
hi link objcExceptionValue              cConstant
hi link objcNotificationValue           cConstant
hi link objcConstVar                    cConstant
hi link objcTypeInfoParams              Identifier
hi link ayaccBrkt	ayaccStmt
hi link ayaccKey	ayaccStmt
hi link ayaccOper	ayaccStmt
hi link ayaccUnionStart	ayaccKey
hi link ayaccCurly	Delimiter
hi link ayaccCurlyError	Error
hi link ayaccDefinition	Function
hi link ayaccDelim	Function
hi link ayaccKeyActn	Special
hi link ayaccSectionSep	Todo
hi link ayaccSep	Delimiter
hi link ayaccStmt	Statement
hi link ayaccType	Type
hi link Delimiter	Type
hi link helpIgnore		Ignore
hi link helpHyperTextJump	Identifier
hi link helpBar		Ignore
hi link helpBacktick	Ignore
hi link helpStar		Ignore
hi link helpHyperTextEntry	String
hi link helpHeadline	Statement
hi link helpHeader		PreProc
hi link helpSectionDelim	PreProc
hi link helpVim		Identifier
hi link helpCommand		Comment
hi link helpExample		Comment
hi link helpOption		Type
hi link helpSpecial		Special
hi link helpNote		Todo
hi link helpWarning		Todo
hi link helpDeprecated	Todo
hi link helpComment		Comment
hi link helpConstant	Constant
hi link helpString		String
hi link helpCharacter	Character
hi link helpNumber		Number
hi link helpBoolean		Boolean
hi link helpFloat		Float
hi link helpIdentifier	Identifier
hi link helpFunction	Function
hi link helpStatement	Statement
hi link helpConditional	Conditional
hi link helpRepeat		Repeat
hi link helpLabel		Label
hi link helpOperator	Operator
hi link helpKeyword		Keyword
hi link helpException	Exception
hi link helpPreProc		PreProc
hi link helpInclude		Include
hi link helpDefine		Define
hi link helpMacro		Macro
hi link helpPreCondit	PreCondit
hi link helpType		Type
hi link helpStorageClass	StorageClass
hi link helpStructure	Structure
hi link helpTypedef		Typedef
hi link helpSpecialChar	SpecialChar
hi link helpTag		Tag
hi link helpDelimiter	Delimiter
hi link helpSpecialComment	SpecialComment
hi link helpDebug		Debug
hi link helpUnderlined	Underlined
hi link helpError		Error
hi link helpTodo		Todo
hi link helpURL		String
hi link artinstance type
hi link artglobalvar preproc
hi link artignore comment
hi link artspform statement
hi link artvariable function
hi link plaintexOperator                Operator
hi link plaintexDelimiter               Delimiter
hi link plaintexControlSequence         Identifier
hi link plaintexComment                 Comment
hi link plaintexInclude                 Include
hi link plaintexRepeat                  Repeat
hi link plaintexCommand                 initexCommand
hi link plaintexBoxCommand              plaintexCommand
hi link plaintexCharacterCommand        initexCharacterCommand
hi link plaintexDebuggingCommand        initexDebuggingCommand
hi link plaintexFontsCommand            initexFontsCommand
hi link plaintexGlueCommand             plaintexCommand
hi link plaintexInsertsCommand          plaintexCommand
hi link plaintexJobCommand              initexJobCommand
hi link plaintexKernCommand             plaintexCommand
hi link plaintexMacroCommand            initexMacroCommand
hi link plaintexPageCommand             plaintexCommand
hi link plaintexParagraphCommand        plaintexCommand
hi link plaintexPenaltiesCommand        plaintexCommand
hi link plaintexRegistersCommand        plaintexCommand
hi link plaintexTablesCommand           plaintexCommand
hi link plaintexMath                    String
hi link plaintexMathCommand             plaintexCommand
hi link plaintexMathBoxCommand          plaintexBoxCommand
hi link plaintexMathCharacterCommand    plaintexCharacterCommand
hi link plaintexMathDelimiter           plaintexDelimiter
hi link plaintexMathFontsCommand        plaintexFontsCommand
hi link plaintexMathLetter              plaintexMathCharacterCommand
hi link plaintexMathSymbol              plaintexMathLetter
hi link plaintexMathFunction            Function
hi link plaintexMathOperator            plaintexOperator
hi link plaintexMathPunctuation         plaintexCharacterCommand
hi link plaintexMathRelation            plaintexOperator
hi link plaintexParameterDimen          initexParameterDimen
hi link plaintexMathParameterDimen      initexMathParameterDimen
hi link plaintexParagraphParameterGlue  initexParagraphParameterGlue
hi link plaintexFontParameterInteger    initexFontParameterInteger
hi link plaintexJobParameterInteger     initexJobParameterInteger
hi link plaintexPageParameterInteger    initexPageParameterInteger
hi link plaintexPageParameterToken      initexParameterToken
hi link prologComment          Comment
hi link prologCComment         Comment
hi link prologCharCode         Special
hi link prologKeyword        Statement
hi link prologClauseHead     Statement
hi link prologClause Normal
hi link prologKeyword        Keyword
hi link prologClauseHead     Constant
hi link prologClause Normal
hi link prologQuestion       PreProc
hi link prologSpecialCharacter Special
hi link prologNumber         Number
hi link prologAsIs           Normal
hi link prologCommentError   Error
hi link prologAtom           String
hi link prologString         String
hi link prologOperator       Operator
hi link gitcommitSummary		Keyword
hi link gitcommitComment		Comment
hi link gitcommitUntracked		gitcommitComment
hi link gitcommitDiscarded		gitcommitComment
hi link gitcommitSelected		gitcommitComment
hi link gitcommitUnmerged		gitcommitComment
hi link gitcommitOnBranch		Comment
hi link gitcommitBranch		Special
hi link gitcommitNoBranch		gitCommitBranch
hi link gitcommitDiscardedType	gitcommitType
hi link gitcommitSelectedType	gitcommitType
hi link gitcommitUnmergedType	gitcommitType
hi link gitcommitType		Type
hi link gitcommitNoChanges		gitcommitHeader
hi link gitcommitHeader		PreProc
hi link gitcommitUntrackedFile	gitcommitFile
hi link gitcommitDiscardedFile	gitcommitFile
hi link gitcommitSelectedFile	gitcommitFile
hi link gitcommitUnmergedFile	gitcommitFile
hi link gitcommitFile		Constant
hi link gitcommitDiscardedArrow	gitcommitArrow
hi link gitcommitSelectedArrow	gitcommitArrow
hi link gitcommitUnmergedArrow	gitcommitArrow
hi link gitcommitArrow		gitcommitComment
hi link gitcommitBlank		Error
hi link a65Section	Special
hi link a65Address	Special
hi link a65Comment	Comment
hi link a65PreProc	PreProc
hi link a65Number	Number
hi link a65String	String
hi link a65Type	Statement
hi link a65Opcode	Type
hi link a65PC		Error
hi link a65Todo	Todo
hi link a65HiLo	Number
