--- @meta _
error('Cannot require a meta file')

--- Extra types we can't generate keysets for

--- @class vim.api.keyset.extmark_details
--- @field ns_id integer
--- @field right_gravity boolean
---
--- @field end_row? integer
--- @field end_col? integer
--- @field end_right_gravity? integer
---
--- @field priority? integer
---
--- @field undo_restore? false
--- @field invalidate? true
--- @field invalid? true
---
--- @field hl_group? string
--- @field hl_eol? boolean
---
--- @field conceal? boolean
--- @field spell? boolean
--- @field ui_watched? boolean
--- @field url? boolean
--- @field hl_mode? string
---
--- @field virt_text? [string, string][]
--- @field virt_text_hide? boolean
--- @field virt_text_repeat_linebreak? boolean
--- @field virt_text_win_col? integer
--- @field virt_text_pos? string
---
--- @field virt_lines? [string, string][][]
--- @field virt_lines_above? boolean
--- @field virt_lines_leftcol? boolean
---
--- @field sign_text? string
--- @field sign_name? string
--- @field sign_hl_group? string
--- @field number_hl_group? string
--- @field line_hl_group? string
--- @field cursorline_hl_group? string

--- @class vim.api.keyset.get_extmark_item
--- @field [1] integer row
--- @field [2] integer col
--- @field [3] vim.api.keyset.extmark_details?

--- @class vim.api.keyset.get_mark
--- @field [1] integer row
--- @field [2] integer col
--- @field [3] integer buffer
--- @field [4] string buffername

--- @class vim.api.keyset.get_autocmds.ret
--- @field id? integer
--- @field group? integer
--- @field group_name? integer
--- @field desc? string
--- @field event? string
--- @field command? string
--- @field callback? function
--- @field once? boolean
--- @field pattern? string
--- @field buflocal? boolean
--- @field buffer? integer

--- @class vim.api.keyset.command_info
--- @field name string
--- @field definition string
--- @field script_id integer
--- @field bang boolean
--- @field bar boolean
--- @field register boolean
--- @field keepscript boolean
--- @field preview boolean
--- @field nargs string
--- @field complete? string
--- @field complete_arg? string
--- @field count? string
--- @field range? string
--- @field addr? string

--- @class vim.api.keyset.hl_info.base
--- @field reverse? true
--- @field bold? true
--- @field italic? true
--- @field underline? true
--- @field undercurl? true
--- @field underdouble? true
--- @field underdotted? true
--- @field underdashed? true
--- @field standout? true
--- @field strikethrough? true
--- @field altfont? true
--- @field nocombine? true

--- @class vim.api.keyset.hl_info.cterm : vim.api.keyset.hl_info.base
--- @field ctermfg? integer
--- @field ctermbg? integer
--- @field foreground? integer
--- @field background? integer

--- @class vim.api.keyset.hl_info : vim.api.keyset.hl_info.base
--- @field fg? integer
--- @field bg? integer
--- @field sp? integer
--- @field default? true
--- @field link? string
--- @field blend? integer
--- @field cterm? vim.api.keyset.hl_info.cterm

--- @class vim.api.keyset.get_mode
--- @field blocking boolean
--- @field mode string

--- @class vim.api.keyset.get_option_info
--- @field name string
--- @field shortname string
--- @field scope 'buf'|'win'|'global'
--- @field global_local boolean
--- @field commalist boolean
--- @field flaglist boolean
--- @field was_set boolean
--- @field last_set_sid integer
--- @field last_set_linenr integer
--- @field last_set_chan integer
--- @field type 'string'|'boolean'|'number'
--- @field default string|boolean|integer
--- @field allows_duplicates boolean

--- @class vim.api.keyset.parse_cmd.mods
--- @field filter { force: boolean, pattern: string }
--- @field silent boolean
--- @field emsg_silent boolean
--- @field unsilent boolean
--- @field sandbox boolean
--- @field noautocmd boolean
--- @field tab integer
--- @field verbose integer
--- @field browse boolean
--- @field confirm boolean
--- @field hide boolean
--- @field keepalt boolean
--- @field keepjumps boolean
--- @field keepmarks boolean
--- @field keeppatterns boolean
--- @field lockmarks boolean
--- @field noswapfile boolean
--- @field vertical boolean
--- @field horizontal boolean
--- @field split ''|'botright'|'topleft'|'belowright'|'aboveleft'

--- @class vim.api.keyset.parse_cmd
--- @field addr 'line'|'arg'|'buf'|'load'|'win'|'tab'|'qf'|'none'|'?'
--- @field args string[]
--- @field bang boolean
--- @field cmd string
--- @field magic {bar: boolean, file: boolean}
--- @field mods vim.api.keyset.parse_cmd.mods
--- @field nargs '0'|'1'|'?'|'+'|'*'
--- @field nextcmd string
--- @field range? integer[]
--- @field count? integer
--- @field reg? string
