#!/usr/bin/env bash

XRESCOLOR="i3blocklets.color"
XRESCOLORRE="i3blocklets\.color"
COLOR_BAD=$(xgetres $XRESCOLOR.bad || echo '#ff0000')
COLOR_DEGRADED=$(xgetres $XRESCOLOR.degraded || echo '#ffcc00')
COLOR_GOOD=$(xgetres $XRESCOLOR.good || echo '#00ff00')
COLOR_GOOD2=$(xgetres $XRESCOLOR.good2 || echo '#00ffff')
COLOR_NORMAL=$(xgetres $XRESCOLOR.normal || echo '#ffffff')

cd ~/.config/i3blocks
sed -E '
    s/\$'${XRESCOLORRE}'\.bad/'${COLOR_BAD}'/;
    s/\$'${XRESCOLORRE}'\.degraded/'${COLOR_DEGRADED}'/;
    s/\$'${XRESCOLORRE}'\.good2/'${COLOR_GOOD2}'/;
    s/\$'${XRESCOLORRE}'\.good/'${COLOR_GOOD}'/;
    s/\$'${XRESCOLORRE}'\.normal/'${COLOR_NORMAL}'/;
' ./config.template > config
