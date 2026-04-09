config.load_autoconfig(False)
c.fonts.default_family = ["Terminus", "JetBrainsMono"]
c.fonts.default_size = '10pt'
c.colors.completion.fg = '#ffffff'
c.colors.completion.odd.bg = '#2e3440'
c.colors.completion.even.bg = '#3b4252'
c.colors.completion.category.fg = '#88c0d0'
c.colors.completion.category.bg = '#2e3440'
c.colors.completion.category.border.top = '#3b4252'
c.colors.completion.category.border.bottom = '#3b4252'
c.colors.completion.item.selected.fg = '#ffffff'
c.colors.completion.item.selected.bg = '#5e81ac'
c.colors.completion.item.selected.border.top = '#5e81ac'
c.colors.completion.item.selected.border.bottom = '#5e81ac'
c.colors.completion.match.fg = '#ebcb8b'

c.colors.statusbar.normal.fg = '#ffffff'
c.colors.statusbar.normal.bg = '#2e3440'
c.colors.statusbar.insert.fg = '#ffffff'
c.colors.statusbar.insert.bg = '#a3be8c'
c.colors.statusbar.passthrough.fg = '#ffffff'
c.colors.statusbar.passthrough.bg = '#b48ead'
c.colors.statusbar.command.fg = '#ffffff'
c.colors.statusbar.command.bg = '#2e3440'
c.colors.statusbar.command.private.fg = '#ffffff'
c.colors.statusbar.command.private.bg = '#4c566a'
c.colors.statusbar.private.fg = '#ffffff'
c.colors.statusbar.private.bg = '#4c566a'
c.colors.statusbar.url.fg = '#ffffff'
c.colors.statusbar.url.error.fg = '#bf616a'
c.colors.statusbar.url.hover.fg = '#88c0d0'
c.colors.statusbar.url.success.http.fg = '#a3be8c'
c.colors.statusbar.url.success.https.fg = '#a3be8c'
c.colors.statusbar.url.warn.fg = '#ebcb8b'

c.colors.tabs.bar.bg = '#2e3440'
c.colors.tabs.indicator.start = '#5e81ac'
c.colors.tabs.indicator.stop = '#88c0d0'
c.colors.tabs.even.bg = '#3b4252'
c.colors.tabs.odd.bg = '#2e3440'
c.colors.tabs.selected.even.bg = '#4c566a'
c.colors.tabs.selected.odd.bg = '#4c566a'
c.colors.tabs.pinned.even.bg = '#b48ead'
c.colors.tabs.pinned.odd.bg = '#b48ead'
c.colors.tabs.pinned.selected.even.bg = '#5e81ac'
c.colors.tabs.pinned.selected.odd.bg = '#5e81ac'

c.colors.webpage.darkmode.enabled = True
c.tabs.title.format = "{audio}{current_title}"

c.url.default_page = 'https://duckduckgo.com/'
c.url.searchengines = {
        'DEFAULT': 'https://duckduckgo.com/?t=ffab&q={}+&ia=web',
        '!gh': 'https://github.com/search?=o=desc&q={}',
        '!yt': 'https://www.youtube.com/results?search_query={}',
        }
c.content.headers.do_not_track = True
c.content.cookies.store = False
c.content.private_browsing = True
