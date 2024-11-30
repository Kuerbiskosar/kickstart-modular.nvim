return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  depedencies = { 'nvim-lua/plenary.nvim' }, --, 'telescope' },
  config = function()
    local harpoon = require 'harpoon'
    -- REQUIRED
    harpoon:setup()
    -- REQUIRED
    --
    -- basic telescope configuration -- it doesn't work (probably because of the location and maybe because of the content of my Telescope.lua file
    --local conf = require('telescope.config').values
    --local function toggle_telescope(harpoon_files)
    --local file_paths = {}
    --for _, item in ipairs(harpoon_files.items) do
    --table.insert(file_paths, item.value)
    --end

    --require('telescope.pickers')
    --.new({}, {
    --prompt_title = 'Harpoon',
    --finder = require('telescope.finders').new_table {
    --results = file_paths,
    --},
    --previewer = conf.file_previwer {},
    --sorter = conf.generic_sorter {},
    --})
    --:find()
    --end

    vim.keymap.set('n', '<leader>h', function()
      harpoon:list():add()
    end, { desc = 'add current buffer to harpoon list' })
    vim.keymap.set('n', '<leader>H', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
      --toggle_telescope(harpoon:list())
    end, { desc = 'toggle harpoon quick-menu' })
    vim.keymap.set('n', '<leader>u', function()
      harpoon:list():select(1)
    end, { desc = 'switch to harpoon file 1' })
    vim.keymap.set('n', '<leader>i', function()
      harpoon:list():select(2)
    end, { desc = 'switch to harpoon file 2' })
    vim.keymap.set('n', '<leader>o', function()
      harpoon:list():select(3)
    end, { desc = 'switch to harpoon file 3' })
    vim.keymap.set('n', '<leader>p', function()
      harpoon:list():select(4)
    end, { desc = 'switch to harpoon file 4' })
  end,
}
