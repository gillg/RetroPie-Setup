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
    depends_emulationstation
}

function sources_emulationstation-recallbox() {
    sources_emulationstation "https://github.com/recalbox/recalbox-emulationstation" "master"
}

function build_emulationstation-recallbox() {
    build_emulationstation
}

function install_emulationstation-recallbox() {
    install_emulationstation
}

function configure_emulationstation-recallbox() {
    configure_emulationstation
}

function gui_emulationstation-recallbox() {
    gui_emulationstation
}
