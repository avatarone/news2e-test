ENTRY(_start)
SECTIONS
{
 . = 0x10000;
 .start : { *(.start) }
 .text : { *(.text) }
 .data : { *(.data) }
 .bss : { *(.bss COMMON) }
 . = ALIGN(8);
 . = . + 0x1000; /* 4kB of stack memory */
 _stack_top = .;
}
