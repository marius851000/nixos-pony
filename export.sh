convert mlpnixos/pony.PNG mlpnixos/magic/horn_glow.PNG -composite -crop 2466x1510+1374+650 pony.png
convert mlpnixos/background_fade.PNG -crop 30x1460+0+700 background_fade.png
convert mlpnixos/floating_pane.PNG -crop 1576x996+1068+1068 floating_pane.png

convert mlpnixos/magic/magic_1.PNG -crop 466x287+1661+871 magic_1.png
convert mlpnixos/magic/magic_2.PNG -crop 466x287+1661+871 magic_2.png
convert mlpnixos/magic/magic_3.PNG -crop 466x287+1661+871 magic_3.png

convert mlpnixos/eye/eye_l_closed.PNG -crop 280x160+1804+1103 eye_l_closed.png
convert mlpnixos/eye/eye_l_open.PNG -crop 280x160+1804+1103 eye_l_open.png
convert mlpnixos/eye/eye_r_closed.PNG -crop 279x195+2061+1096 eye_r_closed.png

convert flat_static_no_logo.png nix-logo-gray.png -geometry +238+187 -composite static_gray.png
convert flat_static_no_logo.png nix-logo-color.png -geometry +238+187 -composite static_color.png