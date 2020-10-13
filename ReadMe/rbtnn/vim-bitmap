
# vim-bitmap

This provides to write and read a bitmap file using Blob type written by pure Vim script.

## usage

    let width = 10
    let height = 10

    " write 24 bit bitmap
    let path24 = expand('~/Desktop/24bit.bmp')
    let rgb = 0zff00ff
    call bitmap#write(repeat([repeat([rgb], width)], height), path24)

    " write 32 bit bitmap
    let path32 = expand('~/Desktop/32bit.bmp')
    let rgbR = 0zff00ff00
    call bitmap#write(repeat([repeat([rgbR], width)], height), path32)

    echo bitmap#read(path24)
    " {
    "   'file_header': {
    "     'off_bits': 54, 'reserved1': 0, 'type': 'BM', 'reserved2': 0, 'size': 374,
    "   },
    "   'info_header': {
    "     'clr_used': 0, 'y_pix_per_meter': 0, 'planes': 1, 'size_image': 320,
    "     'x_pix_per_meter': 0, 'cir_important': 0, 'bit_count': 24, 'width': 10,
    "     'height': 10, 'copmression': 0, 'size': 40,
    "   },
    "   'data': [
    "     [0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF],
    "     [0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF],
    "     [0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF],
    "     [0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF],
    "     [0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF],
    "     [0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF],
    "     [0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF],
    "     [0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF],
    "     [0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF],
    "     [0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF, 0zFF00FF]
    "   ]
    " }

    " read only bmp header.
    echo bitmap#read(path24, 1)
    " {
    "   'file_header': {
    "     'off_bits': 54, 'reserved1': 0, 'type': 'BM', 'reserved2': 0, 'size': 374,
    "   },
    "   'info_header': {
    "     'clr_used': 0, 'y_pix_per_meter': 0, 'planes': 1, 'size_image': 320,
    "     'x_pix_per_meter': 0, 'cir_important': 0, 'bit_count': 24, 'width': 10,
    "     'height': 10, 'copmression': 0, 'size': 40,
    "   },
    " }
