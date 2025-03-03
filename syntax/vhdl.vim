if exists("b:current_syntax")
  finish
endif

syn clear

" Load bundled verilog defaults
source $VIMRUNTIME/syntax/vhdl.vim

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight Groups

"syn keyword verilogLabel  join_none join_any
"syn keyword commentCmd    AUTOINOUTIN AUTOINST containedin=verilogComment contained 
"syn keyword commentBold   CANCELLED DONE NOTE  containedin=verilogComment contained 
"
"syn match   verilogNumber "'\d\+"
"syn keyword svDeclaration assert assume before property endproperty solve
"syn keyword svDeclaration constraint endconstraint cover coverpoint cross
"syn keyword svDecState    bins ignore_bins illegal_bins intersect
"syn keyword svDecState    dist inside modport wildcard
"syn keyword svInclude     import export package endpackage 
"syn keyword svKeyword     with 
"syn keyword svMethod      binsof convert2string get set put push_back push_front pop_back pop_front new 
"syn keyword svMethod      constraint_mode rand_mode
"syn keyword svPrimitive   logic bit chandle wire reg real realtime
"syn keyword svPrimitive   longint int null string semaphore type void
"syn keyword svRepeat      always always_comb always_ff always_latch
"syn keyword svRepeat      do repeat 
"syn keyword svStatement   break continue extends implements
"syn keyword svStatement   const extern pure protected iff local this packed rand ref return static struct super virtual 
"syn keyword svStructure   bind class endclass clocking endclocking covergroup endgroup function endfunction program endprogram
"syn keyword svStructure   interface endinterface module endmodule task endtask typedef 
"syn keyword svCondition   for endfor foreach randcase
"syn keyword svType        enum union
"syn match   svOperator    "[!<>|&+\-*~:=()\[\]{},#@%;^]"
"syn match   svOperator    "/\([*/]\)\@!"
"syn match   svOperator    "\(?\|<\|>\||->\)"
""|=\{1,3\}\|\*\{1,2\}\|+\{1,2\}\|-\{1,2\}\|&\{1,2\}\
"
"syn keyword uvmClass      uvm_analysis_port uvm_analysis_export
"syn keyword uvmClass      uvm_component uvm_config_db uvm_factory uvm_item uvm_object uvm_reg uvm_reg_block uvm_reg_field uvm_reg_item
"syn keyword uvmClass      uvm_event uvm_event_pool uvm_sequencer uvm_sequence uvm_phase uvm_domain 
"syn keyword uvmClass      uvm_reg_map uvm_mem_mam uvm_mem_region uvm_mem_mam_policy
"syn keyword uvmClass      uvm_reg_mem_built_in_seq uvm_reg_bit_bash_seq uvm_reg_hw_reset_seq
"syn keyword uvmMacros     UVM_BIN UVM_HEX UVM_DEC UVM_DEFAULT
"syn keyword uvmMethod     item_done 
"syn match   uvmMethod     'std::randomize'
"
"syn match   commentCmd    "verilog-\(indent-level\|library-\(directories\|extensions\|files\)\|typedef-regexp\|auto-\(sense-defines-constant\|inst-param-value\)\):" containedin=verilogComment
"
"syn match   svMacro      "`\w*"
"syn match   svStatement  "@\(posedge\|negedge\)"
"syn match   svPkgItem    '\w\+\(_pkg\(::\w\+\)\+\)\?_\(c[pg]\?\|if\|t\|e\)\>'
"syn match   svPkgItem    '\w\+\(_pkg\(::\w\+\)\+\)\?_\(c[pg]\?\|if\|t\|e\)\>'
"syn match   svPkgItem    '\w\+_pkg\(::\w\+\)*::'
"
"syn match   svAnnotation '\v:\s*[a-zA-Z_]\w*$'
""syn match   svAnnotation '\v( begin\s*)\zs:\s*\w+\s*$'
""\|end\(function\|task\|module\|class\)\?
"syn match   uvmClass     'uvm_analysis_imp\(_\w\+\)\?'
"syn match   uvmMacros    'uvm_field_\(enum\|int\|string\|object\)' containedin=svMacro contained
"syn match   uvmMethod    '::type_id::create' containedin=svPkgItem
"syn match   uvmMethod    '\<\(write\|push\)_\w\+\>'

" Highlight Styles

"hi link svDeclaration   Exception
"hi link svDecState      Exception
""hi link svDecState     Tag
"hi link svInclude       Include
"hi link svKeyword       Keyword
"hi link svMacro         Macro
"hi link svMethod        Operator
""hi link svMethod       Function
"hi link svPkgItem       vimFuncName
"hi link svPrimitive     Statement
"hi link svRepeat        Repeat
"hi link svStructure     Structure
"hi link svStatement     Statement
"hi link svCondition     Conditional
"hi link svType          Type
"hi link svOperator      Delimiter
"hi link svAnnotation    Tag
"
"hi link uvmClass        vimFuncName
"hi link uvmEnum         StorageClass
"hi link uvmMacros       Operator
"hi link uvmMethod       Operator
"
"hi link commentCmd      Underlined
"hi link commentBold     vimAutoEvent

let b:current_syntax="vhdl"
