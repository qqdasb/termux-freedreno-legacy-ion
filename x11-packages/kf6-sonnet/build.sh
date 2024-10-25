TERMUX_PKG_HOMEPAGE='https://community.kde.org/Frameworks'
TERMUX_PKG_DESCRIPTION='Spelling framework for Qt'
TERMUX_PKG_LICENSE="LGPL-2.0, LGPL-3.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=6.7.0
TERMUX_PKG_SRCURL=https://download.kde.org/stable/frameworks/${TERMUX_PKG_VERSION%.*}/sonnet-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=2f970d490effd668e64dd93ffef344a80db7e63130bb23df4fa0d6b14150e588
TERMUX_PKG_DEPENDS="qt6-qtbase"
TERMUX_PKG_BUILD_DEPENDS="aspell, extra-cmake-modules (>= ${TERMUX_PKG_VERSION}), hunspell, libvoikko, qt6-qtdeclarative, qt6-qttools"
TERMUX_PKG_RECOMMENDS="aspell, hunspell, qt6-qtdeclarative"
# hspell can be added to TERMUX_PKG_BUILD_DEPENDS and TERMUX_PKG_RECOMMENDS when available
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DCMAKE_SYSTEM_NAME=Linux
-DKDE_INSTALL_QMLDIR=lib/qt6/qml
-DKDE_INSTALL_QTPLUGINDIR=lib/qt6/plugins
"
