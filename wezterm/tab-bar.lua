local wezterm = require 'wezterm'
local nf = wezterm.nerdfonts

local palette = {
  turquoise = "#5de4c7",
  tiffany_blue = "#85e2da",
  pale_azure = "#89ddff",
  uranian_blue = "#add7ff",
  powder_blue = "#91b4d5",
  cadet_gray = "#8da3bf",
  cool_gray = "#7f92aa",
  raisin_black = "#1b1e28",
  colombia_blue = "#c5d2df",
  persian_red = "#be3937",
  lemon_chiffon = "#fffac2",
  tea_rose = "#e8b1b0",
  lavender_pink = "#fcc5e9",
  pale_purple = "#fee4fc",
  pale_turquoise = "#baf5e8", --"#d0e9f5",
  white = "#f1f1f1",
  black = "#1f1f1f",
  ----------------------
  gunmetal = "#303340",
  dark_blue = "#26283f",
  ----------------------
  rosewater = "#F5E0DC",
  cyan = "#51afef",
  flamingo = "#F2CDCD",
  pink = "#F5C2E7",
  mauve = "#CBA6F7",
  red = "#F38BA8",
  maroon = "#EBA0AC",
  peach = "#FAB387",
  yellow = "#F9E2AF",
  green = "#A6E3A1",
  teal = "#94E2D5",
  sky = "#89DCEB",
  sapphire = "#74C7EC",
  blue = "#89B4FA",
  lavender = "#B4BEFE",
  ---------------------
  text = "#e4f0fb",
}

local function exists(file)
  local f = io.open(file)
  return f and io.close(f)
end

local function gitcheck(dir)
  if not exists(dir) then
    return nil
  end
  local prefix = "/"
  if dir:sub(#dir) == "/" then
    prefix = ""
  end
  while #dir > 1 and not exists(dir .. prefix .. ".git") do
    dir = dir:gsub("/+[^/]*$", "")
  end
  return #dir > 0 and dir or dir
end

local function get_git_root(dir, truncate_base)
  local gc = gitcheck(dir)
  if not gc then
    return dir
  end
  if gc == dir then
    if truncate_base == false then
      return dir
    else
      return dir:match(".*/([^/]+)[/]?$")
    end
  else
    local base = gc:gsub("%w+[/]?$", "")
    if base == "" then
      return dir
    end
    return dir:gsub(base, "")
  end
end

local entries_cache = {}

local function find(list, item)
  for i, v in ipairs(list) do
    if type(item) == "function" then
      if item(v) == true then
        return i
      end
    else
      if v == item then
        return i
      end
    end
  end
  return nil
end

local function make_right_status(window, pane)
  local pwd = ""
  if pane ~= nil then
    local panewd = tostring(pane:get_current_working_dir())
    if panewd and panewd ~= "" then
      pwd = get_git_root(panewd:gsub("%w+://%w+/", "/"), false)
    end
  end

  local icon_txt = " "
  local icon_col = palette.cyan
  if pwd ~= "" and exists(pwd) then
    -- check if timestamp was more than 10 seconds ago
    local entries
    if
        entries_cache[pwd] == nil
        or entries_cache[pwd].timestamp ~= nil
        or entries_cache[pwd].timestamp + 10 < os.time()
    then
      entries_cache[pwd] = nil
      entries = wezterm.read_dir(pwd .. "/")
      if exists(pwd .. "/src/") then
        for _, v in ipairs(wezterm.read_dir(pwd .. "/src/")) do
          table.insert(entries, v)
        end
      end
      entries_cache[pwd] = {
        timestamp = os.time(),
        entries = entries,
      }
    else
      entries = entries_cache[pwd].entries
    end
    if
        exists(pwd .. "/Cargo.toml")
        or find(entries, function(v)
          if string.sub(v, -3, -1) == ".rs" then
            return true
          end
          return false
        end)
        ~= nil
    then
      icon_txt = nf.seti_rust
      icon_col = palette.peach
    elseif
        exists(pwd .. "/init.lua")
        or find(entries, function(v)
          if string.sub(v, -4, -1) == ".lua" then
            return true
          end
          return false
        end)
        ~= nil
    then
      icon_txt = nf.seti_lua
      icon_col = palette.blue
      -- elseif pwd == wezterm.home_dir .. "/" or pwd == wezterm.home_dir then
      -- 	-- icon = nf.seti_shell
      -- 	-- icon = nf.mdi_home_circle
      -- 	icon_txt = nf.md_lambda
    elseif
        exists(pwd .. "/package.json")
        or exists(pwd .. "/node_modules")
        or find(entries, function(v)
          if string.sub(v, -3, -1) == ".js" then
            return true
          end
          return false
        end)
        ~= nil
    then
      icon_txt = nf.dev_javascript_badge
      icon_col = palette.yellow
    elseif exists(pwd .. "/go.mod") then
      icon_txt = nf.md_language_go
      icon_col = palette.pale_azure
    end
  end

  window:set_right_status(wezterm.format({
    { Attribute = { Intensity = "Bold" } },
    { Foreground = { Color = "#9196c2" } },
    { Text = window:active_workspace() },
    {
      Text = (function()
        local name = pane:get_user_vars().sesh_name
        if name == nil or name == "" then
          return ""
        else
          return string.format("%s %s", name, "∘")
        end
      end)(),
    },
    -- { Text = wezterm.strftime("%H:%M    %A, %d %B %Y") },
    { Foreground = { Color = icon_col } },
    { Text = icon_txt or "" },
    { Text = " " },
  }))
end

wezterm.on("update-right-status", make_right_status)
