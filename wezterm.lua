local wezterm = require 'wezterm'

return {
    -- Sublette has light green
        color_scheme = 'Kanagawa (Gogh)',
        audible_bell = "SystemBeep",

        window_background_image_hsb = {
                brightness = 0.05,
        },
        window_background_opacity = 1.0,
  font = wezterm.font("CommitMono Nerd Font"),
  font_size = 14.0,
  harfbuzz_features = { "calt=1", "clig=1", "liga=1" },
  line_height = 1.2,
        hide_tab_bar_if_only_one_tab = true,
        use_fancy_tab_bar = true,
        window_decorations = "NONE",
        initial_cols = 240,
        initial_rows = 67,

        -- Keys
        leader = { key = "b", mods = "CTRL" },
        keys = {
    {
      key = 'o',
      mods = 'LEADER',
      action = wezterm.action.ShowLauncher
    },
                {
                        key = 't',
                        mods = 'LEADER',
                        action = wezterm.action.SpawnTab "CurrentPaneDomain",
                },
                {
                        key = 'r',
                        mods = 'LEADER',
                        action = wezterm.action.CloseCurrentPane { confirm = false }
                },
                {
                        key = 'h',
                        mods = 'LEADER',
                        action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" }
                },
                {
                        key = 'v',
                        mods = 'LEADER',
                        action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" }
                },
                {
                        key = 'LeftArrow',
                        mods = 'LEADER',
                        action = wezterm.action.ActivatePaneDirection "Left",
                },
                {
                        key = 'RightArrow',
                        mods = 'LEADER',
                        action = wezterm.action.ActivatePaneDirection "Right",
                },
                {
                        key = 'UpArrow',
                        mods = 'LEADER',
                        action = wezterm.action.ActivatePaneDirection "Up",
                },
                {
                        key = 'DownArrow',
                        mods = 'LEADER',
                        action = wezterm.action.ActivatePaneDirection "Down",
                },
                {
                        key = '1',
                        mods = 'CTRL',
                        action = wezterm.action.ActivateTab(0),
                },
                {
                        key = '2',
                        mods = 'CTRL',
                        action = wezterm.action.ActivateTab(1),
                },
                {
                        key = '3',
                        mods = 'CTRL',
                        action = wezterm.action.ActivateTab(2),
                },
                {
                        key = '4',
                        mods = 'CTRL',
                        action = wezterm.action.ActivateTab(3),
                },
                {
                        key = '5', mods = 'CTRL',
                        action = wezterm.action.ActivateTab(4),
                },
                {
                        key = '6',
                        mods = 'CTRL',
                        action = wezterm.action.ActivateTab(5),
                },
                {
                        key = '7',
                        mods = 'CTRL',
                        action = wezterm.action.ActivateTab(6),
                },
                {
                        key = '8',
                        mods = 'CTRL',
                        action = wezterm.action.ActivateTab(7),
                },
                {
                        key = '9',
                        mods = 'CTRL',
                        action = wezterm.action.ActivateTab(8),
                },
        },

-- Window Frame Configuration
        window_frame = {
                inactive_titlebar_bg = '#2C1C37',
                active_titlebar_bg = '#3ffc83',
                inactive_titlebar_fg = 'white',
                active_titlebar_fg = 'black',
                inactive_titlebar_border_bottom = '#2c1c37',
                active_titlebar_border_bottom = '#2b2042',
                button_fg = '#cccccc',
                button_bg = '#2b2042',
                button_hover_fg = '#ffffff',
                button_hover_bg = '#3b3052',
                border_left_width = '0.2cell',
                border_right_width = '0.2cell',
                border_bottom_height = '0.1cell',
                border_top_height = '0.1cell',
                border_left_color = '#45ef72',
                border_right_color = '#45ef72',
                border_top_color = "#45ef72",
                border_bottom_color = '#45ef72',
        },
}
