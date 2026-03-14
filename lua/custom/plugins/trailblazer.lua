-- TrailBlazer enables you to seemlessly move through important project marks quickly and efficiently.
-- See `:help trailblazer.nvim.txt`

return {
  'LeonHeidelbach/trailblazer.nvim',
  config = function()
    require('trailblazer').setup({
      trail_options = {
          trail_mark_list_rows = 20, -- number of rows to show in the trail mark list
      },
      force_mappings = { -- rename "mappings" to "force_mappings" to completely override default mappings and not merge with them
          nv = { -- Mode union: normal & visual mode. Can be extended by adding i, x, ...
              motions = {
                  new_trail_mark = '<A-l>',
                  track_back = '<A-b>',
                  peek_move_next_down = '<A-J>',
                  peek_move_previous_up = '<A-K>',
                  move_to_nearest = '<A-N>', -- default ('<A-n>') conflicts with LSP symbol navigation
                  toggle_trail_mark_list = '<A-m>',
              },
              actions = {
                  delete_all_trail_marks = '<A-L>',
                  -- paste_at_last_trail_mark = '<A-p>', -- conflicts with LSP symbol navigation
                  -- paste_at_all_trail_marks = '<A-P>',
                  set_trail_mark_select_mode = '<A-t>',
                  switch_to_next_trail_mark_stack = '<A-.>',
                  switch_to_previous_trail_mark_stack = '<A-,>',
                  set_trail_mark_stack_sort_mode = '<A-s>',
              },
          },
          -- You can also add/move any motion or action to mode specific mappings i.e.:
          -- i = {
          --     motions = {
          --         new_trail_mark = '<C-l>',
          --         ...
          --     },
          --     ...
          -- },
      },
      quickfix_mappings = { -- rename "quickfix_mappings" to "force_quickfix_mappings" to completely override default mappings and not merge with them
          nv = {
              motions = {
                  qf_motion_move_trail_mark_stack_cursor = "<CR>",
              },
              actions = {
                  qf_action_delete_trail_mark_selection = "d",
                  qf_action_save_visual_selection_start_line = "v",
              },
              alt_actions = {
                  qf_action_save_visual_selection_start_line = "V",
              }
          },
          v = {
              actions = {
                  qf_action_move_selected_trail_marks_down = "<C-j>",
                  qf_action_move_selected_trail_marks_up = "<C-k>",
              }
          }
      },
    })
  end,
}
