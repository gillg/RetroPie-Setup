#!/usr/bin/env bash

# This file is part of The RetroPie Project
#
# The RetroPie Project is the legal property of its developers, whose names are
# too numerous to list here. Please refer to the COPYRIGHT.md file distributed with this source.
#
# See the LICENSE.md file at the top-level directory of this distribution and
# at https://raw.githubusercontent.com/RetroPie/RetroPie-Setup/master/LICENSE.md
#

rp_module_id="emulationstation-recallbox"
rp_module_desc="EmulationStation from recallbox (translations/settings/debugs/etc...)"
rp_module_section="exp"

function depends_emulationstation-recallbox() {
    local depends=(
        libboost-locale-dev libboost-system-dev libboost-filesystem-dev
        libboost-date-time-dev libfreeimage-dev libfreetype6-dev libeigen3-dev
        libcurl4-openssl-dev libasound2-dev cmake libsdl2-dev libsm-dev
        libvlc-dev libvlccore-dev vlc-nox
        libboost-regex-dev libboost-thread-dev libfreeimage-dev libsdl2-mixer-dev
        libfreeimageplus-dev libfreeimage3-dbg libfreeimageplus3-dbg
    )

    isPlatform "x11" && depends+=(gnome-terminal)
    getDepends "${depends[@]}"
}

function sources_emulationstation-recallbox() {
    sources_emulationstation "https://github.com/gillg/recalbox-emulationstation" "master"
}

function build_emulationstation-recallbox() {
    build_emulationstation
}

function install_emulationstation-recallbox() {
    md_ret_files=(
        'CREDITS.md'
        'emulationstation'
        'GAMELISTS.md'
        'README.md'
        'THEMES.md'
    )
    make install
}

function configure_emulationstation-recallbox() {
    configure_emulationstation
}

function gui_emulationstation-recallbox() {
    gui_emulationstation
}
