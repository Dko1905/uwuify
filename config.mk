# Version
VERSION = 1.3

# Customize to fit your system
PKG_CONFIG = pkg-config

# Paths
PREFIX = /usr/local

# Includes and libs
INCS = #`$(PKG_CONFIG) --cflags zlib`
LIBS = #`$(PKG_CONFIG) --libs zlib`

# Flags
MYCPPFLAGS = -DVERSION=\"$(VERSION)\" # My Preprocessor
MYCFLAGS = -std=c99 \
           $(INCS) $(MYCPPFLAGS) $(CPPFLAGS) $(CFLAGS) # My C-flags
MYLDFLAGS = $(LIBS) $(LDFLAGS) # My LD flags
