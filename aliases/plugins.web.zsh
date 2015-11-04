# Google Search
go() {
  x-www-browser 'https://www.google.com/#q='${1// /+}
}

# Youtube Search
yt() {
  x-www-browser 'https://www.youtube.com/results?search_query='${1// /+}
}

# Stackoverflow Search
stack() {
  x-www-browser 'http://stackoverflow.com/search?q='${1// /+}
}

# Translate Indonesian to English
tten() {
  x-www-browser 'https://translate.google.com/?source=osdd#id/en/'${1// /%20}
}

# Translate English to Indonesian
ttid() {
  x-www-browser 'https://translate.google.com/?source=osdd#en/id/'${1// /%20}
}

# Search Movie Subtitle
subs() {
  x-www-browser 'http://subscene.com/subtitles/title?q='${1// /%20}
}

# View Musician Profile on Last.fm
last() {
  x-www-browser 'http://www.last.fm/music/'${1// /+}
}

