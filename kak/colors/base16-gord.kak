##
## base16-gord.kak
##

%sh{

    background='rgb:282828'
    background_light='rgb:2D2D2D'
    background_lighter='rgb:3D3D3D'

    foreground_muted='rgb:585858'
    foreground='rgb:D8D8D8'

    cursor='rgb:B8B8B8'

    black='rgb:000000'
    white='rgb:FFFFFF'

    #red='rgb:AB4642'
    orange='rgb:DC9656'
    #yellow='rgb:F7CA88'
    #green='rgb:A1B56C'
    #cyan='rgb:86C1B9'
    #blue='rgb:7CAFC2'
    #magenta='rgb:BA8BAF'
    brown='rgb:A16946'

    red="red"
    yellow="yellow"
    green="green"
    cyan="cyan"
    blue="blue"
    magenta="magenta"

    base08=${red}
    base09=${orange}
    base0A=${yellow}
    base0B=${green}
    base0C=${cyan}
    base0D=${blue}
    base0E=${magenta}
    base0F=${brown}

    ## code
    echo "
        face global variable ${base08}
        face global attribute ${base08}
        face global value ${base09}+b
        face global type ${base0A}
        face global string ${base0B}
        face global module ${base0C}
        face global meta ${base0C}
        face global function ${base0D}
        face global operator ${base0D}
        face global keyword ${base0E}+b

        face global builtin default+b
        face global comment ${foreground_muted}+i
    "

    ## markup
    echo "
        face global list ${base08}
        face global bullet ${base08}
        face global bold ${base0A}+b
        face global mono ${base0B}
        face global block ${base0B}
        face global title ${base0D}+b
        face global header ${base0C}+b
        face global italic ${base0E}+i
        face global link ${cyan}+u
    "

    ## builtin
    echo "
        face global Default ${foreground},${background}
        face global Information ${background},${blue}
        face global Error ${foreground},${red}

        face global PrimaryCursor ${background},${cursor}
        face global PrimarySelection default,${background_lighter}
        face global PrimaryCursorEol ${background},${red}

        face global SecondaryCursor ${background},${cursor}
        face global SecondarySelection ${foreground_muted},${background_lighter}
        face global SecondaryCursorEol ${background},${red}

        face global MenuInfo ${foreground_muted}
        face global MenuForeground ${background},${blue}
        face global MenuBackground ${foreground},${background_lighter}

        face global StatusLine ${foreground},${background_light}
        face global StatusLineMode ${blue}+b
        face global StatusLineInfo ${foreground_muted}
        face global StatusLineValue ${orange}
        face global Prompt ${background},${blue}
        face global StatusCursor ${background},${cursor}

        face global LineNumbers ${foreground_muted},${background}
        face global LineNumbersWrapped ${background},${background}
        face global LineNumberCursor ${foreground},${background_light}+b

        face global MatchingChar default,${background_light}+b
        face global BufferPadding ${blue},${background}
        face global Whitespace ${foreground_muted},${background_light}
    "
}
