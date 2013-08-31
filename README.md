Dirsum
======

*Status*: in development, not working yet. 

Create a checksum for a directory, effectively doing:

    find . -type f -print0|xargs -0 -P8 -n1 sha1sum |sha1sum -

but then using a murmurhash and stable sorted subdirectory entries.

