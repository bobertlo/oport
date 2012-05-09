include ../config.mk 

CFLAGS += -I./include
LIB  =	libopenbsd.a

SRCS+=	strlcpy.c strtonum.c

# ohash 
SRCS+=	ohash/ohash_create_entry.c ohash/ohash_delete.c ohash/ohash_do.c ohash/ohash_entries.c \
	ohash/ohash_enum.c ohash/ohash_init.c ohash/ohash_interval.c \
	ohash/ohash_lookup_interval.c ohash/ohash_lookup_memory.c \
	ohash/ohash_qlookup.c ohash/ohash_qlookupi.c

MAN+=	ohash/ohash_init.3 ohash/ohash_interval.3
MLINKS+=ohash/ohash_init.3 ohash/ohash_delete.3 \
	ohash/ohash_init.3 ohash/ohash_lookup_interval.3 \
	ohash/ohash_init.3 ohash/ohash_lookup_memory.3 \
	ohash/ohash_init.3 ohash/ohash_find.3 \
	ohash/ohash_init.3 ohash/ohash_remove.3 \
	ohash/ohash_init.3 ohash/ohash_insert.3 \
	ohash/ohash_init.3 ohash/ohash_first.3 \
	ohash/ohash_init.3 ohash/ohash_next.3 \
	ohash/ohash_init.3 ohash/ohash_entries.3 \
	ohash/ohash_interval.3 ohash/ohash_create_entry.3 \
	ohash/ohash_interval.3 ohash/ohash_qlookupi.3 \
	ohash/ohash_interval.3 ohash/ohash_qlookup.3

include ../lib.mk
