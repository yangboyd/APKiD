import "dex"

rule dexlib2
{
  meta:
    description = "Compiled with Dexlib 2.x"
    author = "Caleb Fenton <calebjfenton@gmail.com>"
    last_modified = "2016-06-24"

  condition:
    for any i in (1..dex.header.string_ids_size - 1) : (dex.string_table[i].offset + dex.string_table[i].item_size + 1 != dex.string_table[i + 1].offset)
}
