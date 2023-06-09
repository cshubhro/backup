local builtin = require("telescope.builtin")
local fb_actions = require("telescope._extensions.file_browser.actions")

-- require("telescope").load_extension('harpoon')

vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>sg", builtin.git_files, {})
vim.keymap.set("n", "<leader>sw", function()
    builtin.grep_string({ search = vim.fn.input("Search Word: ") })
end)

vim.api.nvim_set_keymap("n", "<A-r>", ":Telescope file_browser<Cr>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>fb", ":Telescope file_browser path=%:p:h select_buffer=true<Cr>",
    { noremap = true })

require("telescope").setup({
    -- defaults = {
    prompt_prefix = "  ",
    defaults = {
        prompt_prefix = "  ",
        selection_caret = " ",
        layout_strategy = "horizontal",
        layout_config = {
            preview_width = 0.6, -- Adjust the preview window width
            width = 0.72,        -- Adjust the results width
        },
    },
    -- EXTENSIONS
    extensions = {
        file_browser = {
            add_dirs = true,
            hidden = true,
            initial_mode = "insert",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            display_stat = { date = true, size = true },
            cwd_to_path = true,
            mappings = {
                ["i"] = {
                    -- your custom insert mode mappings
                },
                ["n"] = {
                    ["<BS>"] = fb_actions.goto_parent_dir,
                    ["H"] = fb_actions.toggle_hidden,
                    ["w"] = fb_actions.goto_cwd,
                    -- ["l"] = "<Cr>",
                },
            },
        },
    },
})

require("telescope").load_extension("file_browser")
